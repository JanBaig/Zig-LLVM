const std = @import("std");

extern fn addIntegers(a: i64, b: i32) i64;

pub fn main() void {
    const a: i64 = 10;
    const b: i64 = 20;
    const sum = addIntegers(a, b);
    std.debug.print("Sum of {d} and {d} is: {d}\n", .{ a, b, sum });
}
