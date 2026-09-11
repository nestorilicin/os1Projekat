#include "../h/tcb.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;
int TCB::gen_id = 0;

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    TCB::k_yield();
}

void TCB::k_yield() {
    uint64 volatile callCode = 0x13;
    __asm__ volatile ("mv a0, %0" : : "r"(callCode));
    __asm__ volatile("ecall");
    //thread_dispatch();
}

void TCB::k_dispatch() {
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

TCB *TCB::k_createThread(Body body, void *arg = nullptr) {
    return new TCB(body, arg);
}

int TCB::k_thread_exit() {
    if (running == nullptr) return -1; // Error: running doesn't exist
    running->setFinished(true);
    TCB::k_yield();
    return 0;
}

int TCB::getId() const {
    return id;
}



