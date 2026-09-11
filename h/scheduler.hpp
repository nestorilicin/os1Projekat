#ifndef PROJEKAT_SCHEDULER_HPP
#define PROJEKAT_SCHEDULER_HPP

#include "list.hpp"

class TCB;

class Scheduler {
private:
    static List<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *tcb);

};

#endif //PROJEKAT_SCHEDULER_HPP
