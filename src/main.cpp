#include "../h/syscall_c.hpp"

extern void userMain();

void userMainW(void *) {
    userMain();
}

int main() {
    MemoryAllocator::mem_init();
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    thread_t main_thread, user_main_thread;
    thread_create(&main_thread, nullptr, nullptr);
    TCB::running = main_thread;
    thread_create(&user_main_thread, userMainW, nullptr);
    while (!user_main_thread->isFinished()){
        thread_dispatch();
    }
    Riscv::end_kernel();
    return 0;
}

