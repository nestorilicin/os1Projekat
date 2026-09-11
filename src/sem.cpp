#include "../h/sem.hpp"


SEM *SEM::k_open(uint64 init) {
    return new SEM(init);
}

int SEM::k_close(SEM *sem) {
    if (sem == nullptr) return -1; // Error: no semaphore
    while (sem->blockedList.peekFirst() != nullptr) {
        TCB *t = sem->blockedList.removeFirst();
        t->setBlocked(false);
        Scheduler::put(t);
    }
    return 0;
}

int SEM::k_wait(SEM *sem) {
    if (sem == nullptr) return -1; // Error: no semaphore
    if ((int) --sem->val < 0) {
        TCB::running->setBlocked(true);
        sem->blockedList.addLast(TCB::running);
        TCB::k_yield();
    }
    return 0;
}

int SEM::k_signal(SEM *sem) {
    if (sem == nullptr) return -1; // Error: no semaphore
    if ((int) ++sem->val <= 0) {
        TCB *t = sem->blockedList.removeFirst();
        t->setBlocked(false);
        Scheduler::put(t);
    }
    return 0;
}

int SEM::k_trywait(SEM *sem) {
    if (sem == nullptr) return -1; // Error: no semaphore
    if ((int) sem->val >= 1) {
        sem->val--;
        return 1;
    } else return 0;
}



