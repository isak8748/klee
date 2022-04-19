	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-m4
	.eabi_attribute	6, 13	@ Tag_CPU_arch
	.eabi_attribute	7, 77	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	fpv4-sp-d16
	.eabi_attribute	27, 1	@ Tag_ABI_HardFP_use
	.eabi_attribute	36, 1	@ Tag_FP_HP_extension
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"noklee.c"
	.globl	get_sign                        @ -- Begin function get_sign
	.p2align	2
	.type	get_sign,%function
	.code	32                              @ @get_sign
get_sign:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #0
	bne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	mov	r0, #0
	str	r0, [sp, #4]
	b	.LBB0_5
.LBB0_2:
	ldr	r0, [sp]
	cmn	r0, #1
	bgt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mvn	r0, #0
	str	r0, [sp, #4]
	b	.LBB0_5
.LBB0_4:
	mov	r0, #1
	str	r0, [sp, #4]
	b	.LBB0_5
.LBB0_5:
	ldr	r0, [sp, #4]
	add	sp, sp, #8
	mov	pc, lr
.Lfunc_end0:
	.size	get_sign, .Lfunc_end0-get_sign
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r0, #2
	str	r0, [sp]
	ldr	r0, [sp]
	bl	get_sign
	mov	sp, r11
	pop	{r11, lr}
	mov	pc, lr
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.fnend
                                        @ -- End function
	.ident	"Ubuntu clang version 13.0.1-++20220120110924+75e33f71c2da-1~exp1~20220120231001.58"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 6	@ Tag_ABI_optimization_goals
