--- |
  ; ModuleID = 'get_sign.ll'
  source_filename = "get_sign.c"
  target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
  target triple = "x86_64-pc-linux-gnu"
  
  @.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
  
  ; Function Attrs: noinline nounwind uwtable
  define dso_local i32 @get_sign(i32 %0) #0 !dbg !9 {
    %2 = alloca i32, align 4
    %3 = alloca i32, align 4
    store i32 %0, i32* %3, align 4
    call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
    %4 = load i32, i32* %3, align 4, !dbg !15
    %5 = icmp eq i32 %4, 0, !dbg !17
    br i1 %5, label %6, label %7, !dbg !18
  
  6:                                                ; preds = %1
    store i32 0, i32* %2, align 4, !dbg !19
    br label %12, !dbg !19
  
  7:                                                ; preds = %1
    %8 = load i32, i32* %3, align 4, !dbg !20
    %9 = icmp slt i32 %8, 0, !dbg !22
    br i1 %9, label %10, label %11, !dbg !23
  
  10:                                               ; preds = %7
    store i32 -1, i32* %2, align 4, !dbg !24
    br label %12, !dbg !24
  
  11:                                               ; preds = %7
    store i32 1, i32* %2, align 4, !dbg !25
    br label %12, !dbg !25
  
  12:                                               ; preds = %11, %10, %6
    %13 = load i32, i32* %2, align 4, !dbg !26
    ret i32 %13, !dbg !26
  }
  
  ; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
  declare void @llvm.dbg.declare(metadata, metadata, metadata) #1
  
  ; Function Attrs: noinline nounwind uwtable
  define dso_local i32 @main() #0 !dbg !27 {
    %1 = alloca i32, align 4
    %2 = alloca i32, align 4
    store i32 0, i32* %1, align 4
    call void @llvm.dbg.declare(metadata i32* %2, metadata !30, metadata !DIExpression()), !dbg !31
    %3 = bitcast i32* %2 to i8*, !dbg !32
    call void @klee_make_symbolic(i8* %3, i64 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !33
    %4 = load i32, i32* %2, align 4, !dbg !34
    %5 = call i32 @get_sign(i32 %4), !dbg !35
    ret i32 %5, !dbg !36
  }
  
  declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2
  
  attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
  attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  
  !llvm.dbg.cu = !{!0}
  !llvm.module.flags = !{!3, !4, !5, !6, !7}
  !llvm.ident = !{!8}
  
  !0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-++20220115064402+fc043d8a256b-1~exp1~20220115064412.55", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
  !1 = !DIFile(filename: "get_sign.c", directory: "/home/carlosterberg/klee/examples/get_sign")
  !2 = !{}
  !3 = !{i32 7, !"Dwarf Version", i32 4}
  !4 = !{i32 2, !"Debug Info Version", i32 3}
  !5 = !{i32 1, !"wchar_size", i32 4}
  !6 = !{i32 7, !"uwtable", i32 1}
  !7 = !{i32 7, !"frame-pointer", i32 2}
  !8 = !{!"Ubuntu clang version 13.0.1-++20220115064402+fc043d8a256b-1~exp1~20220115064412.55"}
  !9 = distinct !DISubprogram(name: "get_sign", scope: !1, file: !1, line: 7, type: !10, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
  !10 = !DISubroutineType(types: !11)
  !11 = !{!12, !12}
  !12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
  !13 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !1, line: 7, type: !12)
  !14 = !DILocation(line: 7, column: 18, scope: !9)
  !15 = !DILocation(line: 8, column: 7, scope: !16)
  !16 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 7)
  !17 = !DILocation(line: 8, column: 9, scope: !16)
  !18 = !DILocation(line: 8, column: 7, scope: !9)
  !19 = !DILocation(line: 9, column: 6, scope: !16)
  !20 = !DILocation(line: 11, column: 7, scope: !21)
  !21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 11, column: 7)
  !22 = !DILocation(line: 11, column: 9, scope: !21)
  !23 = !DILocation(line: 11, column: 7, scope: !9)
  !24 = !DILocation(line: 12, column: 6, scope: !21)
  !25 = !DILocation(line: 14, column: 6, scope: !21)
  !26 = !DILocation(line: 15, column: 1, scope: !9)
  !27 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 17, type: !28, scopeLine: 17, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
  !28 = !DISubroutineType(types: !29)
  !29 = !{!12}
  !30 = !DILocalVariable(name: "a", scope: !27, file: !1, line: 18, type: !12)
  !31 = !DILocation(line: 18, column: 7, scope: !27)
  !32 = !DILocation(line: 19, column: 22, scope: !27)
  !33 = !DILocation(line: 19, column: 3, scope: !27)
  !34 = !DILocation(line: 20, column: 19, scope: !27)
  !35 = !DILocation(line: 20, column: 10, scope: !27)
  !36 = !DILocation(line: 20, column: 3, scope: !27)

...
---
name:            get_sign
alignment:       16
exposesReturnsTwice: false
legalized:       false
regBankSelected: false
selected:        false
failedISel:      false
tracksRegLiveness: true
hasWinCFI:       false
failsVerification: false
tracksDebugUserValues: true
registers:       []
liveins:
  - { reg: '$edi', virtual-reg: '' }
frameInfo:
  isFrameAddressTaken: false
  isReturnAddressTaken: false
  hasStackMap:     false
  hasPatchPoint:   false
  stackSize:       0
  offsetAdjustment: 0
  maxAlignment:    4
  adjustsStack:    false
  hasCalls:        false
  stackProtector:  ''
  maxCallFrameSize: 4294967295
  cvBytesOfCalleeSavedRegisters: 0
  hasOpaqueSPAdjustment: false
  hasVAStart:      false
  hasMustTailInVarArgFunc: false
  hasTailCall:     false
  localFrameSize:  0
  savePoint:       ''
  restorePoint:    ''
fixedStack:      []
stack:
  - { id: 0, name: '', type: default, offset: 0, size: 4, alignment: 4, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '', debug-info-expression: '', debug-info-location: '' }
  - { id: 1, name: '', type: default, offset: 0, size: 4, alignment: 4, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!13', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!14' }
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.1):
    successors: %bb.1(0x30000000), %bb.2(0x50000000)
    liveins: $edi
  
    MOV32mr %stack.1, 1, $noreg, 0, $noreg, renamable $edi :: (store (s32) into %ir.3)
    TEST32rr killed renamable $edi, renamable $edi, implicit-def $eflags, debug-location !17
    JCC_1 %bb.2, 5, implicit killed $eflags, debug-location !18
    JMP_1 %bb.1, debug-location !18
  
  bb.1 (%ir-block.6):
    successors: %bb.5(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0, debug-location !19 :: (store (s32) into %ir.2)
    JMP_1 %bb.5, debug-location !19
  
  bb.2 (%ir-block.7):
    successors: %bb.3(0x30000000), %bb.4(0x50000000)
  
    CMP32mi8 %stack.1, 1, $noreg, 0, $noreg, 0, implicit-def $eflags, debug-location !22 :: (dereferenceable load (s32) from %ir.3)
    JCC_1 %bb.4, 9, implicit killed $eflags, debug-location !23
    JMP_1 %bb.3, debug-location !23
  
  bb.3 (%ir-block.10):
    successors: %bb.5(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, -1, debug-location !24 :: (store (s32) into %ir.2)
    JMP_1 %bb.5, debug-location !24
  
  bb.4 (%ir-block.11):
    successors: %bb.5(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 1, debug-location !25 :: (store (s32) into %ir.2)
  
  bb.5 (%ir-block.12):
    renamable $eax = MOV32rm %stack.0, 1, $noreg, 0, $noreg, debug-location !26 :: (dereferenceable load (s32) from %ir.2)
    RET 0, $eax, debug-location !26

...
---
name:            main
alignment:       16
exposesReturnsTwice: false
legalized:       false
regBankSelected: false
selected:        false
failedISel:      false
tracksRegLiveness: true
hasWinCFI:       false
failsVerification: false
tracksDebugUserValues: true
registers:       []
liveins:         []
frameInfo:
  isFrameAddressTaken: false
  isReturnAddressTaken: false
  hasStackMap:     false
  hasPatchPoint:   false
  stackSize:       0
  offsetAdjustment: 0
  maxAlignment:    4
  adjustsStack:    false
  hasCalls:        true
  stackProtector:  ''
  maxCallFrameSize: 4294967295
  cvBytesOfCalleeSavedRegisters: 0
  hasOpaqueSPAdjustment: false
  hasVAStart:      false
  hasMustTailInVarArgFunc: false
  hasTailCall:     false
  localFrameSize:  0
  savePoint:       ''
  restorePoint:    ''
fixedStack:      []
stack:
  - { id: 0, name: '', type: default, offset: 0, size: 4, alignment: 4, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '', debug-info-expression: '', debug-info-location: '' }
  - { id: 1, name: '', type: default, offset: 0, size: 4, alignment: 4, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!30', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!31' }
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.0):
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store (s32) into %ir.1)
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !33
    renamable $rdi = LEA64r %stack.1, 1, $noreg, 0, $noreg
    $rsi = MOV32ri64 4, debug-location !33
    $rdx = MOV32ri64 @.str, debug-location !33
    CALL64pcrel32 @klee_make_symbolic, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, debug-location !33
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !33
    renamable $edi = MOV32rm %stack.1, 1, $noreg, 0, $noreg, debug-location !34 :: (dereferenceable load (s32) from %ir.2)
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !35
    CALL64pcrel32 @get_sign, csr_64, implicit $rsp, implicit $ssp, implicit $edi, implicit-def $rsp, implicit-def $ssp, implicit-def $eax, debug-location !35
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !35
    RET 0, $eax, debug-location !36

...
