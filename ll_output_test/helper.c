#include <stdint.h>

// Declare the Zig function
extern uint64_t foo(uint64_t x);

// Define the bar function that uses foo
uint64_t bar(uint64_t x) {
    return foo(x + 2);
}

