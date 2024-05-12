const std = @import("std");
const func = @import("test.zig");

pub fn main() void {
    // Your code here
    _ = func.square(34);
    std.debug.print("Hello, World!\n", .{});
}
