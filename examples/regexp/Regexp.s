	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 13	@ Tag_CPU_arch
	.eabi_attribute	7, 77	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"Regexp.c"
	.globl	match                           @ -- Begin function match
	.p2align	1
	.type	match,%function
	.code	16                              @ @match
	.thumb_func
match:
.Lfunc_begin0:
	.file	1 "/home/isak/Documents/xj/klee-fork/klee/examples/regexp" "Regexp.c"
	.loc	1 34 0                          @ Regexp.c:34:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: match:re <- $r0
	@DEBUG_VALUE: match:text <- $r1
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r5, -12
	.cfi_offset r4, -16
	.setfp	r7, sp, #8
	add	r7, sp, #8
	.cfi_def_cfa r7, 8
	mov	r4, r0
.Ltmp0:
	@DEBUG_VALUE: match:re <- $r4
	.loc	1 35 7 prologue_end             @ Regexp.c:35:7
	ldrb	r0, [r0]
	mov	r5, r1
.Ltmp1:
	@DEBUG_VALUE: match:text <- $r5
	@DEBUG_VALUE: match:text <- $r5
	.loc	1 35 7 is_stmt 0                @ Regexp.c:35:7
	cmp	r0, #94
	bne	.LBB0_2
.Ltmp2:
@ %bb.1:
	@DEBUG_VALUE: match:text <- $r5
	@DEBUG_VALUE: match:re <- $r4
	.loc	1 36 24 is_stmt 1               @ Regexp.c:36:24
	adds	r0, r4, #1
	.loc	1 36 12 is_stmt 0               @ Regexp.c:36:12
	mov	r1, r5
	pop.w	{r4, r5, r7, lr}
.Ltmp3:
	@DEBUG_VALUE: match:text <- [DW_OP_LLVM_entry_value 1] $r1
	@DEBUG_VALUE: match:re <- [DW_OP_LLVM_entry_value 1] $r0
	b	matchhere
.Ltmp4:
	.p2align	2
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: match:text <- $r5
	@DEBUG_VALUE: match:re <- $r4
	@DEBUG_VALUE: match:text <- $r5
	.loc	1 38 9 is_stmt 1                @ Regexp.c:38:9
	mov	r0, r4
	mov	r1, r5
	bl	matchhere
.Ltmp5:
	.loc	1 38 9 is_stmt 0                @ Regexp.c:38:9
	cbnz	r0, .LBB0_5
.Ltmp6:
@ %bb.3:                                @   in Loop: Header=BB0_2 Depth=1
	@DEBUG_VALUE: match:text <- $r5
	@DEBUG_VALUE: match:re <- $r4
	.loc	1 40 12 is_stmt 1               @ Regexp.c:40:12
	ldrb	r0, [r5], #1
.Ltmp7:
	@DEBUG_VALUE: match:text <- $r5
	.loc	1 40 3 is_stmt 0                @ Regexp.c:40:3
	cmp	r0, #0
	bne	.LBB0_2
.Ltmp8:
@ %bb.4:
	@DEBUG_VALUE: match:text <- $r5
	@DEBUG_VALUE: match:re <- $r4
	.loc	1 0 3                           @ Regexp.c:0:3
	movs	r0, #0
	.loc	1 42 1 is_stmt 1                @ Regexp.c:42:1
	pop	{r4, r5, r7, pc}
.Ltmp9:
.LBB0_5:
	@DEBUG_VALUE: match:text <- $r5
	@DEBUG_VALUE: match:re <- $r4
	.loc	1 0 1 is_stmt 0                 @ Regexp.c:0:1
	movs	r0, #1
	.loc	1 42 1                          @ Regexp.c:42:1
	pop	{r4, r5, r7, pc}
.Ltmp10:
.Lfunc_end0:
	.size	match, .Lfunc_end0-match
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.p2align	1                               @ -- Begin function matchhere
	.type	matchhere,%function
	.code	16                              @ @matchhere
	.thumb_func
matchhere:
.Lfunc_begin1:
	.loc	1 22 0 is_stmt 1                @ Regexp.c:22:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	@DEBUG_VALUE: matchhere:re <- $r0
	@DEBUG_VALUE: matchhere:text <- $r1
	.save	{r4, r5, r6, r7, lr}
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r6, -12
	.cfi_offset r5, -16
	.cfi_offset r4, -20
	.setfp	r7, sp, #12
	add	r7, sp, #12
	.cfi_def_cfa r7, 8
	.save	{r11}
	str	r11, [sp, #-4]!
	.cfi_offset r11, -24
.Ltmp11:
	.loc	1 23 7 prologue_end             @ Regexp.c:23:7
	ldrb	r6, [r0]
.Ltmp12:
	@DEBUG_VALUE: matchhere:text <- $r1
	.loc	1 23 7 is_stmt 0                @ Regexp.c:23:7
	cbz	r6, .LBB1_7
.Ltmp13:
@ %bb.1:                                @ %.preheader4
	@DEBUG_VALUE: matchhere:text <- $r1
	@DEBUG_VALUE: matchhere:re <- $r0
	.loc	1 0 7                           @ Regexp.c:0:7
	mov	r4, r1
.Ltmp14:
	@DEBUG_VALUE: matchhere:text <- $r4
	@DEBUG_VALUE: matchhere:text <- $r4
	.loc	1 25 7 is_stmt 1                @ Regexp.c:25:7
	adds	r0, #1
.Ltmp15:
	@DEBUG_VALUE: matchhere:re <- [DW_OP_LLVM_entry_value 1] $r0
	.p2align	2
.LBB1_2:                                @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: matchhere:text <- $r4
	@DEBUG_VALUE: matchhere:re <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
	@DEBUG_VALUE: matchhere:text <- $r4
	.loc	1 25 7 is_stmt 0                @ Regexp.c:25:7
	ldrb	r1, [r0]
.Ltmp16:
	.loc	1 25 7                          @ Regexp.c:25:7
	cmp	r1, #42
	beq	.LBB1_9
.Ltmp17:
@ %bb.3:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: matchhere:text <- $r4
	.loc	1 0 0                           @ Regexp.c:0:0
	ldrb	r2, [r4]
.Ltmp18:
	.loc	1 27 20 is_stmt 1               @ Regexp.c:27:20
	cmp	r6, #36
	it	eq
	cmpeq	r1, #0
	beq	.LBB1_15
.Ltmp19:
@ %bb.4:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: matchhere:text <- $r4
	.loc	1 29 19                         @ Regexp.c:29:19
	cbz	r2, .LBB1_7
.Ltmp20:
@ %bb.5:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: matchhere:text <- $r4
	.loc	1 29 34 is_stmt 0               @ Regexp.c:29:34
	cmp	r6, #46
	it	ne
	cmpne	r6, r2
	bne	.LBB1_7
.Ltmp21:
@ %bb.6:                                @   in Loop: Header=BB1_2 Depth=1
	@DEBUG_VALUE: matchhere:text <- $r4
	.loc	1 30 32 is_stmt 1               @ Regexp.c:30:32
	adds	r4, #1
.Ltmp22:
	@DEBUG_VALUE: matchhere:text <- $r4
	@DEBUG_VALUE: matchhere:re <- [DW_OP_LLVM_arg 0, DW_OP_consts 1, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_minus, DW_OP_consts 1, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef
	.loc	1 23 7                          @ Regexp.c:23:7
	adds	r0, #1
	cmp	r1, #0
	mov	r6, r1
	bne	.LBB1_2
.Ltmp23:
.LBB1_7:
	.loc	1 0 7 is_stmt 0                 @ Regexp.c:0:7
	movs	r0, #0
.LBB1_8:
	.loc	1 32 1 is_stmt 1                @ Regexp.c:32:1
	ldr	r11, [sp], #4
	pop	{r4, r5, r6, r7, pc}
.LBB1_9:
.Ltmp24:
	@DEBUG_VALUE: matchhere:text <- $r4
	@DEBUG_VALUE: matchstar:c <- [DW_OP_LLVM_convert 8 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: matchstar:re <- [DW_OP_plus_uconst 2, DW_OP_stack_value] undef
	@DEBUG_VALUE: matchstar:text <- $r4
	.loc	1 0 1 is_stmt 0                 @ Regexp.c:0:1
	cmp	r6, #46
	add.w	r5, r0, #1
	bne	.LBB1_12
.Ltmp25:
@ %bb.10:
	@DEBUG_VALUE: matchstar:text <- $r4
	@DEBUG_VALUE: matchstar:c <- [DW_OP_LLVM_convert 8 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: matchhere:text <- $r4
	@DEBUG_VALUE: matchstar:text <- $r4
	.loc	1 16 9 is_stmt 1                @ Regexp.c:16:9
	mov	r0, r5
	mov	r1, r4
	bl	matchhere
.Ltmp26:
	.loc	1 16 9 is_stmt 0                @ Regexp.c:16:9
	cbz	r0, .LBB1_16
.Ltmp27:
.LBB1_11:
	.loc	1 0 9                           @ Regexp.c:0:9
	movs	r0, #1
	.loc	1 32 1 is_stmt 1                @ Regexp.c:32:1
	ldr	r11, [sp], #4
	pop	{r4, r5, r6, r7, pc}
	.p2align	2
.LBB1_12:                               @ =>This Inner Loop Header: Depth=1
.Ltmp28:
	@DEBUG_VALUE: matchstar:text <- $r4
	@DEBUG_VALUE: matchstar:c <- [DW_OP_LLVM_convert 8 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: matchstar:text <- $r4
	.loc	1 16 9                          @ Regexp.c:16:9
	mov	r0, r5
	mov	r1, r4
	bl	matchhere
.Ltmp29:
	.loc	1 16 9 is_stmt 0                @ Regexp.c:16:9
	cmp	r0, #0
	bne	.LBB1_11
.Ltmp30:
@ %bb.13:                               @   in Loop: Header=BB1_12 Depth=1
	@DEBUG_VALUE: matchstar:text <- $r4
	@DEBUG_VALUE: matchstar:c <- [DW_OP_LLVM_convert 8 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r6
	.loc	1 18 12 is_stmt 1               @ Regexp.c:18:12
	ldrb	r1, [r4], #1
.Ltmp31:
	.loc	1 0 12 is_stmt 0                @ Regexp.c:0:12
	movs	r0, #0
.Ltmp32:
	@DEBUG_VALUE: matchstar:text <- $r4
	.loc	1 18 26                         @ Regexp.c:18:26
	cmp	r1, #0
	beq	.LBB1_8
.Ltmp33:
@ %bb.14:                               @   in Loop: Header=BB1_12 Depth=1
	@DEBUG_VALUE: matchstar:text <- $r4
	@DEBUG_VALUE: matchstar:c <- [DW_OP_LLVM_convert 8 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r6
	cmp	r1, r6
	beq	.LBB1_12
	b	.LBB1_8
.Ltmp34:
.LBB1_15:
	@DEBUG_VALUE: matchhere:text <- $r4
	.loc	1 0 0                           @ Regexp.c:0:0
	clz	r0, r2
	lsrs	r0, r0, #5
	.loc	1 32 1 is_stmt 1                @ Regexp.c:32:1
	ldr	r11, [sp], #4
	pop	{r4, r5, r6, r7, pc}
.Ltmp35:
.LBB1_16:
	@DEBUG_VALUE: matchstar:text <- $r4
	@DEBUG_VALUE: matchstar:c <- [DW_OP_LLVM_convert 8 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: matchhere:text <- $r4
	.loc	1 0 1 is_stmt 0                 @ Regexp.c:0:1
	adds	r4, #1
.Ltmp36:
	.p2align	2
.LBB1_17:                               @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: matchstar:c <- [DW_OP_LLVM_convert 8 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: matchstar:text <- undef
	.loc	1 18 12 is_stmt 1               @ Regexp.c:18:12
	ldrb	r0, [r4, #-1]
.Ltmp37:
	@DEBUG_VALUE: matchstar:text <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	1 18 26 is_stmt 0               @ Regexp.c:18:26
	cmp	r0, #0
	beq	.LBB1_7
.Ltmp38:
@ %bb.18:                               @   in Loop: Header=BB1_17 Depth=1
	@DEBUG_VALUE: matchstar:c <- [DW_OP_LLVM_convert 8 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $r6
	@DEBUG_VALUE: matchstar:text <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	1 16 9 is_stmt 1                @ Regexp.c:16:9
	mov	r0, r5
	mov	r1, r4
	bl	matchhere
.Ltmp39:
	.loc	1 16 9 is_stmt 0                @ Regexp.c:16:9
	adds	r4, #1
	cmp	r0, #0
	mov.w	r0, #1
	beq	.LBB1_17
	b	.LBB1_8
.Ltmp40:
.Lfunc_end1:
	.size	matchhere, .Lfunc_end1-matchhere
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	1
	.type	main,%function
	.code	16                              @ @main
	.thumb_func
main:
.Lfunc_begin2:
	.loc	1 51 0 is_stmt 1                @ Regexp.c:51:0
	.fnstart
	.cfi_startproc
@ %bb.0:
	.save	{r4, r6, r7, lr}
	push	{r4, r6, r7, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset lr, -4
	.cfi_offset r7, -8
	.cfi_offset r6, -12
	.cfi_offset r4, -16
	.setfp	r7, sp, #8
	add	r7, sp, #8
	.cfi_def_cfa r7, 8
	.pad	#8
	sub	sp, #8
.Ltmp41:
	.loc	1 56 3 prologue_end             @ Regexp.c:56:3
	movw	r2, :lower16:.L.str
	sub.w	r4, r7, #15
	movt	r2, :upper16:.L.str
	mov	r0, r4
	movs	r1, #7
	bl	klee_make_symbolic
.Ltmp42:
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	.loc	1 35 7                          @ Regexp.c:35:7
	ldrb	r0, [r7, #-15]
.Ltmp43:
	.loc	1 35 7 is_stmt 0                @ Regexp.c:35:7
	cmp	r0, #94
.Ltmp44:
	@DEBUG_VALUE: match:text <- undef
	bne	.LBB2_3
.Ltmp45:
@ %bb.1:
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	.loc	1 36 12 is_stmt 1               @ Regexp.c:36:12
	movw	r1, :lower16:.L.str.1
	.loc	1 36 24 is_stmt 0               @ Regexp.c:36:24
	adds	r0, r4, #1
	.loc	1 36 12                         @ Regexp.c:36:12
	movt	r1, :upper16:.L.str.1
.Ltmp46:
.LBB2_2:
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	.loc	1 0 0                           @ Regexp.c:0:0
	bl	matchhere
.Ltmp47:
	b	.LBB2_8
.Ltmp48:
.LBB2_3:
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	.loc	1 38 9 is_stmt 1                @ Regexp.c:38:9
	movw	r4, :lower16:.L.str.1
	movt	r4, :upper16:.L.str.1
.Ltmp49:
	@DEBUG_VALUE: match:text <- $r4
	.loc	1 0 9 is_stmt 0                 @ Regexp.c:0:9
	sub.w	r0, r7, #15
	.loc	1 38 9                          @ Regexp.c:38:9
	mov	r1, r4
	bl	matchhere
.Ltmp50:
	.loc	1 38 9                          @ Regexp.c:38:9
	cbnz	r0, .LBB2_8
.Ltmp51:
@ %bb.4:
	@DEBUG_VALUE: match:text <- $r4
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	@DEBUG_VALUE: match:text <- undef
	.loc	1 38 9                          @ Regexp.c:38:9
	adds	r1, r4, #1
.Ltmp52:
	@DEBUG_VALUE: match:text <- $r1
	.loc	1 0 9                           @ Regexp.c:0:9
	sub.w	r0, r7, #15
	.loc	1 38 9                          @ Regexp.c:38:9
	bl	matchhere
.Ltmp53:
	.loc	1 38 9                          @ Regexp.c:38:9
	cbnz	r0, .LBB2_8
.Ltmp54:
@ %bb.5:
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	.loc	1 38 9                          @ Regexp.c:38:9
	adds	r1, r4, #2
.Ltmp55:
	@DEBUG_VALUE: match:text <- $r1
	.loc	1 0 9                           @ Regexp.c:0:9
	sub.w	r0, r7, #15
	.loc	1 38 9                          @ Regexp.c:38:9
	bl	matchhere
.Ltmp56:
	.loc	1 38 9                          @ Regexp.c:38:9
	cbnz	r0, .LBB2_8
.Ltmp57:
@ %bb.6:
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	.loc	1 38 9                          @ Regexp.c:38:9
	adds	r1, r4, #3
.Ltmp58:
	@DEBUG_VALUE: match:text <- $r1
	.loc	1 0 9                           @ Regexp.c:0:9
	sub.w	r0, r7, #15
	.loc	1 38 9                          @ Regexp.c:38:9
	bl	matchhere
.Ltmp59:
	.loc	1 38 9                          @ Regexp.c:38:9
	cbnz	r0, .LBB2_8
.Ltmp60:
@ %bb.7:
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	.loc	1 38 9                          @ Regexp.c:38:9
	adds	r1, r4, #4
.Ltmp61:
	@DEBUG_VALUE: match:text <- $r1
	.loc	1 0 9                           @ Regexp.c:0:9
	sub.w	r0, r7, #15
	.loc	1 38 9                          @ Regexp.c:38:9
	bl	matchhere
.Ltmp62:
	.loc	1 38 9                          @ Regexp.c:38:9
	cbz	r0, .LBB2_9
.Ltmp63:
.LBB2_8:
	.loc	1 61 3 is_stmt 1                @ Regexp.c:61:3
	movs	r0, #0
	add	sp, #8
	pop	{r4, r6, r7, pc}
.LBB2_9:
.Ltmp64:
	@DEBUG_VALUE: match:re <- [DW_OP_constu 15, DW_OP_minus, DW_OP_stack_value] $r7
	.loc	1 38 9                          @ Regexp.c:38:9
	adds	r1, r4, #5
.Ltmp65:
	@DEBUG_VALUE: match:text <- $r1
	.loc	1 0 9 is_stmt 0                 @ Regexp.c:0:9
	sub.w	r0, r7, #15
	b	.LBB2_2
.Ltmp66:
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.type	.L.str,%object                  @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"re"
	.size	.L.str, 3

	.type	.L.str.1,%object                @ @.str.1
.L.str.1:
	.asciz	"hello"
	.size	.L.str.1, 6

	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp0-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.short	4                               @ Loc expr size
	.byte	243                             @ DW_OP_GNU_entry_value
	.byte	1                               @ 1
	.byte	80                              @ DW_OP_reg0
	.byte	159                             @ DW_OP_stack_value
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp1-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.short	4                               @ Loc expr size
	.byte	243                             @ DW_OP_GNU_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.long	.Ltmp4-.Lfunc_begin0
	.long	.Ltmp10-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	85                              @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	.Ltmp24-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	.Ltmp34-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.short	7                               @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	16                              @ DW_OP_constu
	.byte	255                             @ 255
	.byte	1                               @ 
	.byte	26                              @ DW_OP_and
	.byte	159                             @ DW_OP_stack_value
	.long	.Ltmp28-.Lfunc_begin0
	.long	.Ltmp34-.Lfunc_begin0
	.short	7                               @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	16                              @ DW_OP_constu
	.byte	255                             @ 255
	.byte	1                               @ 
	.byte	26                              @ DW_OP_and
	.byte	159                             @ DW_OP_stack_value
	.long	.Ltmp36-.Lfunc_begin0
	.long	.Lfunc_end1-.Lfunc_begin0
	.short	7                               @ Loc expr size
	.byte	118                             @ DW_OP_breg6
	.byte	0                               @ 0
	.byte	16                              @ DW_OP_constu
	.byte	255                             @ 255
	.byte	1                               @ 
	.byte	26                              @ DW_OP_and
	.byte	159                             @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	.Ltmp28-.Lfunc_begin0
	.long	.Ltmp31-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	.Ltmp32-.Lfunc_begin0
	.long	.Ltmp34-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Ltmp42-.Lfunc_begin0
	.long	.Ltmp63-.Lfunc_begin0
	.short	3                               @ Loc expr size
	.byte	119                             @ DW_OP_breg7
	.byte	113                             @ -15
	.byte	159                             @ DW_OP_stack_value
	.long	.Ltmp64-.Lfunc_begin0
	.long	.Lfunc_end2-.Lfunc_begin0
	.short	3                               @ Loc expr size
	.byte	119                             @ DW_OP_breg7
	.byte	113                             @ -15
	.byte	159                             @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp49-.Lfunc_begin0
	.long	.Ltmp51-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.long	.Ltmp52-.Lfunc_begin0
	.long	.Ltmp53-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	.Ltmp55-.Lfunc_begin0
	.long	.Ltmp56-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	.Ltmp58-.Lfunc_begin0
	.long	.Ltmp59-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	.Ltmp61-.Lfunc_begin0
	.long	.Ltmp62-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	.Ltmp65-.Lfunc_begin0
	.long	.Lfunc_end2-.Lfunc_begin0
	.short	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	1                               @ DW_CHILDREN_yes
	.byte	37                              @ DW_AT_producer
	.byte	14                              @ DW_FORM_strp
	.byte	19                              @ DW_AT_language
	.byte	5                               @ DW_FORM_data2
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	16                              @ DW_AT_stmt_list
	.byte	23                              @ DW_FORM_sec_offset
	.byte	27                              @ DW_AT_comp_dir
	.byte	14                              @ DW_FORM_strp
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	2                               @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.ascii	"\227B"                         @ DW_AT_GNU_all_call_sites
	.byte	25                              @ DW_FORM_flag_present
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	3                               @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	23                              @ DW_FORM_sec_offset
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
	.ascii	"\211\202\001"                  @ DW_TAG_GNU_call_site
	.byte	0                               @ DW_CHILDREN_no
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.ascii	"\225B"                         @ DW_AT_GNU_tail_call
	.byte	25                              @ DW_FORM_flag_present
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.ascii	"\227B"                         @ DW_AT_GNU_all_call_sites
	.byte	25                              @ DW_FORM_flag_present
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	23                              @ DW_FORM_sec_offset
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
	.byte	29                              @ DW_TAG_inlined_subroutine
	.byte	1                               @ DW_CHILDREN_yes
	.byte	49                              @ DW_AT_abstract_origin
	.byte	19                              @ DW_FORM_ref4
	.byte	85                              @ DW_AT_ranges
	.byte	23                              @ DW_FORM_sec_offset
	.byte	88                              @ DW_AT_call_file
	.byte	11                              @ DW_FORM_data1
	.byte	89                              @ DW_AT_call_line
	.byte	11                              @ DW_FORM_data1
	.byte	87                              @ DW_AT_call_column
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	32                              @ DW_AT_inline
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	32                              @ DW_AT_inline
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	1                               @ DW_FORM_addr
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.ascii	"\227B"                         @ DW_AT_GNU_all_call_sites
	.byte	25                              @ DW_FORM_flag_present
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	14                              @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	15                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	16                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	17                              @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	14                              @ DW_FORM_strp
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	4                               @ DWARF version number
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	4                               @ Address Size (in bytes)
	.byte	1                               @ Abbrev [1] 0xb:0x154 DW_TAG_compile_unit
	.long	.Linfo_string0                  @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.long	.Linfo_string1                  @ DW_AT_name
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.long	.Linfo_string2                  @ DW_AT_comp_dir
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	2                               @ Abbrev [2] 0x26:0x2b DW_TAG_subprogram
	.long	.Lfunc_begin0                   @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	87
                                        @ DW_AT_GNU_all_call_sites
	.long	229                             @ DW_AT_abstract_origin
	.byte	3                               @ Abbrev [3] 0x35:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc0                    @ DW_AT_location
	.long	241                             @ DW_AT_abstract_origin
	.byte	3                               @ Abbrev [3] 0x3e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc1                    @ DW_AT_location
	.long	252                             @ DW_AT_abstract_origin
	.byte	4                               @ Abbrev [4] 0x47:0x9 DW_TAG_GNU_call_site
	.long	81                              @ DW_AT_abstract_origin
                                        @ DW_AT_GNU_tail_call
	.long	.Ltmp4                          @ DW_AT_low_pc
	.byte	0                               @ End Of Children Mark
	.byte	5                               @ Abbrev [5] 0x51:0x53 DW_TAG_subprogram
	.long	.Lfunc_begin1                   @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	87
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string10                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	210                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x66:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc2                    @ DW_AT_location
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
	.long	217                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x75:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc3                    @ DW_AT_location
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
	.long	217                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x84:0x1f DW_TAG_inlined_subroutine
	.long	164                             @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 @ DW_AT_ranges
	.byte	1                               @ DW_AT_call_file
	.byte	26                              @ DW_AT_call_line
	.byte	12                              @ DW_AT_call_column
	.byte	3                               @ Abbrev [3] 0x90:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc4                    @ DW_AT_location
	.long	176                             @ DW_AT_abstract_origin
	.byte	3                               @ Abbrev [3] 0x99:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc5                    @ DW_AT_location
	.long	198                             @ DW_AT_abstract_origin
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0xa4:0x2e DW_TAG_subprogram
	.long	.Linfo_string3                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	14                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	210                             @ DW_AT_type
	.byte	1                               @ DW_AT_inline
	.byte	9                               @ Abbrev [9] 0xb0:0xb DW_TAG_formal_parameter
	.long	.Linfo_string5                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	14                              @ DW_AT_decl_line
	.long	210                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0xbb:0xb DW_TAG_formal_parameter
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	14                              @ DW_AT_decl_line
	.long	217                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0xc6:0xb DW_TAG_formal_parameter
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	14                              @ DW_AT_decl_line
	.long	217                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	10                              @ Abbrev [10] 0xd2:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	11                              @ Abbrev [11] 0xd9:0x5 DW_TAG_pointer_type
	.long	222                             @ DW_AT_type
	.byte	10                              @ Abbrev [10] 0xde:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  @ DW_AT_name
	.byte	8                               @ DW_AT_encoding
	.byte	1                               @ DW_AT_byte_size
	.byte	12                              @ Abbrev [12] 0xe5:0x23 DW_TAG_subprogram
	.long	.Linfo_string9                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	34                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	210                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                               @ DW_AT_inline
	.byte	9                               @ Abbrev [9] 0xf1:0xb DW_TAG_formal_parameter
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	34                              @ DW_AT_decl_line
	.long	217                             @ DW_AT_type
	.byte	9                               @ Abbrev [9] 0xfc:0xb DW_TAG_formal_parameter
	.long	.Linfo_string8                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	34                              @ DW_AT_decl_line
	.long	217                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	13                              @ Abbrev [13] 0x108:0x43 DW_TAG_subprogram
	.long	.Lfunc_begin2                   @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	87
                                        @ DW_AT_GNU_all_call_sites
	.long	.Linfo_string11                 @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	51                              @ DW_AT_decl_line
	.long	210                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	14                              @ Abbrev [14] 0x11d:0xe DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	113
	.long	.Linfo_string6                  @ DW_AT_name
	.byte	1                               @ DW_AT_decl_file
	.byte	53                              @ DW_AT_decl_line
	.long	331                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x12b:0x1f DW_TAG_inlined_subroutine
	.long	229                             @ DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 @ DW_AT_ranges
	.byte	1                               @ DW_AT_call_file
	.byte	59                              @ DW_AT_call_line
	.byte	3                               @ DW_AT_call_column
	.byte	3                               @ Abbrev [3] 0x137:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc6                    @ DW_AT_location
	.long	241                             @ DW_AT_abstract_origin
	.byte	3                               @ Abbrev [3] 0x140:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc7                    @ DW_AT_location
	.long	252                             @ DW_AT_abstract_origin
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	15                              @ Abbrev [15] 0x14b:0xc DW_TAG_array_type
	.long	222                             @ DW_AT_type
	.byte	16                              @ Abbrev [16] 0x150:0x6 DW_TAG_subrange_type
	.long	343                             @ DW_AT_type
	.byte	7                               @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	17                              @ Abbrev [17] 0x157:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.long	.Ltmp28-.Lfunc_begin0
	.long	.Ltmp34-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.long	.Ltmp40-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp42-.Lfunc_begin0
	.long	.Ltmp63-.Lfunc_begin0
	.long	.Ltmp64-.Lfunc_begin0
	.long	.Ltmp66-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 13.0.1-++20220115064402+fc043d8a256b-1~exp1~20220115064412.55" @ string offset=0
.Linfo_string1:
	.asciz	"Regexp.c"                      @ string offset=83
.Linfo_string2:
	.asciz	"/home/isak/Documents/xj/klee-fork/klee/examples/regexp" @ string offset=92
.Linfo_string3:
	.asciz	"matchstar"                     @ string offset=147
.Linfo_string4:
	.asciz	"int"                           @ string offset=157
.Linfo_string5:
	.asciz	"c"                             @ string offset=161
.Linfo_string6:
	.asciz	"re"                            @ string offset=163
.Linfo_string7:
	.asciz	"char"                          @ string offset=166
.Linfo_string8:
	.asciz	"text"                          @ string offset=171
.Linfo_string9:
	.asciz	"match"                         @ string offset=176
.Linfo_string10:
	.asciz	"matchhere"                     @ string offset=182
.Linfo_string11:
	.asciz	"main"                          @ string offset=192
.Linfo_string12:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=197
	.ident	"Ubuntu clang version 13.0.1-++20220115064402+fc043d8a256b-1~exp1~20220115064412.55"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
