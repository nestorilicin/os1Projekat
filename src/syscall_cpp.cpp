#include "../h/syscall_cpp.hpp"

void *operator new(size_t size) {
    return mem_alloc(size);
}

void operator delete(void *p) noexcept {
    mem_free(p);
}

void *operator new[](size_t size) {
    return mem_alloc(size);
}

void operator delete[](void *p) noexcept {
    mem_free(p);
}

Thread::Thread(void (*b)(void *), void *a) {
    body = b;
    arg = a;
}

Thread::~Thread() {
}

int Thread::start() {
    int ret_val;
    if (this->body == nullptr) {
        ret_val = thread_create(&this->myHandle, thread, this);
    } else {
        ret_val = thread_create(&this->myHandle, this->body, this->arg);
    }
    return ret_val;
}

// 4. zadatak, prvi kolokvijum, april 2013.
void Thread::thread(void *p) {
    auto *thr = (Thread *) p;
    if (thr) thr->run();
}


void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t) {
    // without level 4
    return -1;
}

Thread::Thread() : Thread(nullptr, nullptr) {}


Semaphore::Semaphore(unsigned int init) {
    sem_open(&this->myHandle,init);
}

Semaphore::~Semaphore() {
    sem_close(this->myHandle);
}

int Semaphore::wait() {
    return sem_wait(this->myHandle);
}

int Semaphore::signal() {
    return sem_signal(this->myHandle);
}

int Semaphore::timedWait(time_t) {
    return -1;
}

int Semaphore::tryWait() {
    return sem_trywait(this->myHandle);
}

void PeriodicThread::terminate() {
}

PeriodicThread::PeriodicThread(time_t period) {

}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}
