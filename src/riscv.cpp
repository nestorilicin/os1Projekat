#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/sem.hpp"


void Riscv::popSppSpie() {
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap() {
    uint64 volatile scause = r_scause();
    if (scause == 0x8000000000000009UL) {
        // console_handler from lib
        console_handler();
    } else if (scause == 0x8000000000000001UL) {
        // timer
        mc_sip(SIP_SSIE);
    } else if (scause == 0x0000000000000008UL
               || scause == 0x0000000000000009UL) {
        // ecall from U or S
        uint64 volatile sepc = r_sepc() + 4;          // return pc
        uint64 volatile sstatus = r_sstatus();        // sstatus
        uint64 volatile callCode;
        uint64 volatile arg1;
        uint64 volatile arg2;
        uint64 volatile arg3;
        __asm__ volatile("mv %[callCode], a0" : [callCode] "=r"(callCode));
        __asm__ volatile("mv %[arg1], a1" : [arg1] "=r"(arg1));
        __asm__ volatile("mv %[arg2], a2" : [arg2] "=r"(arg2));
        __asm__ volatile("mv %[arg3], a3" : [arg3] "=r"(arg3));

        int volatile ret_val = 0;
        switch (callCode) {
            case 0x01: {
                // mem_alloc
                auto volatile size = (size_t) arg1;
                auto volatile ret_ptr = MemoryAllocator::k_mem_alloc(size);
                __asm__ volatile("mv a0, %[ret_ptr]" : : [ret_ptr]"r"(ret_ptr));
                break;
            }
            case 0x02: {
                // k_mem_free
                auto volatile ptr = (void *) arg1;
                ret_val = MemoryAllocator::k_mem_free(ptr);
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
                break;

            }
            case 0x11: {
                // thread_create
                auto volatile pTCB = (TCB **) arg1;
                auto volatile body = (TCB::Body) arg2;
                auto volatile thread_arg = (void *) arg3;
                *pTCB = TCB::k_createThread(body, thread_arg);
                if (*pTCB == nullptr) ret_val = -1;
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
                break;
            }
            case 0x12:
                // thread_exit
                TCB::k_thread_exit();
                break;
            case 0x13:
                // thread_dispatch
                TCB::k_dispatch();
                break;
            case 0x21: {
                // sem_open
                auto pSEM = (SEM **) arg1;
                auto init = (uint64) arg2;
                if (*pSEM == nullptr) ret_val = -1;
                *pSEM = SEM::k_open(init);
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
                break;
            }
            case 0x22: {
                // sem_close
                auto pSEM = (SEM *) arg1;
                ret_val = SEM::k_close(pSEM);
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
                break;
            }
            case 0x23: {
                // sem_wait
                auto volatile pSEM = (SEM *) arg1;
                ret_val = SEM::k_wait(pSEM);
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
                break;
            }

            case 0x24: {
                // sem_signal
                auto volatile pSEM = (SEM *) arg1;
                ret_val = SEM::k_signal(pSEM);
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
                break;
            }

            case 0x26: {
                // sem_trywait
                auto volatile pSEM = (SEM *) arg1;
                ret_val = SEM::k_trywait(pSEM);
                __asm__ volatile("mv a0, %[ret_val]" : : [ret_val]"r"(ret_val));
                break;
            }

            case 0x41: {
                // putc
                volatile char result = __getc();
                __asm__ volatile("mv a0, %[result]" : : [result]"r"(result));
                break;
            }
            case 0x42: {
                // getc
                volatile auto c = (char) arg1;
                __putc(c);
                break;
            }
            default:
                break;
        }
        w_sstatus(sstatus);
        w_sepc(sepc);

    } else {
        uint64 sepc = r_sepc();
        printStringMine("\nError: scause = ");
        printIntegerMine(scause);
        printStringMine(" sepc = ");
        printIntegerMine(sepc);
        Riscv::end_kernel();
    }
}