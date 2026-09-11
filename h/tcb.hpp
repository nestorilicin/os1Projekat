#ifndef PROJEKAT_TCB_HPP
#define PROJEKAT_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "MemoryAllocator.hpp"

// Thread Control Block
class TCB {
public:
    void *operator new(size_t size) {
        return MemoryAllocator::k_mem_alloc(size);
    }

    void *operator new[](size_t size) {
        return MemoryAllocator::k_mem_alloc(size);
    }

    void operator delete(void *memory) noexcept {
        MemoryAllocator::k_mem_free(memory);
    }

    void operator delete[](void *memory) noexcept {
        MemoryAllocator::k_mem_free(memory);
    }

    ~TCB() {
        delete[] stack;
    }

    using Body = void (*)(void *);

    static TCB *k_createThread(Body body, void *arg);

    static int k_thread_exit();

    bool isFinished() const {
        return finished;
    }

    void setFinished(bool f) {
        finished = f;
    }

    bool isBlocked() const {
        return blocked;
    }

    void setBlocked(bool b) {
        TCB::blocked = b;
    }

    static void k_yield();

    static TCB *running;

    int getId() const;

private:
    friend class Riscv;

    explicit TCB(Body body, void *arg) :
            body(body),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false),
            arg(arg),
            blocked(false),
            id(0) {
        if (body != nullptr) {
            Scheduler::put(this);
            id = gen_id++;
        }
    }

    struct Context {
        uint64 ra;  // return address
        uint64 sp;  // stack pointer
    };
    Body body;
    uint64 *stack;
    Context context;
    bool finished;
    void *arg;
    bool blocked;
    int id;
    static int gen_id;

    static void k_dispatch();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void threadWrapper();

};


#endif //PROJEKAT_TCB_HPP
