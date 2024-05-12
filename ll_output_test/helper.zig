const main = @import("main.zig");

// Taken from main
extern fn foo(x: u64) u64;

// Used by main
export fn bar(x: u64) u64 {
    return foo(x + 2);
}
