#include "../h/MemoryAllocator.hpp"

// source: 2. zadatak, 2. kolokvijum, septembar 2015.
//         2. zadatak, 2. kolokvijum, april 2014.

MemoryAllocator::FreeMem *MemoryAllocator::fmem_head = nullptr;

void MemoryAllocator::mem_init() {
    fmem_head = (FreeMem *) HEAP_START_ADDR;
    fmem_head->next = nullptr;
    fmem_head->size = (char*) HEAP_END_ADDR - (char*) HEAP_END_ADDR - sizeof(FreeMem);

}

void *MemoryAllocator::k_mem_alloc(size_t size) {
    size_t adjusted_size = ((size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE) * MEM_BLOCK_SIZE;
    FreeMem *prev = nullptr;
    FreeMem *curr = fmem_head;
    while (curr != nullptr) {
        if (curr->size >= adjusted_size) {
            // add newBlock if needed
            if (curr->size > adjusted_size) {
                auto newFree = (FreeMem *) ((char *) curr + adjusted_size + sizeof(FreeMem));
                newFree->size = curr->size - adjusted_size - sizeof(FreeMem);
                newFree->next = curr->next;
                curr->size = adjusted_size;
                curr->next = newFree;
            }
            // link-up in list anyway
            if (prev != nullptr)
                prev->next = curr->next;
            else
                fmem_head = curr->next;
            return (void *) ((char *) curr + sizeof(FreeMem));
        }
        prev = curr;
        curr = curr->next;
    }
    return nullptr; // didn't find any block
}

int MemoryAllocator::k_mem_free(void *ptr) {
    // find the place where to insert the new free segment (just after curr):
    FreeMem* curr;
    if (!fmem_head || (char*)ptr < (char*)fmem_head)
        curr = nullptr; // insert as first
    else
        for (curr = fmem_head; curr->next != nullptr && (char*)ptr > (char*)(curr->next); curr = curr->next);

    // insert the new segment after curr:
    auto* newSeg = (FreeMem*)((char*)ptr - sizeof(FreeMem));
    if (curr) newSeg->next = curr->next;
    else newSeg->next = fmem_head;
    if (curr) curr->next = newSeg;
    else fmem_head = newSeg;
    // try to merge with the previous and next segments:
    tryToJoin(newSeg);
    tryToJoin(curr);
    return 0;
}
//  helper: try to join curr with curr->next free segment
int MemoryAllocator::tryToJoin(MemoryAllocator::FreeMem *curr) {
    if (!curr) return 0;
    if (curr->next && (char*)curr + curr->size + sizeof(FreeMem) == (char*)(curr->next)) {
        // remove the curr->next segment:
        curr->size += sizeof(FreeMem) + curr->next->size;
        curr->next = curr->next->next;
        return 1;
    } else {
        return 0;
    }
}


