
const std = @import("std");

extern fn addIntegers(a: i32, b: i32) i32;

pub fn main() void {
    const a: i32 = 10;
    const b: i32 = 20;
    const sum = addIntegers(a, b);
    std.debug.print("Sum of {d} and {d} is: {d}\n", .{a, b, sum});
}

