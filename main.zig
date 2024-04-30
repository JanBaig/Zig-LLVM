const std = @import("std");
const llvm = @cImport({
    @cInclude("llvm-c/Core.h");
    @cInclude("llvm-c/BitWriter.h");
});

pub fn main() !void {
    // Create an LLVM context and module
    const context = llvm.LLVMContextCreate();
    const module = llvm.LLVMModuleCreateWithNameInContext("my_module", context);

    // Define the function return type as 32-bit integer
    const ret_type = llvm.LLVMInt32TypeInContext(context);

    // Create a function named 'main' that returns a 32-bit integer
    const fn_type = llvm.LLVMFunctionType(ret_type, null, 0, 0);
    const main_fn = llvm.LLVMAddFunction(module, "main", fn_type);

    // Create a basic block for the entry point and set the builder position
    const entry = llvm.LLVMAppendBasicBlockInContext(context, main_fn, "entry");
    const builder = llvm.LLVMCreateBuilderInContext(context);
    llvm.LLVMPositionBuilderAtEnd(builder, entry);

    // Create the constant value '42'
    const forty_two = llvm.LLVMConstInt(ret_type, 42, 0);

    // Return the constant value from the function
    _ = llvm.LLVMBuildRet(builder, forty_two);

    // Output the LLVM IR to a file named 'output.ll'
    if (llvm.LLVMPrintModuleToFile(module, "output.ll", null) != 0) {
        llvm.LLVMDisposeModule(module);
        llvm.LLVMContextDispose(context);
        @panic("Error writing module to file");
    }

    // Clean up
    llvm.LLVMDisposeBuilder(builder);
    llvm.LLVMDisposeModule(module);
    llvm.LLVMContextDispose(context);

    std.debug.print("LLVM IR code successfully written to output.ll\n", .{});
}
