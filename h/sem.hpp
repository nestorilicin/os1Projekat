#ifndef PROJEKAT_SEM_HPP
#define PROJEKAT_SEM_HPP


#include "list.hpp"
#include "tcb.hpp"
#include "MemoryAllocator.hpp"

class SEM {
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

    static SEM *k_open(uint64 init);

    static int k_close(SEM *sem);

    static int k_wait(SEM *sem);

    static int k_signal(SEM *sem);

    static int k_trywait(SEM *sem);

private:
    explicit SEM(uint64 init = 1) : val(init) {}

    uint64 val;
    List<TCB> blockedList;
};


#endif //PROJEKAT_SEM_HPP
