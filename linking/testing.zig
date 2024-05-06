const std = @import("std");

pub fn main() void {
    const a: i32 = 10;
    const b: i32 = 20;
    var result: i32 = 0;

    // Inline Assembly to add two numbers
    _ = asm volatile ("add %[result], %[input_a], %[input_b]"
        : [result] "=r" (result)
        : [input_a] "r" (a),
          [input_b] "r" (b)
    );

    std.debug.print("Result of addition: {}\n", .{result});
}



