--- |
  ; ModuleID = 'Regexp.bc'
  source_filename = "Regexp.c"
  target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
  target triple = "x86_64-pc-linux-gnu"
  
  @.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
  @.str.1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
  
  ; Function Attrs: noinline nounwind uwtable
  define dso_local i32 @match(i8* %0, i8* %1) #0 !dbg !9 {
    %3 = alloca i32, align 4
    %4 = alloca i8*, align 8
    %5 = alloca i8*, align 8
    store i8* %0, i8** %4, align 8
    call void @llvm.dbg.declare(metadata i8** %4, metadata !15, metadata !DIExpression()), !dbg !16
    store i8* %1, i8** %5, align 8
    call void @llvm.dbg.declare(metadata i8** %5, metadata !17, metadata !DIExpression()), !dbg !18
    %6 = load i8*, i8** %4, align 8, !dbg !19
    %7 = bitcast i8* %6 to i8*, !dbg !19
    %8 = load i8, i8* %7, align 1, !dbg !19
    %9 = sext i8 %8 to i32, !dbg !19
    %10 = icmp eq i32 %9, 94, !dbg !21
    br i1 %10, label %11, label %16, !dbg !22
  
  11:                                               ; preds = %2
    %12 = load i8*, i8** %4, align 8, !dbg !23
    %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !24
    %14 = load i8*, i8** %5, align 8, !dbg !25
    %15 = call i32 @matchhere(i8* %13, i8* %14), !dbg !26
    store i32 %15, i32* %3, align 4, !dbg !27
    br label %30, !dbg !27
  
  16:                                               ; preds = %2
    br label %17, !dbg !28
  
  17:                                               ; preds = %23, %16
    %18 = load i8*, i8** %4, align 8, !dbg !29
    %19 = load i8*, i8** %5, align 8, !dbg !32
    %20 = call i32 @matchhere(i8* %18, i8* %19), !dbg !33
    %21 = icmp ne i32 %20, 0, !dbg !33
    br i1 %21, label %22, label %23, !dbg !34
  
  22:                                               ; preds = %17
    store i32 1, i32* %3, align 4, !dbg !35
    br label %30, !dbg !35
  
  23:                                               ; preds = %17
    %24 = load i8*, i8** %5, align 8, !dbg !36
    %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !36
    store i8* %25, i8** %5, align 8, !dbg !36
    %26 = load i8, i8* %24, align 1, !dbg !37
    %27 = sext i8 %26 to i32, !dbg !37
    %28 = icmp ne i32 %27, 0, !dbg !38
    br i1 %28, label %17, label %29, !dbg !39, !llvm.loop !40
  
  29:                                               ; preds = %23
    store i32 0, i32* %3, align 4, !dbg !43
    br label %30, !dbg !43
  
  30:                                               ; preds = %29, %22, %11
    %31 = load i32, i32* %3, align 4, !dbg !44
    ret i32 %31, !dbg !44
  }
  
  ; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
  declare void @llvm.dbg.declare(metadata, metadata, metadata) #1
  
  ; Function Attrs: noinline nounwind uwtable
  define internal i32 @matchhere(i8* %0, i8* %1) #0 !dbg !45 {
    %3 = alloca i32, align 4
    %4 = alloca i8*, align 8
    %5 = alloca i8*, align 8
    store i8* %0, i8** %4, align 8
    call void @llvm.dbg.declare(metadata i8** %4, metadata !46, metadata !DIExpression()), !dbg !47
    store i8* %1, i8** %5, align 8
    call void @llvm.dbg.declare(metadata i8** %5, metadata !48, metadata !DIExpression()), !dbg !49
    %6 = load i8*, i8** %4, align 8, !dbg !50
    %7 = bitcast i8* %6 to i8*, !dbg !50
    %8 = load i8, i8* %7, align 1, !dbg !50
    %9 = sext i8 %8 to i32, !dbg !50
    %10 = icmp eq i32 %9, 0, !dbg !52
    br i1 %10, label %11, label %12, !dbg !53
  
  11:                                               ; preds = %2
    store i32 0, i32* %3, align 4, !dbg !54
    br label %72, !dbg !54
  
  12:                                               ; preds = %2
    %13 = load i8*, i8** %4, align 8, !dbg !55
    %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !55
    %15 = load i8, i8* %14, align 1, !dbg !55
    %16 = sext i8 %15 to i32, !dbg !55
    %17 = icmp eq i32 %16, 42, !dbg !57
    br i1 %17, label %18, label %27, !dbg !58
  
  18:                                               ; preds = %12
    %19 = load i8*, i8** %4, align 8, !dbg !59
    %20 = bitcast i8* %19 to i8*, !dbg !59
    %21 = load i8, i8* %20, align 1, !dbg !59
    %22 = sext i8 %21 to i32, !dbg !59
    %23 = load i8*, i8** %4, align 8, !dbg !60
    %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !61
    %25 = load i8*, i8** %5, align 8, !dbg !62
    %26 = call i32 @matchstar(i32 %22, i8* %24, i8* %25), !dbg !63
    store i32 %26, i32* %3, align 4, !dbg !64
    br label %72, !dbg !64
  
  27:                                               ; preds = %12
    %28 = load i8*, i8** %4, align 8, !dbg !65
    %29 = bitcast i8* %28 to i8*, !dbg !65
    %30 = load i8, i8* %29, align 1, !dbg !65
    %31 = sext i8 %30 to i32, !dbg !65
    %32 = icmp eq i32 %31, 36, !dbg !67
    br i1 %32, label %33, label %45, !dbg !68
  
  33:                                               ; preds = %27
    %34 = load i8*, i8** %4, align 8, !dbg !69
    %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !69
    %36 = load i8, i8* %35, align 1, !dbg !69
    %37 = sext i8 %36 to i32, !dbg !69
    %38 = icmp eq i32 %37, 0, !dbg !70
    br i1 %38, label %39, label %45, !dbg !71
  
  39:                                               ; preds = %33
    %40 = load i8*, i8** %5, align 8, !dbg !72
    %41 = load i8, i8* %40, align 1, !dbg !73
    %42 = sext i8 %41 to i32, !dbg !73
    %43 = icmp eq i32 %42, 0, !dbg !74
    %44 = zext i1 %43 to i32, !dbg !74
    store i32 %44, i32* %3, align 4, !dbg !75
    br label %72, !dbg !75
  
  45:                                               ; preds = %33, %27
    %46 = load i8*, i8** %5, align 8, !dbg !76
    %47 = load i8, i8* %46, align 1, !dbg !78
    %48 = sext i8 %47 to i32, !dbg !78
    %49 = icmp ne i32 %48, 0, !dbg !79
    br i1 %49, label %50, label %71, !dbg !80
  
  50:                                               ; preds = %45
    %51 = load i8*, i8** %4, align 8, !dbg !81
    %52 = bitcast i8* %51 to i8*, !dbg !81
    %53 = load i8, i8* %52, align 1, !dbg !81
    %54 = sext i8 %53 to i32, !dbg !81
    %55 = icmp eq i32 %54, 46, !dbg !82
    br i1 %55, label %65, label %56, !dbg !83
  
  56:                                               ; preds = %50
    %57 = load i8*, i8** %4, align 8, !dbg !84
    %58 = bitcast i8* %57 to i8*, !dbg !84
    %59 = load i8, i8* %58, align 1, !dbg !84
    %60 = sext i8 %59 to i32, !dbg !84
    %61 = load i8*, i8** %5, align 8, !dbg !85
    %62 = load i8, i8* %61, align 1, !dbg !86
    %63 = sext i8 %62 to i32, !dbg !86
    %64 = icmp eq i32 %60, %63, !dbg !87
    br i1 %64, label %65, label %71, !dbg !88
  
  65:                                               ; preds = %56, %50
    %66 = load i8*, i8** %4, align 8, !dbg !89
    %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !90
    %68 = load i8*, i8** %5, align 8, !dbg !91
    %69 = getelementptr inbounds i8, i8* %68, i64 1, !dbg !92
    %70 = call i32 @matchhere(i8* %67, i8* %69), !dbg !93
    store i32 %70, i32* %3, align 4, !dbg !94
    br label %72, !dbg !94
  
  71:                                               ; preds = %56, %45
    store i32 0, i32* %3, align 4, !dbg !95
    br label %72, !dbg !95
  
  72:                                               ; preds = %71, %65, %39, %18, %11
    %73 = load i32, i32* %3, align 4, !dbg !96
    ret i32 %73, !dbg !96
  }
  
  ; Function Attrs: noinline nounwind uwtable
  define dso_local i32 @main() #0 !dbg !97 {
    %1 = alloca i32, align 4
    %2 = alloca [7 x i8], align 1
    store i32 0, i32* %1, align 4
    call void @llvm.dbg.declare(metadata [7 x i8]* %2, metadata !100, metadata !DIExpression()), !dbg !104
    %3 = bitcast [7 x i8]* %2 to i8*, !dbg !105
    call void @klee_make_symbolic(i8* %3, i64 7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !106
    %4 = bitcast [7 x i8]* %2 to i8*, !dbg !107
    %5 = call i32 @match(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
    ret i32 0, !dbg !109
  }
  
  declare dso_local void @klee_make_symbolic(i8*, i64, i8*) #2
  
  ; Function Attrs: noinline nounwind uwtable
  define internal i32 @matchstar(i32 %0, i8* %1, i8* %2) #0 !dbg !110 {
    %4 = alloca i32, align 4
    %5 = alloca i32, align 4
    %6 = alloca i8*, align 8
    %7 = alloca i8*, align 8
    store i32 %0, i32* %5, align 4
    call void @llvm.dbg.declare(metadata i32* %5, metadata !113, metadata !DIExpression()), !dbg !114
    store i8* %1, i8** %6, align 8
    call void @llvm.dbg.declare(metadata i8** %6, metadata !115, metadata !DIExpression()), !dbg !116
    store i8* %2, i8** %7, align 8
    call void @llvm.dbg.declare(metadata i8** %7, metadata !117, metadata !DIExpression()), !dbg !118
    br label %8, !dbg !119
  
  8:                                                ; preds = %29, %3
    %9 = load i8*, i8** %6, align 8, !dbg !120
    %10 = load i8*, i8** %7, align 8, !dbg !123
    %11 = call i32 @matchhere(i8* %9, i8* %10), !dbg !124
    %12 = icmp ne i32 %11, 0, !dbg !124
    br i1 %12, label %13, label %14, !dbg !125
  
  13:                                               ; preds = %8
    store i32 1, i32* %4, align 4, !dbg !126
    br label %32, !dbg !126
  
  14:                                               ; preds = %8
    %15 = load i8*, i8** %7, align 8, !dbg !127
    %16 = load i8, i8* %15, align 1, !dbg !128
    %17 = sext i8 %16 to i32, !dbg !128
    %18 = icmp ne i32 %17, 0, !dbg !129
    br i1 %18, label %19, label %29, !dbg !130
  
  19:                                               ; preds = %14
    %20 = load i8*, i8** %7, align 8, !dbg !131
    %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !131
    store i8* %21, i8** %7, align 8, !dbg !131
    %22 = load i8, i8* %20, align 1, !dbg !132
    %23 = sext i8 %22 to i32, !dbg !132
    %24 = load i32, i32* %5, align 4, !dbg !133
    %25 = icmp eq i32 %23, %24, !dbg !134
    br i1 %25, label %29, label %26, !dbg !135
  
  26:                                               ; preds = %19
    %27 = load i32, i32* %5, align 4, !dbg !136
    %28 = icmp eq i32 %27, 46, !dbg !137
    br label %29, !dbg !135
  
  29:                                               ; preds = %19, %26, %14
    %30 = phi i1 [ false, %14 ], [ true, %19 ], [ %28, %26 ], !dbg !138
    br i1 %30, label %8, label %31, !dbg !139, !llvm.loop !140
  
  31:                                               ; preds = %29
    store i32 0, i32* %4, align 4, !dbg !142
    br label %32, !dbg !142
  
  32:                                               ; preds = %31, %13
    %33 = load i32, i32* %4, align 4, !dbg !143
    ret i32 %33, !dbg !143
  }
  
  attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
  attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
  
  !llvm.dbg.cu = !{!0}
  !llvm.module.flags = !{!3, !4, !5, !6, !7}
  !llvm.ident = !{!8}
  
  !0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 13.0.1-++20220120110924+75e33f71c2da-1~exp1~20220120231001.58", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
  !1 = !DIFile(filename: "Regexp.c", directory: "/home/carlosterberg/klee/examples/regexp")
  !2 = !{}
  !3 = !{i32 7, !"Dwarf Version", i32 4}
  !4 = !{i32 2, !"Debug Info Version", i32 3}
  !5 = !{i32 1, !"wchar_size", i32 4}
  !6 = !{i32 7, !"uwtable", i32 1}
  !7 = !{i32 7, !"frame-pointer", i32 2}
  !8 = !{!"Ubuntu clang version 13.0.1-++20220120110924+75e33f71c2da-1~exp1~20220120231001.58"}
  !9 = distinct !DISubprogram(name: "match", scope: !1, file: !1, line: 34, type: !10, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
  !10 = !DISubroutineType(types: !11)
  !11 = !{!12, !13, !13}
  !12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
  !13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
  !14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
  !15 = !DILocalVariable(name: "re", arg: 1, scope: !9, file: !1, line: 34, type: !13)
  !16 = !DILocation(line: 34, column: 17, scope: !9)
  !17 = !DILocalVariable(name: "text", arg: 2, scope: !9, file: !1, line: 34, type: !13)
  !18 = !DILocation(line: 34, column: 27, scope: !9)
  !19 = !DILocation(line: 35, column: 7, scope: !20)
  !20 = distinct !DILexicalBlock(scope: !9, file: !1, line: 35, column: 7)
  !21 = !DILocation(line: 35, column: 13, scope: !20)
  !22 = !DILocation(line: 35, column: 7, scope: !9)
  !23 = !DILocation(line: 36, column: 22, scope: !20)
  !24 = !DILocation(line: 36, column: 24, scope: !20)
  !25 = !DILocation(line: 36, column: 28, scope: !20)
  !26 = !DILocation(line: 36, column: 12, scope: !20)
  !27 = !DILocation(line: 36, column: 5, scope: !20)
  !28 = !DILocation(line: 37, column: 3, scope: !9)
  !29 = !DILocation(line: 38, column: 19, scope: !30)
  !30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 38, column: 9)
  !31 = distinct !DILexicalBlock(scope: !9, file: !1, line: 37, column: 6)
  !32 = !DILocation(line: 38, column: 23, scope: !30)
  !33 = !DILocation(line: 38, column: 9, scope: !30)
  !34 = !DILocation(line: 38, column: 9, scope: !31)
  !35 = !DILocation(line: 39, column: 7, scope: !30)
  !36 = !DILocation(line: 40, column: 17, scope: !9)
  !37 = !DILocation(line: 40, column: 12, scope: !9)
  !38 = !DILocation(line: 40, column: 20, scope: !9)
  !39 = !DILocation(line: 40, column: 3, scope: !31)
  !40 = distinct !{!40, !28, !41, !42}
  !41 = !DILocation(line: 40, column: 27, scope: !9)
  !42 = !{!"llvm.loop.mustprogress"}
  !43 = !DILocation(line: 41, column: 3, scope: !9)
  !44 = !DILocation(line: 42, column: 1, scope: !9)
  !45 = distinct !DISubprogram(name: "matchhere", scope: !1, file: !1, line: 22, type: !10, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
  !46 = !DILocalVariable(name: "re", arg: 1, scope: !45, file: !1, line: 22, type: !13)
  !47 = !DILocation(line: 22, column: 28, scope: !45)
  !48 = !DILocalVariable(name: "text", arg: 2, scope: !45, file: !1, line: 22, type: !13)
  !49 = !DILocation(line: 22, column: 38, scope: !45)
  !50 = !DILocation(line: 23, column: 7, scope: !51)
  !51 = distinct !DILexicalBlock(scope: !45, file: !1, line: 23, column: 7)
  !52 = !DILocation(line: 23, column: 13, scope: !51)
  !53 = !DILocation(line: 23, column: 7, scope: !45)
  !54 = !DILocation(line: 24, column: 6, scope: !51)
  !55 = !DILocation(line: 25, column: 7, scope: !56)
  !56 = distinct !DILexicalBlock(scope: !45, file: !1, line: 25, column: 7)
  !57 = !DILocation(line: 25, column: 13, scope: !56)
  !58 = !DILocation(line: 25, column: 7, scope: !45)
  !59 = !DILocation(line: 26, column: 22, scope: !56)
  !60 = !DILocation(line: 26, column: 29, scope: !56)
  !61 = !DILocation(line: 26, column: 31, scope: !56)
  !62 = !DILocation(line: 26, column: 35, scope: !56)
  !63 = !DILocation(line: 26, column: 12, scope: !56)
  !64 = !DILocation(line: 26, column: 5, scope: !56)
  !65 = !DILocation(line: 27, column: 7, scope: !66)
  !66 = distinct !DILexicalBlock(scope: !45, file: !1, line: 27, column: 7)
  !67 = !DILocation(line: 27, column: 13, scope: !66)
  !68 = !DILocation(line: 27, column: 20, scope: !66)
  !69 = !DILocation(line: 27, column: 23, scope: !66)
  !70 = !DILocation(line: 27, column: 28, scope: !66)
  !71 = !DILocation(line: 27, column: 7, scope: !45)
  !72 = !DILocation(line: 28, column: 13, scope: !66)
  !73 = !DILocation(line: 28, column: 12, scope: !66)
  !74 = !DILocation(line: 28, column: 18, scope: !66)
  !75 = !DILocation(line: 28, column: 5, scope: !66)
  !76 = !DILocation(line: 29, column: 8, scope: !77)
  !77 = distinct !DILexicalBlock(scope: !45, file: !1, line: 29, column: 7)
  !78 = !DILocation(line: 29, column: 7, scope: !77)
  !79 = !DILocation(line: 29, column: 12, scope: !77)
  !80 = !DILocation(line: 29, column: 19, scope: !77)
  !81 = !DILocation(line: 29, column: 23, scope: !77)
  !82 = !DILocation(line: 29, column: 28, scope: !77)
  !83 = !DILocation(line: 29, column: 34, scope: !77)
  !84 = !DILocation(line: 29, column: 37, scope: !77)
  !85 = !DILocation(line: 29, column: 45, scope: !77)
  !86 = !DILocation(line: 29, column: 44, scope: !77)
  !87 = !DILocation(line: 29, column: 42, scope: !77)
  !88 = !DILocation(line: 29, column: 7, scope: !45)
  !89 = !DILocation(line: 30, column: 22, scope: !77)
  !90 = !DILocation(line: 30, column: 24, scope: !77)
  !91 = !DILocation(line: 30, column: 28, scope: !77)
  !92 = !DILocation(line: 30, column: 32, scope: !77)
  !93 = !DILocation(line: 30, column: 12, scope: !77)
  !94 = !DILocation(line: 30, column: 5, scope: !77)
  !95 = !DILocation(line: 31, column: 3, scope: !45)
  !96 = !DILocation(line: 32, column: 1, scope: !45)
  !97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !98, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
  !98 = !DISubroutineType(types: !99)
  !99 = !{!12}
  !100 = !DILocalVariable(name: "re", scope: !97, file: !1, line: 53, type: !101)
  !101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 56, elements: !102)
  !102 = !{!103}
  !103 = !DISubrange(count: 7)
  !104 = !DILocation(line: 53, column: 8, scope: !97)
  !105 = !DILocation(line: 56, column: 22, scope: !97)
  !106 = !DILocation(line: 56, column: 3, scope: !97)
  !107 = !DILocation(line: 59, column: 9, scope: !97)
  !108 = !DILocation(line: 59, column: 3, scope: !97)
  !109 = !DILocation(line: 61, column: 3, scope: !97)
  !110 = distinct !DISubprogram(name: "matchstar", scope: !1, file: !1, line: 14, type: !111, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
  !111 = !DISubroutineType(types: !112)
  !112 = !{!12, !12, !13, !13}
  !113 = !DILocalVariable(name: "c", arg: 1, scope: !110, file: !1, line: 14, type: !12)
  !114 = !DILocation(line: 14, column: 26, scope: !110)
  !115 = !DILocalVariable(name: "re", arg: 2, scope: !110, file: !1, line: 14, type: !13)
  !116 = !DILocation(line: 14, column: 35, scope: !110)
  !117 = !DILocalVariable(name: "text", arg: 3, scope: !110, file: !1, line: 14, type: !13)
  !118 = !DILocation(line: 14, column: 45, scope: !110)
  !119 = !DILocation(line: 15, column: 3, scope: !110)
  !120 = !DILocation(line: 16, column: 19, scope: !121)
  !121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 16, column: 9)
  !122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 15, column: 6)
  !123 = !DILocation(line: 16, column: 23, scope: !121)
  !124 = !DILocation(line: 16, column: 9, scope: !121)
  !125 = !DILocation(line: 16, column: 9, scope: !122)
  !126 = !DILocation(line: 17, column: 7, scope: !121)
  !127 = !DILocation(line: 18, column: 13, scope: !110)
  !128 = !DILocation(line: 18, column: 12, scope: !110)
  !129 = !DILocation(line: 18, column: 18, scope: !110)
  !130 = !DILocation(line: 18, column: 26, scope: !110)
  !131 = !DILocation(line: 18, column: 35, scope: !110)
  !132 = !DILocation(line: 18, column: 30, scope: !110)
  !133 = !DILocation(line: 18, column: 41, scope: !110)
  !134 = !DILocation(line: 18, column: 38, scope: !110)
  !135 = !DILocation(line: 18, column: 43, scope: !110)
  !136 = !DILocation(line: 18, column: 46, scope: !110)
  !137 = !DILocation(line: 18, column: 47, scope: !110)
  !138 = !DILocation(line: 0, scope: !110)
  !139 = !DILocation(line: 18, column: 3, scope: !122)
  !140 = distinct !{!140, !119, !141, !42}
  !141 = !DILocation(line: 18, column: 54, scope: !110)
  !142 = !DILocation(line: 19, column: 3, scope: !110)
  !143 = !DILocation(line: 20, column: 1, scope: !110)

...
---
name:            match
alignment:       16
exposesReturnsTwice: false
legalized:       false
regBankSelected: false
selected:        false
failedISel:      false
tracksRegLiveness: true
hasWinCFI:       false
registers:       []
liveins:
  - { reg: '$rdi', virtual-reg: '' }
  - { reg: '$rsi', virtual-reg: '' }
frameInfo:
  isFrameAddressTaken: false
  isReturnAddressTaken: false
  hasStackMap:     false
  hasPatchPoint:   false
  stackSize:       0
  offsetAdjustment: 0
  maxAlignment:    8
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
  - { id: 1, name: '', type: default, offset: 0, size: 8, alignment: 8, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!15', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!16' }
  - { id: 2, name: '', type: default, offset: 0, size: 8, alignment: 8, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!17', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!18' }
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.2):
    successors: %bb.1(0x40000000), %bb.2(0x40000000)
    liveins: $rdi, $rsi
  
    MOV64mr %stack.1, 1, $noreg, 0, $noreg, renamable $rdi :: (store (s64) into %ir.4)
    MOV64mr %stack.2, 1, $noreg, 0, $noreg, killed renamable $rsi :: (store (s64) into %ir.5)
    CMP8mi killed renamable $rdi, 1, $noreg, 0, $noreg, 94, implicit-def $eflags, debug-location !21 :: (load (s8) from %ir.7)
    JCC_1 %bb.2, 5, implicit killed $eflags, debug-location !22
    JMP_1 %bb.1, debug-location !22
  
  bb.1 (%ir-block.11):
    successors: %bb.7(0x80000000)
  
    renamable $rdi = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !23 :: (dereferenceable load (s64) from %ir.4)
    renamable $rdi = nuw ADD64ri8 killed renamable $rdi, 1, implicit-def dead $eflags, debug-location !24
    renamable $rsi = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !25 :: (dereferenceable load (s64) from %ir.5)
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !26
    CALL64pcrel32 @matchhere, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $eax, debug-location !26
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !26
    MOV32mr %stack.0, 1, $noreg, 0, $noreg, killed renamable $eax, debug-location !27 :: (store (s32) into %ir.3)
    JMP_1 %bb.7, debug-location !27
  
  bb.2 (%ir-block.16):
    successors: %bb.3(0x80000000)
  
  
  bb.3 (%ir-block.17):
    successors: %bb.4(0x04000000), %bb.5(0x7c000000)
  
    renamable $rdi = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !29 :: (dereferenceable load (s64) from %ir.4)
    renamable $rsi = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !32 :: (dereferenceable load (s64) from %ir.5)
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !33
    CALL64pcrel32 @matchhere, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $eax, debug-location !33
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !33
    TEST32rr killed renamable $eax, renamable $eax, implicit-def $eflags, debug-location !33
    JCC_1 %bb.5, 4, implicit killed $eflags, debug-location !34
    JMP_1 %bb.4, debug-location !34
  
  bb.4 (%ir-block.22):
    successors: %bb.7(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 1, debug-location !35 :: (store (s32) into %ir.3)
    JMP_1 %bb.7, debug-location !35
  
  bb.5 (%ir-block.23):
    successors: %bb.3(0x7c000000), %bb.6(0x04000000)
  
    renamable $rax = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !36 :: (dereferenceable load (s64) from %ir.5)
    renamable $rcx = LEA64r renamable $rax, 1, $noreg, 1, $noreg, debug-location !36
    MOV64mr %stack.2, 1, $noreg, 0, $noreg, killed renamable $rcx, debug-location !36 :: (store (s64) into %ir.5)
    CMP8mi killed renamable $rax, 1, $noreg, 0, $noreg, 0, implicit-def $eflags, debug-location !38 :: (load (s8) from %ir.24)
    JCC_1 %bb.3, 5, implicit killed $eflags, debug-location !39
    JMP_1 %bb.6, debug-location !39
  
  bb.6 (%ir-block.29):
    successors: %bb.7(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0, debug-location !43 :: (store (s32) into %ir.3)
  
  bb.7 (%ir-block.30):
    renamable $eax = MOV32rm %stack.0, 1, $noreg, 0, $noreg, debug-location !44 :: (dereferenceable load (s32) from %ir.3)
    RET 0, $eax, debug-location !44

...
---
name:            matchhere
alignment:       16
exposesReturnsTwice: false
legalized:       false
regBankSelected: false
selected:        false
failedISel:      false
tracksRegLiveness: true
hasWinCFI:       false
registers:       []
liveins:
  - { reg: '$rdi', virtual-reg: '' }
  - { reg: '$rsi', virtual-reg: '' }
frameInfo:
  isFrameAddressTaken: false
  isReturnAddressTaken: false
  hasStackMap:     false
  hasPatchPoint:   false
  stackSize:       0
  offsetAdjustment: 0
  maxAlignment:    8
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
  - { id: 1, name: '', type: default, offset: 0, size: 8, alignment: 8, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!46', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!47' }
  - { id: 2, name: '', type: default, offset: 0, size: 8, alignment: 8, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!48', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!49' }
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.2):
    successors: %bb.1(0x30000000), %bb.2(0x50000000)
    liveins: $rdi, $rsi
  
    MOV64mr %stack.1, 1, $noreg, 0, $noreg, renamable $rdi :: (store (s64) into %ir.4)
    MOV64mr %stack.2, 1, $noreg, 0, $noreg, killed renamable $rsi :: (store (s64) into %ir.5)
    CMP8mi killed renamable $rdi, 1, $noreg, 0, $noreg, 0, implicit-def $eflags, debug-location !52 :: (load (s8) from %ir.7)
    JCC_1 %bb.2, 5, implicit killed $eflags, debug-location !53
    JMP_1 %bb.1, debug-location !53
  
  bb.1 (%ir-block.11):
    successors: %bb.12(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0, debug-location !54 :: (store (s32) into %ir.3)
    JMP_1 %bb.12, debug-location !54
  
  bb.2 (%ir-block.12):
    successors: %bb.3(0x40000000), %bb.4(0x40000000)
  
    renamable $rax = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !55 :: (dereferenceable load (s64) from %ir.4)
    CMP8mi killed renamable $rax, 1, $noreg, 1, $noreg, 42, implicit-def $eflags, debug-location !57 :: (load (s8) from %ir.14)
    JCC_1 %bb.4, 5, implicit killed $eflags, debug-location !58
    JMP_1 %bb.3, debug-location !58
  
  bb.3 (%ir-block.18):
    successors: %bb.12(0x80000000)
  
    renamable $rsi = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !59 :: (dereferenceable load (s64) from %ir.4)
    renamable $edi = MOVSX32rm8 renamable $rsi, 1, $noreg, 0, $noreg, debug-location !59 :: (load (s8) from %ir.20)
    renamable $rsi = nuw ADD64ri8 killed renamable $rsi, 2, implicit-def dead $eflags, debug-location !61
    renamable $rdx = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !62 :: (dereferenceable load (s64) from %ir.5)
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !63
    CALL64pcrel32 @matchstar, csr_64, implicit $rsp, implicit $ssp, implicit $edi, implicit $rsi, implicit $rdx, implicit-def $rsp, implicit-def $ssp, implicit-def $eax, debug-location !63
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !63
    MOV32mr %stack.0, 1, $noreg, 0, $noreg, killed renamable $eax, debug-location !64 :: (store (s32) into %ir.3)
    JMP_1 %bb.12, debug-location !64
  
  bb.4 (%ir-block.27):
    successors: %bb.5(0x40000000), %bb.7(0x40000000)
  
    renamable $rax = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !65 :: (dereferenceable load (s64) from %ir.4)
    CMP8mi killed renamable $rax, 1, $noreg, 0, $noreg, 36, implicit-def $eflags, debug-location !67 :: (load (s8) from %ir.29)
    JCC_1 %bb.7, 5, implicit killed $eflags, debug-location !68
    JMP_1 %bb.5, debug-location !68
  
  bb.5 (%ir-block.33):
    successors: %bb.6(0x30000000), %bb.7(0x50000000)
  
    renamable $rax = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !69 :: (dereferenceable load (s64) from %ir.4)
    CMP8mi killed renamable $rax, 1, $noreg, 1, $noreg, 0, implicit-def $eflags, debug-location !70 :: (load (s8) from %ir.35)
    JCC_1 %bb.7, 5, implicit killed $eflags, debug-location !71
    JMP_1 %bb.6, debug-location !71
  
  bb.6 (%ir-block.39):
    successors: %bb.12(0x80000000)
  
    renamable $rax = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !72 :: (dereferenceable load (s64) from %ir.5)
    renamable $ecx = MOV32r0 implicit-def dead $eflags, debug-location !74
    CMP8mi killed renamable $rax, 1, $noreg, 0, $noreg, 0, implicit-def $eflags, debug-location !74 :: (load (s8) from %ir.40)
    renamable $cl = SETCCr 4, implicit killed $eflags, implicit killed $ecx, implicit-def $ecx, debug-location !74
    MOV32mr %stack.0, 1, $noreg, 0, $noreg, killed renamable $ecx, debug-location !75 :: (store (s32) into %ir.3)
    JMP_1 %bb.12, debug-location !75
  
  bb.7 (%ir-block.45):
    successors: %bb.8(0x50000000), %bb.11(0x30000000)
  
    renamable $rax = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !76 :: (dereferenceable load (s64) from %ir.5)
    CMP8mi killed renamable $rax, 1, $noreg, 0, $noreg, 0, implicit-def $eflags, debug-location !79 :: (load (s8) from %ir.46)
    JCC_1 %bb.11, 4, implicit killed $eflags, debug-location !80
    JMP_1 %bb.8, debug-location !80
  
  bb.8 (%ir-block.50):
    successors: %bb.10(0x40000000), %bb.9(0x40000000)
  
    renamable $rax = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !81 :: (dereferenceable load (s64) from %ir.4)
    CMP8mi killed renamable $rax, 1, $noreg, 0, $noreg, 46, implicit-def $eflags, debug-location !82 :: (load (s8) from %ir.52)
    JCC_1 %bb.10, 4, implicit killed $eflags, debug-location !83
    JMP_1 %bb.9, debug-location !83
  
  bb.9 (%ir-block.56):
    successors: %bb.10(0x40000000), %bb.11(0x40000000)
  
    renamable $rax = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !84 :: (dereferenceable load (s64) from %ir.4)
    renamable $eax = MOVSX32rm8 killed renamable $rax, 1, $noreg, 0, $noreg, debug-location !84 :: (load (s8) from %ir.58)
    renamable $rcx = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !85 :: (dereferenceable load (s64) from %ir.5)
    renamable $ecx = MOVSX32rm8 killed renamable $rcx, 1, $noreg, 0, $noreg, debug-location !86 :: (load (s8) from %ir.61)
    CMP32rr killed renamable $eax, killed renamable $ecx, implicit-def $eflags, debug-location !87
    JCC_1 %bb.11, 5, implicit killed $eflags, debug-location !88
    JMP_1 %bb.10, debug-location !88
  
  bb.10 (%ir-block.65):
    successors: %bb.12(0x80000000)
  
    renamable $rdi = MOV64rm %stack.1, 1, $noreg, 0, $noreg, debug-location !89 :: (dereferenceable load (s64) from %ir.4)
    renamable $rdi = nuw ADD64ri8 killed renamable $rdi, 1, implicit-def dead $eflags, debug-location !90
    renamable $rsi = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !91 :: (dereferenceable load (s64) from %ir.5)
    renamable $rsi = nuw ADD64ri8 killed renamable $rsi, 1, implicit-def dead $eflags, debug-location !92
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !93
    CALL64pcrel32 @matchhere, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $eax, debug-location !93
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !93
    MOV32mr %stack.0, 1, $noreg, 0, $noreg, killed renamable $eax, debug-location !94 :: (store (s32) into %ir.3)
    JMP_1 %bb.12, debug-location !94
  
  bb.11 (%ir-block.71):
    successors: %bb.12(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0, debug-location !95 :: (store (s32) into %ir.3)
  
  bb.12 (%ir-block.72):
    renamable $eax = MOV32rm %stack.0, 1, $noreg, 0, $noreg, debug-location !96 :: (dereferenceable load (s32) from %ir.3)
    RET 0, $eax, debug-location !96

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
  - { id: 1, name: '', type: default, offset: 0, size: 7, alignment: 1, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!100', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!104' }
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.0):
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0 :: (store (s32) into %ir.1)
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !106
    renamable $rbx = LEA64r %stack.1, 1, $noreg, 0, $noreg
    $rsi = MOV32ri64 7, debug-location !106
    $rdx = MOV32ri64 @.str, debug-location !106
    $rdi = COPY renamable $rbx, debug-location !106
    CALL64pcrel32 @klee_make_symbolic, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit killed $rdx, implicit-def $rsp, implicit-def $ssp, debug-location !106
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !106
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !108
    $rsi = MOV32ri64 @.str.1, debug-location !108
    $rdi = COPY killed renamable $rbx, debug-location !108
    CALL64pcrel32 @match, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit killed $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def dead $eax, debug-location !108
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !108
    $eax = MOV32r0 implicit-def dead $eflags, debug-location !109
    RET 0, killed $eax, debug-location !109

...
---
name:            matchstar
alignment:       16
exposesReturnsTwice: false
legalized:       false
regBankSelected: false
selected:        false
failedISel:      false
tracksRegLiveness: true
hasWinCFI:       false
registers:       []
liveins:
  - { reg: '$edi', virtual-reg: '' }
  - { reg: '$rsi', virtual-reg: '' }
  - { reg: '$rdx', virtual-reg: '' }
frameInfo:
  isFrameAddressTaken: false
  isReturnAddressTaken: false
  hasStackMap:     false
  hasPatchPoint:   false
  stackSize:       0
  offsetAdjustment: 0
  maxAlignment:    8
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
      debug-info-variable: '!113', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!114' }
  - { id: 2, name: '', type: default, offset: 0, size: 8, alignment: 8, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!115', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!116' }
  - { id: 3, name: '', type: default, offset: 0, size: 8, alignment: 8, 
      stack-id: default, callee-saved-register: '', callee-saved-restored: true, 
      debug-info-variable: '!117', debug-info-expression: '!DIExpression()', 
      debug-info-location: '!118' }
callSites:       []
debugValueSubstitutions: []
constants:       []
machineFunctionInfo: {}
body:             |
  bb.0 (%ir-block.3):
    successors: %bb.1(0x80000000)
    liveins: $edi, $rdx, $rsi
  
    MOV32mr %stack.1, 1, $noreg, 0, $noreg, killed renamable $edi :: (store (s32) into %ir.5)
    MOV64mr %stack.2, 1, $noreg, 0, $noreg, killed renamable $rsi :: (store (s64) into %ir.6)
    MOV64mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $rdx :: (store (s64) into %ir.7)
  
  bb.1 (%ir-block.8):
    successors: %bb.2(0x04000000), %bb.3(0x7c000000)
  
    renamable $rdi = MOV64rm %stack.2, 1, $noreg, 0, $noreg, debug-location !120 :: (dereferenceable load (s64) from %ir.6)
    renamable $rsi = MOV64rm %stack.3, 1, $noreg, 0, $noreg, debug-location !123 :: (dereferenceable load (s64) from %ir.7)
    ADJCALLSTACKDOWN64 0, 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !124
    CALL64pcrel32 @matchhere, csr_64, implicit $rsp, implicit $ssp, implicit $rdi, implicit $rsi, implicit-def $rsp, implicit-def $ssp, implicit-def $eax, debug-location !124
    ADJCALLSTACKUP64 0, 0, implicit-def dead $rsp, implicit-def dead $eflags, implicit-def dead $ssp, implicit $rsp, implicit $ssp, debug-location !124
    TEST32rr killed renamable $eax, renamable $eax, implicit-def $eflags, debug-location !124
    JCC_1 %bb.3, 4, implicit killed $eflags, debug-location !125
    JMP_1 %bb.2, debug-location !125
  
  bb.2 (%ir-block.13):
    successors: %bb.9(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 1, debug-location !126 :: (store (s32) into %ir.4)
    JMP_1 %bb.9, debug-location !126
  
  bb.3 (%ir-block.14):
    successors: %bb.5(0x50000000), %bb.4(0x30000000)
  
    renamable $rax = MOV64rm %stack.3, 1, $noreg, 0, $noreg, debug-location !127 :: (dereferenceable load (s64) from %ir.7)
    CMP8mi killed renamable $rax, 1, $noreg, 0, $noreg, 0, implicit-def $eflags, debug-location !129 :: (load (s8) from %ir.15)
    JCC_1 %bb.5, 5, implicit killed $eflags, debug-location !130
  
  bb.4:
    successors: %bb.7(0x80000000)
  
    renamable $eax = MOV32r0 implicit-def dead $eflags
    JMP_1 %bb.7
  
  bb.5 (%ir-block.19):
    successors: %bb.7(0x40000000), %bb.6(0x40000000)
  
    renamable $rax = MOV64rm %stack.3, 1, $noreg, 0, $noreg, debug-location !131 :: (dereferenceable load (s64) from %ir.7)
    renamable $rcx = LEA64r renamable $rax, 1, $noreg, 1, $noreg, debug-location !131
    MOV64mr %stack.3, 1, $noreg, 0, $noreg, killed renamable $rcx, debug-location !131 :: (store (s64) into %ir.7)
    renamable $ecx = MOVSX32rm8 killed renamable $rax, 1, $noreg, 0, $noreg, debug-location !132 :: (load (s8) from %ir.20)
    renamable $al = MOV8ri 1, implicit-def $eax
    CMP32rm killed renamable $ecx, %stack.1, 1, $noreg, 0, $noreg, implicit-def $eflags, debug-location !134 :: (dereferenceable load (s32) from %ir.5)
    JCC_1 %bb.7, 4, implicit killed $eflags, debug-location !135
    JMP_1 %bb.6, debug-location !135
  
  bb.6 (%ir-block.26):
    successors: %bb.7(0x80000000)
  
    CMP32mi8 %stack.1, 1, $noreg, 0, $noreg, 46, implicit-def $eflags, debug-location !137 :: (dereferenceable load (s32) from %ir.5)
    renamable $al = SETCCr 4, implicit killed $eflags, implicit-def $eax, debug-location !137
  
  bb.7 (%ir-block.29):
    successors: %bb.1(0x7c000000), %bb.8(0x04000000)
    liveins: $eax
  
    TEST8rr renamable $al, renamable $al, implicit-def $eflags, implicit killed $eax, debug-location !139
    JCC_1 %bb.1, 5, implicit killed $eflags, debug-location !139
    JMP_1 %bb.8, debug-location !139
  
  bb.8 (%ir-block.31):
    successors: %bb.9(0x80000000)
  
    MOV32mi %stack.0, 1, $noreg, 0, $noreg, 0, debug-location !142 :: (store (s32) into %ir.4)
  
  bb.9 (%ir-block.32):
    renamable $eax = MOV32rm %stack.0, 1, $noreg, 0, $noreg, debug-location !143 :: (dereferenceable load (s32) from %ir.4)
    RET 0, $eax, debug-location !143

...
