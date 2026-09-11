#ifndef PROJEKAT_MEMORYALLOCATOR_HPP
#define PROJEKAT_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"

class MemoryAllocator {
public:
    static void mem_init();

    static void *k_mem_alloc(size_t size);

    static int k_mem_free(void *ptr);

private:
    struct FreeMem {
        FreeMem *next;
        size_t size;
    };

    static int tryToJoin(FreeMem *);

    static FreeMem *fmem_head;

};



#endif //PROJEKAT_MEMORYALLOCATOR_HPP
