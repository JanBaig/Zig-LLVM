; ModuleID = 'test.ll'
source_filename = "test"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Target.Cpu.Feature.Set = type { [5 x i64] }
%Target.Cpu.Model = type { { ptr, i64 }, { ptr, i64 }, %Target.Cpu.Feature.Set }
%Target.Cpu = type { ptr, %Target.Cpu.Feature.Set, i6, [7 x i8] }

@builtin.zig_backend = internal unnamed_addr constant i64 2, align 8
@Target.Cpu.Feature.Set.empty = internal unnamed_addr constant %Target.Cpu.Feature.Set zeroinitializer, align 8
@Target.x86.cpu.x86_64 = internal unnamed_addr constant %Target.Cpu.Model { { ptr, i64 } { ptr @__anon_280, i64 6 }, { ptr, i64 } { ptr @__anon_283, i64 6 }, %Target.Cpu.Feature.Set { [5 x i64] [i64 149533581377552, i64 551367491584, i64 1168232153472, i64 0, i64 0] } }, align 8
@__anon_280 = internal unnamed_addr global [7 x i8] c"x86_64\00", align 1
@__anon_283 = internal unnamed_addr global [7 x i8] c"x86-64\00", align 1
@builtin.cpu = internal unnamed_addr constant %Target.Cpu { ptr @Target.x86.cpu.x86_64, %Target.Cpu.Feature.Set { [5 x i64] [i64 1349309051134064, i64 -8986912698538077184, i64 67190551740880, i64 0, i64 0] }, i6 -27, [7 x i8] undef }, align 8
@start.simplified_logic = internal unnamed_addr constant i1 false, align 1
@builtin.output_mode = internal unnamed_addr constant i2 -2, align 1

!llvm.module.flags = !{!0, !1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 4}
