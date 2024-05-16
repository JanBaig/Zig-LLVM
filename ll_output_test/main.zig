const std = @import("std");

export fn foo(x: u64) u64 {
    return x + 1;
}

pub fn main() void {
    std.debug.print("Hello {}\n", .{bar(39)});
}

// Ensure the bar function is available for the Zig code
extern fn bar(x: u64) u64;

// Custom entry point to avoid `_start` conflict
pub fn start() noreturn {
    main();
    std.os.exit(0);
}
