; ModuleID = 'BitcodeBuffer'
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
!llvm.dbg.cu = !{!2}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "zig 0.12.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !116, splitDebugInlining: false)
!3 = !DIFile(filename: "test", directory: "/mnt/c/Users/janat/Downloads/Dev/Practice/Zig_LLVM/llvm_ir")
!4 = !{!5, !21, !110}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "builtin.CompilerBackend", scope: !6, file: !6, line: 974, baseType: !7, size: 64, align: 64, elements: !8)
!6 = !DIFile(filename: "builtin.zig", directory: "/home/jan/.zvm/0.12.0/lib/std")
!7 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "other", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "stage1", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "stage2_llvm", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "stage2_c", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "stage2_wasm", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "stage2_arm", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "stage2_x86_64", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "stage2_aarch64", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "stage2_x86", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "stage2_riscv64", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "stage2_sparc64", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "stage2_spirv64", value: 11, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Target.Cpu.Arch", scope: !23, file: !22, line: 3385, baseType: !47, size: 8, align: 8, elements: !48)
!22 = !DIFile(filename: "Target.zig", directory: "/home/jan/.zvm/0.12.0/lib/std")
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "Target.Cpu", scope: !2, size: 448, align: 64, elements: !24)
!24 = !{!25, !45, !46}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !23, baseType: !26, size: 64, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*Target.Cpu.Model", baseType: !27, size: 64, align: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "Target.Cpu.Model", scope: !2, size: 576, align: 64, elements: !28)
!28 = !{!29, !37, !38}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, baseType: !30, size: 128, align: 64)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]u8", scope: !2, size: 128, align: 64, elements: !31)
!31 = !{!32, !35}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !30, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*u8", baseType: !34, size: 64, align: 8)
!34 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !30, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "llvm_name", scope: !27, baseType: !30, size: 128, align: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !27, baseType: !39, size: 320, align: 64, offset: 256)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "Target.Cpu.Feature.Set", scope: !2, size: 320, align: 64, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ints", scope: !39, baseType: !42, size: 320, align: 64)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 320, align: 64, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 5, lowerBound: 77)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !23, baseType: !39, size: 320, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !23, baseType: !21, size: 8, align: 8, offset: 384)
!47 = !DIBasicType(name: "u6", size: 8, encoding: DW_ATE_unsigned)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!49 = !DIEnumerator(name: "arm", value: 0, isUnsigned: true)
!50 = !DIEnumerator(name: "armeb", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "aarch64", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "aarch64_be", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "aarch64_32", value: 4, isUnsigned: true)
!54 = !DIEnumerator(name: "arc", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "avr", value: 6, isUnsigned: true)
!56 = !DIEnumerator(name: "bpfel", value: 7, isUnsigned: true)
!57 = !DIEnumerator(name: "bpfeb", value: 8, isUnsigned: true)
!58 = !DIEnumerator(name: "csky", value: 9, isUnsigned: true)
!59 = !DIEnumerator(name: "dxil", value: 10, isUnsigned: true)
!60 = !DIEnumerator(name: "hexagon", value: 11, isUnsigned: true)
!61 = !DIEnumerator(name: "loongarch32", value: 12, isUnsigned: true)
!62 = !DIEnumerator(name: "loongarch64", value: 13, isUnsigned: true)
!63 = !DIEnumerator(name: "m68k", value: 14, isUnsigned: true)
!64 = !DIEnumerator(name: "mips", value: 15, isUnsigned: true)
!65 = !DIEnumerator(name: "mipsel", value: 16, isUnsigned: true)
!66 = !DIEnumerator(name: "mips64", value: 17, isUnsigned: true)
!67 = !DIEnumerator(name: "mips64el", value: 18, isUnsigned: true)
!68 = !DIEnumerator(name: "msp430", value: 19, isUnsigned: true)
!69 = !DIEnumerator(name: "powerpc", value: 20, isUnsigned: true)
!70 = !DIEnumerator(name: "powerpcle", value: 21, isUnsigned: true)
!71 = !DIEnumerator(name: "powerpc64", value: 22, isUnsigned: true)
!72 = !DIEnumerator(name: "powerpc64le", value: 23, isUnsigned: true)
!73 = !DIEnumerator(name: "r600", value: 24, isUnsigned: true)
!74 = !DIEnumerator(name: "amdgcn", value: 25, isUnsigned: true)
!75 = !DIEnumerator(name: "riscv32", value: 26, isUnsigned: true)
!76 = !DIEnumerator(name: "riscv64", value: 27, isUnsigned: true)
!77 = !DIEnumerator(name: "sparc", value: 28, isUnsigned: true)
!78 = !DIEnumerator(name: "sparc64", value: 29, isUnsigned: true)
!79 = !DIEnumerator(name: "sparcel", value: 30, isUnsigned: true)
!80 = !DIEnumerator(name: "s390x", value: 31, isUnsigned: true)
!81 = !DIEnumerator(name: "tce", value: 32, isUnsigned: true)
!82 = !DIEnumerator(name: "tcele", value: 33, isUnsigned: true)
!83 = !DIEnumerator(name: "thumb", value: 34, isUnsigned: true)
!84 = !DIEnumerator(name: "thumbeb", value: 35, isUnsigned: true)
!85 = !DIEnumerator(name: "x86", value: 36, isUnsigned: true)
!86 = !DIEnumerator(name: "x86_64", value: 37, isUnsigned: true)
!87 = !DIEnumerator(name: "xcore", value: 38, isUnsigned: true)
!88 = !DIEnumerator(name: "xtensa", value: 39, isUnsigned: true)
!89 = !DIEnumerator(name: "nvptx", value: 40, isUnsigned: true)
!90 = !DIEnumerator(name: "nvptx64", value: 41, isUnsigned: true)
!91 = !DIEnumerator(name: "le32", value: 42, isUnsigned: true)
!92 = !DIEnumerator(name: "le64", value: 43, isUnsigned: true)
!93 = !DIEnumerator(name: "amdil", value: 44, isUnsigned: true)
!94 = !DIEnumerator(name: "amdil64", value: 45, isUnsigned: true)
!95 = !DIEnumerator(name: "hsail", value: 46, isUnsigned: true)
!96 = !DIEnumerator(name: "hsail64", value: 47, isUnsigned: true)
!97 = !DIEnumerator(name: "spir", value: 48, isUnsigned: true)
!98 = !DIEnumerator(name: "spir64", value: 49, isUnsigned: true)
!99 = !DIEnumerator(name: "spirv32", value: 50, isUnsigned: true)
!100 = !DIEnumerator(name: "spirv64", value: 51, isUnsigned: true)
!101 = !DIEnumerator(name: "kalimba", value: 52, isUnsigned: true)
!102 = !DIEnumerator(name: "shave", value: 53, isUnsigned: true)
!103 = !DIEnumerator(name: "lanai", value: 54, isUnsigned: true)
!104 = !DIEnumerator(name: "wasm32", value: 55, isUnsigned: true)
!105 = !DIEnumerator(name: "wasm64", value: 56, isUnsigned: true)
!106 = !DIEnumerator(name: "renderscript32", value: 57, isUnsigned: true)
!107 = !DIEnumerator(name: "renderscript64", value: 58, isUnsigned: true)
!108 = !DIEnumerator(name: "ve", value: 59, isUnsigned: true)
!109 = !DIEnumerator(name: "spu_2", value: 60, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "builtin.OutputMode", scope: !6, file: !6, line: 645, baseType: !111, size: 8, align: 8, elements: !112)
!111 = !DIBasicType(name: "u2", size: 8, encoding: DW_ATE_unsigned)
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "Exe", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "Lib", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "Obj", value: 2, isUnsigned: true)
!116 = !{!117, !120, !122, !125, !127, !131}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "zig_backend", linkageName: "builtin.zig_backend", scope: !119, file: !119, line: 6, type: !5, isLocal: true, isDefinition: true)
!119 = !DIFile(filename: "builtin.zig", directory: "/home/jan/.cache/zig/b/53221c66fd1fb7dc35e37d5110cb4fe2")
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "empty", linkageName: "Target.Cpu.Feature.Set.empty", scope: !22, file: !22, line: 824, type: !39, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "x86_64", linkageName: "Target.x86.cpu.x86_64", scope: !124, file: !124, line: 3811, type: !27, isLocal: true, isDefinition: true)
!124 = !DIFile(filename: "x86.zig", directory: "/home/jan/.zvm/0.12.0/lib/std/Target")
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "cpu", linkageName: "builtin.cpu", scope: !119, file: !119, line: 13, type: !23, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "simplified_logic", linkageName: "start.simplified_logic", scope: !129, file: !129, line: 19, type: !130, isLocal: true, isDefinition: true)
!129 = !DIFile(filename: "start.zig", directory: "/home/jan/.zvm/0.12.0/lib/std")
!130 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "output_mode", linkageName: "builtin.output_mode", scope: !119, file: !119, line: 8, type: !110, isLocal: true, isDefinition: true)
