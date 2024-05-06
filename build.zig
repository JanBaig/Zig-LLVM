const std = @import("std");
const Builder = std.build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions(); // Use standardReleaseOptions for optimized release build

    const exe = b.addExecutable("main", "main.zig");
    exe.setBuildMode(mode);
    exe.linkLibC();
    exe.addIncludeDir("/usr/lib/llvm-14/include");
    exe.addLibPath("/usr/lib/llvm-14/lib");
    exe.linkSystemLibrary("c++");
    exe.linkSystemLibrary("LLVM-14");
    exe.install();

    const target = b.standardTargetOptions(.{});
    exe.setTarget(target);

    b.default_step.dependOn(&exe.step);
}
