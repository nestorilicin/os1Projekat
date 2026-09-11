#ifndef PROJEKAT_SYSCALL_C_HPP
#define PROJEKAT_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "tcb.hpp"
#include "sem.hpp"
#include "riscv.hpp"

void *mem_alloc(size_t size);

int mem_free(void *);

class TCB;

typedef TCB *thread_t;

int thread_create(thread_t *handle, void(*start_routine)(void *), void *arg);

int thread_exit();

void thread_dispatch();

class SEM;

typedef SEM* sem_t;

int sem_open(sem_t *handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

int sem_trywait(sem_t id);

int sem_timedwait(sem_t id, time_t timeout);

int time_sleep(time_t);

char getc();

void putc(char c);

void Wecall(int code, ...);


#endif //PROJEKAT_SYSCALL_C_HPP
