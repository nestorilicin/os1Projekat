#include "../h/print_mine.hpp"

void printStringMine(const char *string) {
    while (*string != '\0') {
        __putc(*string);
        string++;
    }
}

void printIntegerMine(uint64 integer) {
    static char digits[] = "0123456789";
    char buf[16];
    int i;
    i = 0;
    do {
        buf[i++] = digits[integer % 10];
    } while ((integer /= 10) != 0);
    while (--i >= 0) { __putc(buf[i]); }
}
