Produce a standalone LLVM textual IR file from helper.c by:
```bash
clang -O3 -S -emit-llvm helper.c -o helper.ll
```

Then link it and run it with main. The simplest way to do this is:
```bash
zig run -OReleaseFast main.zig helper.ll
```
Alternately (to keep the generated executable):
```bash
zig build-exe -OReleaseFast main.zig helper.ll
./main
```

Without the `-O3` and `-OReleaseFast` the files will be much bigger
because they will include debug information. You can remove the debug
information from the `.ll` file with:
```bash
opt input.ll -strip-debug -o output.ll -S 
```
<!-- OR use -fstrip -->


