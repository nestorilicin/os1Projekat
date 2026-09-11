#include "../h/syscall_c.hpp"


void Wecall(int code, ...) {
    // for argument passing
    __asm__ volatile("ecall");
}


void *mem_alloc(size_t size) {
    Wecall(0x01, size);
    void *ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

int mem_free(void *ptr) {
    Wecall(0x02, ptr);
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {
    Wecall(0x11, handle, start_routine, arg);
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

int thread_exit() {
    Wecall(0x12);
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

void thread_dispatch() {
    Wecall(0x13);
}


int sem_open(sem_t *handle, unsigned int init) {
    Wecall(0x21, handle, init);
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

int sem_close(sem_t handle) {
    Wecall(0x22, handle);
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

int sem_wait(sem_t id) {
    Wecall(0x23, id);
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

int sem_signal(sem_t id) {
    Wecall(0x24, id);
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

int sem_trywait(sem_t id) {
    Wecall(0x26, id);
    int ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

int sem_timedwait(sem_t , time_t) {
    // not implemented; level 4
    return -1;
}

int time_sleep(time_t) {
    // not implemented; level 4
    return -1;
}

char getc() {
    Wecall(0x41);
    char ret_val;
    __asm__ volatile("mv %[ret_val], a0" : [ret_val]"=r"(ret_val));
    return ret_val;
}

void putc(char c) {
    Wecall(0x42, c);
}

