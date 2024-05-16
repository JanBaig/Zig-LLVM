
#### Compiling

The `builder_test` folder contains simple functions to test the LLVM IR builder from within Zig.
To execute, you'll need to download LLVM from source and provide the necessary compiler flags
Example of how to execute is shown below (might need to change path to LLVM headers and library files):
```bash
# Run from WSL
zig build-exe main.zig -lc++ -I/usr/lib/llvm-14/include -L /usr/lib/llvm-14/lib -lLLVM-14
```

The `link_test` folder contains simple functions to test linking LLVM IR with a zig file.
To execute:
```bash
clang -c add.ll -o add.o
zig build-exe main.zig add.o -femit-bin=main 
./main.o
```

The `ll_output_test` folder contains a simple .c and .zig file. In
order to link the two together, see the README in that folder
