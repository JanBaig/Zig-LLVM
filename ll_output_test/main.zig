const std = @import("std");
const helper = @import("helper.zig");

// Used by helper
export fn foo(x: u64) u64 {
    return x + 1;
}

// Taken from helper
pub extern fn bar(x: u64) u64;

pub fn main() void {
    std.debug.print("Hello {}\n", .{bar(39)});
}
