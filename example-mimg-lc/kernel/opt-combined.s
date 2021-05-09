	.text
	.file	"llvm-link"
	.globl	kernel                          # -- Begin function kernel
	.p2align	4, 0x90
	.type	kernel,@function
kernel:                                 # @kernel
	.cfi_startproc
# %bb.0:                                # %initialize
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	$1326972928, console            # imm = 0x4F180000
	movw	$0, console+4
	movb	$10, console+6
	movb	$0, itoaBuf
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$itoaBuf+1
	.cfi_adjust_cfa_offset 4
	calll	func_b1686
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	console, %eax
	movzbl	console+1, %ebx
	movb	%al, console+4
	movb	%bl, console+5
	movzbl	console+2, %ecx
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	console+3, %edi
	movzbl	console+6, %ebp
	pushl	%eax
	movl	%eax, %esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b690
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %edi
	testl	%edi, %edi
	je	.LBB0_7
# %bb.1:                                # %b2573
	movl	$str21+1, %esi
	.p2align	4, 0x90
.LBB0_2:                                # %b2565
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB0_4
# %bb.3:                                # %b2568
                                        #   in Loop: Header=BB0_2 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %b2570
                                        #   in Loop: Header=BB0_2 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB0_5:                                # %b2570
                                        #   in Loop: Header=BB0_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB0_7
# %bb.6:                                # %b2563
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%esi
	jmp	.LBB0_2
.LBB0_7:                                # %b2556
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB0_9
# %bb.8:                                # %b2558
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2552
	jmp	.LBB0_57
.LBB0_9:                                # %b1202
	.cfi_def_cfa_offset 32
	movl	4096, %eax
	leal	4(%eax), %ecx
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$12
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	(%eax)
	.cfi_adjust_cfa_offset 4
	calll	func_b2070
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB0_11
# %bb.10:                               # %b2537
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str12+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2531
	jmp	.LBB0_57
.LBB0_11:                               # %b1203
	.cfi_def_cfa_offset 32
	movl	4100, %eax
	leal	4(%eax), %ecx
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$8
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	(%eax)
	.cfi_adjust_cfa_offset 4
	calll	func_b2218
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB0_13
# %bb.12:                               # %b2516
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2510
	jmp	.LBB0_57
.LBB0_13:                               # %b1204
	.cfi_def_cfa_offset 32
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB0_15
# %bb.14:                               # %b2432
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2426
	jmp	.LBB0_33
.LBB0_15:                               # %b2409
	.cfi_def_cfa_offset 32
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB0_17
# %bb.16:                               # %b2411
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB0_17:                               # %b2397
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB0_20
# %bb.18:                               # %b2408
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str18+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB0_27
# %bb.19:                               # %b2403
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB0_28
.LBB0_20:                               # %b2390
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB0_24
# %bb.21:                               # %b2609
	leal	1(%esi), %edi
.LBB0_22:                               # %b2386
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB0_24
# %bb.23:                               # %b2384
                                        #   in Loop: Header=BB0_22 Depth=1
	incl	%edi
	jmp	.LBB0_22
.LBB0_24:                               # %b2373
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB0_29
# %bb.25:                               # %b2375
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB0_31
# %bb.26:                               # %b2379
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB0_32
.LBB0_27:                               # %b2405
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB0_28:                               # %b2405
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b2290
	jmp	.LBB0_33
.LBB0_29:                               # %b1408
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB0_34
# %bb.30:                               # %b2364
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	jmp	.LBB0_33
.LBB0_31:                               # %b2381
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB0_32:                               # %b2381
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2244
.LBB0_33:                               # %b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB0_34:                               # %b1409
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB0_37
# %bb.35:                               # %b2429
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str17+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB0_42
# %bb.36:                               # %b2356
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB0_43
.LBB0_37:                               # %b2318
	.cfi_def_cfa_offset 32
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB0_39
# %bb.38:                               # %b2320
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB0_39:                               # %b2306
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB0_44
# %bb.40:                               # %b2317
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str18+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB0_51
# %bb.41:                               # %b2312
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB0_52
.LBB0_42:                               # %b2358
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB0_43:                               # %b2358
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b2334
	jmp	.LBB0_57
.LBB0_44:                               # %b2277
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB0_48
# %bb.45:                               # %b2608
	leal	1(%esi), %edi
.LBB0_46:                               # %b2273
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB0_48
# %bb.47:                               # %b2271
                                        #   in Loop: Header=BB0_46 Depth=1
	incl	%edi
	jmp	.LBB0_46
.LBB0_48:                               # %b2260
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB0_53
# %bb.49:                               # %b2262
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB0_55
# %bb.50:                               # %b2266
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB0_56
.LBB0_51:                               # %b2314
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB0_52:                               # %b2314
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b2290
	jmp	.LBB0_57
.LBB0_53:                               # %b1414
	.cfi_def_cfa_offset 32
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB0_58
# %bb.54:                               # %b2238
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	jmp	.LBB0_57
.LBB0_55:                               # %b2268
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB0_56:                               # %b2268
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2244
.LBB0_57:                               # %b2537
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB0_58:                               # %b2537
	movzbl	str22, %eax
	testl	%eax, %eax
	je	.LBB0_60
# %bb.59:                               # %b2555
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str22+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB0_61
.LBB0_60:                               # %b1473
	.cfi_def_cfa_offset 32
	addl	$12, %esp
	.cfi_def_cfa_offset 20
.LBB0_61:                               # %b1473
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end0:
	.size	kernel, .Lfunc_end0-kernel
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1686
	.type	func_b1686,@function
func_b1686:                             # @func_b1686
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	cmpl	$31, %eax
	ja	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                # %b1687
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%ecx)
	incl	%eax
	incl	%ecx
	cmpl	$31, %eax
	jbe	.LBB1_2
.LBB1_3:                                # %b1473
	retl
.Lfunc_end1:
	.size	func_b1686, .Lfunc_end1-func_b1686
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b690
	.type	func_b690,@function
func_b690:                              # @func_b690
	.cfi_startproc
# %bb.0:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset %esi, -8
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	20(%esp), %esi
	leal	(%esi,%esi,4), %esi
	shll	$5, %esi
	leal	753664(%esi,%edx,2), %esi
	shll	$8, %eax
	orl	$32, %eax
	.p2align	4, 0x90
.LBB2_1:                                # %b690
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, (%esi)
	incl	%edx
	addl	$2, %esi
	cmpl	%ecx, %edx
	jbe	.LBB2_1
# %bb.2:                                # %b1473
	popl	%esi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end2:
	.size	func_b690, .Lfunc_end2-func_b690
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2660
	.type	func_b2660,@function
func_b2660:                             # @func_b2660
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	48(%esp), %edi
	movl	44(%esp), %ebx
	movl	40(%esp), %ebp
	movl	36(%esp), %esi
	movl	32(%esp), %eax
	.p2align	4, 0x90
.LBB3_1:                                # %b2660
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	movl	%eax, %esi
	addl	%ecx, %esi
	cmpl	%ebp, %esi
	ja	.LBB3_3
# %bb.2:                                # %b692
                                        #   in Loop: Header=BB3_1 Depth=1
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	56(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b690
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	$1, %eax
	jmp	.LBB3_1
.LBB3_3:                                # %b1473
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end3:
	.size	func_b2660, .Lfunc_end3-func_b2660
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2070
	.type	func_b2070,@function
func_b2070:                             # @func_b2070
	.cfi_startproc
# %bb.0:
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	pushl	%eax
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movl	28(%esp), %eax
	movl	24(%esp), %edi
	movl	20(%esp), %ecx
	movl	16(%esp), %esi
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_3:                                # %b2588
                                        #   in Loop: Header=BB4_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2052
.LBB4_4:                                # %b2070
                                        #   in Loop: Header=BB4_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$12, %edi
.LBB4_1:                                # %b2070
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB4_6
# %bb.2:                                # %b2072
                                        #   in Loop: Header=BB4_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str0, %edx
	testl	%edx, %edx
	je	.LBB4_3
# %bb.5:                                # %b2589
                                        #   in Loop: Header=BB4_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str0+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b2064
	jmp	.LBB4_4
.LBB4_6:                                # %b436
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end4:
	.size	func_b2070, .Lfunc_end4-func_b2070
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2552
	.type	func_b2552,@function
func_b2552:                             # @func_b2552
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	.p2align	4, 0x90
.LBB5_1:                                # %b2552
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB5_3
# %bb.2:                                # %b2606
                                        #   in Loop: Header=BB5_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB5_4
	.p2align	4, 0x90
.LBB5_3:                                # %b2607
                                        #   in Loop: Header=BB5_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB5_4:                                # %b2607
                                        #   in Loop: Header=BB5_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB5_6
# %bb.5:                                # %b2545
                                        #   in Loop: Header=BB5_1 Depth=1
	incl	%esi
	jmp	.LBB5_1
.LBB5_6:                                # %b818
	movl	4096, %eax
	leal	4(%eax), %ecx
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$12
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	(%eax)
	.cfi_adjust_cfa_offset 4
	calll	func_b2070
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB5_8
# %bb.7:                                # %b2542
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str12+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2531
	jmp	.LBB5_60
.LBB5_8:                                # %b816
	.cfi_def_cfa_offset 16
	movl	4100, %eax
	leal	4(%eax), %ecx
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$8
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	(%eax)
	.cfi_adjust_cfa_offset 4
	calll	func_b2218
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB5_10
# %bb.9:                                # %b2521
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2510
	jmp	.LBB5_60
.LBB5_10:                               # %b814
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB5_12
# %bb.11:                               # %b2498
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2426
	jmp	.LBB5_30
.LBB5_12:                               # %b2488
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB5_14
# %bb.13:                               # %b2490
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB5_14:                               # %b2476
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB5_17
# %bb.15:                               # %b2487
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str18+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB5_24
# %bb.16:                               # %b2482
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB5_25
.LBB5_17:                               # %b2469
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB5_21
# %bb.18:                               # %b2601
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB5_19:                               # %b2465
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB5_21
# %bb.20:                               # %b2463
                                        #   in Loop: Header=BB5_19 Depth=1
	incl	%edi
	jmp	.LBB5_19
.LBB5_21:                               # %b2452
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB5_26
# %bb.22:                               # %b2454
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB5_28
# %bb.23:                               # %b2458
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB5_29
.LBB5_24:                               # %b2484
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB5_25:                               # %b2484
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b2290
	jmp	.LBB5_30
.LBB5_26:                               # %b1287
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB5_31
# %bb.27:                               # %b2443
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	jmp	.LBB5_30
.LBB5_28:                               # %b2460
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB5_29:                               # %b2460
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2244
.LBB5_30:                               # %b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB5_31:                               # %b1212
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB5_38
# %bb.32:                               # %b2495
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB5_33:                               # %b2338
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB5_35
# %bb.34:                               # %b2341
                                        #   in Loop: Header=BB5_33 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB5_36
	.p2align	4, 0x90
.LBB5_35:                               # %b2343
                                        #   in Loop: Header=BB5_33 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB5_36:                               # %b2334
                                        #   in Loop: Header=BB5_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB5_38
# %bb.37:                               # %b2336
                                        #   in Loop: Header=BB5_33 Depth=1
	incl	%ebx
	jmp	.LBB5_33
.LBB5_38:                               # %b2329
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB5_40
# %bb.39:                               # %b2331
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB5_40:                               # %b2323
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB5_47
# %bb.41:                               # %b2328
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB5_42:                               # %b2294
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB5_44
# %bb.43:                               # %b2297
                                        #   in Loop: Header=BB5_42 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB5_45
	.p2align	4, 0x90
.LBB5_44:                               # %b2299
                                        #   in Loop: Header=BB5_42 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB5_45:                               # %b2290
                                        #   in Loop: Header=BB5_42 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB5_47
# %bb.46:                               # %b2292
                                        #   in Loop: Header=BB5_42 Depth=1
	incl	%ebx
	jmp	.LBB5_42
.LBB5_47:                               # %b2289
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB5_51
# %bb.48:                               # %b2598
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB5_49:                               # %b2285
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB5_51
# %bb.50:                               # %b2283
                                        #   in Loop: Header=BB5_49 Depth=1
	incl	%edi
	jmp	.LBB5_49
.LBB5_51:                               # %b2278
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB5_58
# %bb.52:                               # %b2280
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB5_53:                               # %b2248
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB5_55
# %bb.54:                               # %b2251
                                        #   in Loop: Header=BB5_53 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB5_56
	.p2align	4, 0x90
.LBB5_55:                               # %b2253
                                        #   in Loop: Header=BB5_53 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB5_56:                               # %b2244
                                        #   in Loop: Header=BB5_53 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB5_58
# %bb.57:                               # %b2246
                                        #   in Loop: Header=BB5_53 Depth=1
	incl	%edi
	jmp	.LBB5_53
.LBB5_58:                               # %b808
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB5_61
# %bb.59:                               # %b2243
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
.LBB5_60:                               # %b1473
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB5_61:                               # %b1473
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end5:
	.size	func_b2552, .Lfunc_end5-func_b2552
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b694
	.type	func_b694,@function
func_b694:                              # @func_b694
	.cfi_startproc
# %bb.0:
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	cmpl	%edx, %eax
	jne	.LBB6_3
	.p2align	4, 0x90
.LBB6_2:                                # %b258
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	xorl	%edx, %edx
	cmpl	%edx, %eax
	je	.LBB6_2
.LBB6_3:                                # %b1705
	movw	$1016, %dx                      # imm = 0x3F8
	movl	%ecx, %eax
	#APP
	outb	%al, %dx
	#NO_APP
	retl
.Lfunc_end6:
	.size	func_b694, .Lfunc_end6-func_b694
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2218
	.type	func_b2218,@function
func_b2218:                             # @func_b2218
	.cfi_startproc
# %bb.0:
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	pushl	%eax
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movl	28(%esp), %eax
	movl	24(%esp), %edi
	movl	20(%esp), %ecx
	movl	16(%esp), %esi
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_3:                                # %b2596
                                        #   in Loop: Header=BB7_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2200
.LBB7_4:                                # %b2218
                                        #   in Loop: Header=BB7_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$8, %edi
.LBB7_1:                                # %b2218
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB7_6
# %bb.2:                                # %b2220
                                        #   in Loop: Header=BB7_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str0, %edx
	testl	%edx, %edx
	je	.LBB7_3
# %bb.5:                                # %b2597
                                        #   in Loop: Header=BB7_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str0+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b2212
	jmp	.LBB7_4
.LBB7_6:                                # %b436
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end7:
	.size	func_b2218, .Lfunc_end7-func_b2218
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2531
	.type	func_b2531,@function
func_b2531:                             # @func_b2531
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	.p2align	4, 0x90
.LBB8_1:                                # %b2531
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB8_3
# %bb.2:                                # %b2604
                                        #   in Loop: Header=BB8_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB8_4
	.p2align	4, 0x90
.LBB8_3:                                # %b2605
                                        #   in Loop: Header=BB8_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB8_4:                                # %b2605
                                        #   in Loop: Header=BB8_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB8_6
# %bb.5:                                # %b2524
                                        #   in Loop: Header=BB8_1 Depth=1
	incl	%esi
	jmp	.LBB8_1
.LBB8_6:                                # %b816
	movl	4100, %eax
	leal	4(%eax), %ecx
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$8
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	(%eax)
	.cfi_adjust_cfa_offset 4
	calll	func_b2218
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB8_8
# %bb.7:                                # %b2521
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2510
	jmp	.LBB8_58
.LBB8_8:                                # %b814
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB8_10
# %bb.9:                                # %b2498
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2426
	jmp	.LBB8_28
.LBB8_10:                               # %b2488
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB8_12
# %bb.11:                               # %b2490
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB8_12:                               # %b2476
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB8_15
# %bb.13:                               # %b2487
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str18+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB8_22
# %bb.14:                               # %b2482
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB8_23
.LBB8_15:                               # %b2469
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB8_19
# %bb.16:                               # %b2601
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB8_17:                               # %b2465
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB8_19
# %bb.18:                               # %b2463
                                        #   in Loop: Header=BB8_17 Depth=1
	incl	%edi
	jmp	.LBB8_17
.LBB8_19:                               # %b2452
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB8_24
# %bb.20:                               # %b2454
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB8_26
# %bb.21:                               # %b2458
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB8_27
.LBB8_22:                               # %b2484
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB8_23:                               # %b2484
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b2290
	jmp	.LBB8_28
.LBB8_24:                               # %b1287
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB8_29
# %bb.25:                               # %b2443
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	jmp	.LBB8_28
.LBB8_26:                               # %b2460
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB8_27:                               # %b2460
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2244
.LBB8_28:                               # %b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB8_29:                               # %b1212
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB8_36
# %bb.30:                               # %b2495
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB8_31:                               # %b2338
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB8_33
# %bb.32:                               # %b2341
                                        #   in Loop: Header=BB8_31 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB8_34
	.p2align	4, 0x90
.LBB8_33:                               # %b2343
                                        #   in Loop: Header=BB8_31 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB8_34:                               # %b2334
                                        #   in Loop: Header=BB8_31 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB8_36
# %bb.35:                               # %b2336
                                        #   in Loop: Header=BB8_31 Depth=1
	incl	%ebx
	jmp	.LBB8_31
.LBB8_36:                               # %b2329
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB8_38
# %bb.37:                               # %b2331
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB8_38:                               # %b2323
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB8_45
# %bb.39:                               # %b2328
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB8_40:                               # %b2294
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB8_42
# %bb.41:                               # %b2297
                                        #   in Loop: Header=BB8_40 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB8_43
	.p2align	4, 0x90
.LBB8_42:                               # %b2299
                                        #   in Loop: Header=BB8_40 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB8_43:                               # %b2290
                                        #   in Loop: Header=BB8_40 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB8_45
# %bb.44:                               # %b2292
                                        #   in Loop: Header=BB8_40 Depth=1
	incl	%ebx
	jmp	.LBB8_40
.LBB8_45:                               # %b2289
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB8_49
# %bb.46:                               # %b2598
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB8_47:                               # %b2285
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB8_49
# %bb.48:                               # %b2283
                                        #   in Loop: Header=BB8_47 Depth=1
	incl	%edi
	jmp	.LBB8_47
.LBB8_49:                               # %b2278
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB8_56
# %bb.50:                               # %b2280
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB8_51:                               # %b2248
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB8_53
# %bb.52:                               # %b2251
                                        #   in Loop: Header=BB8_51 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB8_54
	.p2align	4, 0x90
.LBB8_53:                               # %b2253
                                        #   in Loop: Header=BB8_51 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB8_54:                               # %b2244
                                        #   in Loop: Header=BB8_51 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB8_56
# %bb.55:                               # %b2246
                                        #   in Loop: Header=BB8_51 Depth=1
	incl	%edi
	jmp	.LBB8_51
.LBB8_56:                               # %b808
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB8_59
# %bb.57:                               # %b2243
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
.LBB8_58:                               # %b1473
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB8_59:                               # %b1473
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end8:
	.size	func_b2531, .Lfunc_end8-func_b2531
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b845
	.type	func_b845,@function
func_b845:                              # @func_b845
	.cfi_startproc
# %bb.0:                                # %b845
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	32(%esp), %edx
	movzbl	console+4, %eax
	cmpl	$13, %edx
	je	.LBB9_1
# %bb.7:                                # %b850
	cmpl	$10, %edx
	je	.LBB9_1
# %bb.8:                                # %b852
	movzbl	console+5, %ecx
	movzbl	console+6, %esi
	leal	(%eax,%eax,4), %edi
	shll	$5, %edi
	movzbl	%dl, %edx
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, 753664(%edi,%ecx,2)
	movzbl	console+3, %edx
	incl	%ecx
	cmpl	%edx, %ecx
	ja	.LBB9_1
# %bb.9:                                # %b2686
	movb	%cl, console+5
	jmp	.LBB9_10
.LBB9_1:                                # %b847
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB9_3
# %bb.2:                                # %b2682
	movb	%al, console+4
	jmp	.LBB9_10
.LBB9_3:                                # %b849
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB9_5
	.p2align	4, 0x90
.LBB9_4:                                # %b2673
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%ebp), %eax
	movl	%eax, 8(%esp)                   # 4-byte Spill
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b702
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB9_4
.LBB9_5:                                # %b700.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB9_6:                                # %b700
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB9_6
.LBB9_10:                               # %b1473
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end9:
	.size	func_b845, .Lfunc_end9-func_b845
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2510
	.type	func_b2510,@function
func_b2510:                             # @func_b2510
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	36(%esp), %esi
	movl	32(%esp), %edi
	.p2align	4, 0x90
.LBB10_1:                               # %b2510
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %edi
	jne	.LBB10_3
# %bb.2:                                # %b2602
                                        #   in Loop: Header=BB10_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB10_3:                               # %b2603
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	%edi, (%esp)
	calll	func_b845
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB10_4
# %bb.49:                               # %b2503
                                        #   in Loop: Header=BB10_1 Depth=1
	incl	%esi
	jmp	.LBB10_1
.LBB10_4:                               # %b814
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB10_5
# %bb.29:                               # %b2498
	movl	%esi, 8(%esp)
	movl	%eax, (%esp)
	movl	$str17+1, 4(%esp)
	calll	func_b2426
	jmp	.LBB10_30
.LBB10_5:                               # %b2488
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB10_6
# %bb.11:                               # %b2490
	movl	%eax, (%esp)
	movl	$str15+1, 4(%esp)
	calll	func_b2104
.LBB10_6:                               # %b2476
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB10_7
# %bb.18:                               # %b2487
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str18+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %edi
	jne	.LBB10_20
# %bb.19:                               # %b2482
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB10_20:                              # %b2484
	movl	%edi, (%esp)
	calll	func_b845
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	calll	func_b2290
	jmp	.LBB10_30
.LBB10_7:                               # %b2469
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB10_8
# %bb.21:                               # %b2601
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB10_22:                              # %b2465
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%esp)
	calll	func_b854
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB10_8
# %bb.23:                               # %b2463
                                        #   in Loop: Header=BB10_22 Depth=1
	incl	%edi
	jmp	.LBB10_22
.LBB10_8:                               # %b2452
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB10_9
# %bb.37:                               # %b2454
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %edi
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB10_39
# %bb.38:                               # %b2458
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB10_39:                              # %b2460
	movl	%ebx, (%esp)
	calll	func_b845
	movl	%esi, 4(%esp)
	movl	%edi, (%esp)
	calll	func_b2244
	jmp	.LBB10_30
.LBB10_9:                               # %b1287
	movl	%esi, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB10_30
# %bb.10:                               # %b2443
	movl	%eax, (%esp)
	movl	$str20+1, 4(%esp)
	calll	func_b2104
.LBB10_30:                              # %b1212
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB10_31
# %bb.13:                               # %b2495
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB10_14:                              # %b2338
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %edi
	jne	.LBB10_16
# %bb.15:                               # %b2341
                                        #   in Loop: Header=BB10_14 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB10_16:                              # %b2343
                                        #   in Loop: Header=BB10_14 Depth=1
	movl	%edi, (%esp)
	calll	func_b845
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB10_31
# %bb.17:                               # %b2336
                                        #   in Loop: Header=BB10_14 Depth=1
	incl	%ebx
	jmp	.LBB10_14
.LBB10_31:                              # %b2329
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB10_32
# %bb.12:                               # %b2331
	movl	%eax, (%esp)
	movl	$str16+1, 4(%esp)
	calll	func_b2104
.LBB10_32:                              # %b2323
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB10_33
# %bb.24:                               # %b2328
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB10_25:                              # %b2294
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %edi
	jne	.LBB10_27
# %bb.26:                               # %b2297
                                        #   in Loop: Header=BB10_25 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB10_27:                              # %b2299
                                        #   in Loop: Header=BB10_25 Depth=1
	movl	%edi, (%esp)
	calll	func_b845
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB10_33
# %bb.28:                               # %b2292
                                        #   in Loop: Header=BB10_25 Depth=1
	incl	%ebx
	jmp	.LBB10_25
.LBB10_33:                              # %b2289
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB10_34
# %bb.40:                               # %b2598
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB10_41:                              # %b2285
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%esp)
	calll	func_b854
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB10_34
# %bb.42:                               # %b2283
                                        #   in Loop: Header=BB10_41 Depth=1
	incl	%edi
	jmp	.LBB10_41
.LBB10_34:                              # %b2278
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB10_35
# %bb.44:                               # %b2280
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB10_45:                              # %b2248
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB10_47
# %bb.46:                               # %b2251
                                        #   in Loop: Header=BB10_45 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB10_47:                              # %b2253
                                        #   in Loop: Header=BB10_45 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB10_35
# %bb.48:                               # %b2246
                                        #   in Loop: Header=BB10_45 Depth=1
	incl	%edi
	jmp	.LBB10_45
.LBB10_35:                              # %b808
	movl	%esi, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB10_36
# %bb.43:                               # %b2243
	movl	%eax, (%esp)
	movl	$str20+1, 4(%esp)
	calll	func_b2104
.LBB10_36:                              # %b1473
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end10:
	.size	func_b2510, .Lfunc_end10-func_b2510
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2104
	.type	func_b2104,@function
func_b2104:                             # @func_b2104
	.cfi_startproc
# %bb.0:
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	pushl	%eax
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	.p2align	4, 0x90
.LBB11_1:                               # %b2104
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB11_3
# %bb.2:                                # %b2590
                                        #   in Loop: Header=BB11_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB11_4
	.p2align	4, 0x90
.LBB11_3:                               # %b2591
                                        #   in Loop: Header=BB11_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB11_4:                               # %b2095
                                        #   in Loop: Header=BB11_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB11_5
# %bb.6:                                # %b2097
                                        #   in Loop: Header=BB11_1 Depth=1
	incl	%esi
	jmp	.LBB11_1
.LBB11_5:                               # %b1473
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end11:
	.size	func_b2104, .Lfunc_end11-func_b2104
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2426
	.type	func_b2426,@function
func_b2426:                             # @func_b2426
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	40(%esp), %esi
	movl	36(%esp), %edi
	movl	32(%esp), %ebx
	.p2align	4, 0x90
.LBB12_1:                               # %b2426
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB12_3
# %bb.2:                                # %b2599
                                        #   in Loop: Header=BB12_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB12_3:                               # %b2600
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB12_4
# %bb.25:                               # %b2419
                                        #   in Loop: Header=BB12_1 Depth=1
	incl	%edi
	jmp	.LBB12_1
.LBB12_4:                               # %b2414
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB12_6
# %bb.5:                                # %b2416
	movl	%eax, (%esp)
	movl	$str15+1, 4(%esp)
	calll	func_b2104
.LBB12_6:                               # %b2416
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB12_7
# %bb.11:                               # %b2328
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB12_12:                              # %b2294
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %edi
	jne	.LBB12_14
# %bb.13:                               # %b2297
                                        #   in Loop: Header=BB12_12 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB12_14:                              # %b2299
                                        #   in Loop: Header=BB12_12 Depth=1
	movl	%edi, (%esp)
	calll	func_b845
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB12_7
# %bb.15:                               # %b2292
                                        #   in Loop: Header=BB12_12 Depth=1
	incl	%ebx
	jmp	.LBB12_12
.LBB12_7:                               # %b2289
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB12_8
# %bb.16:                               # %b2598
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB12_17:                              # %b2285
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%esp)
	calll	func_b854
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB12_8
# %bb.18:                               # %b2283
                                        #   in Loop: Header=BB12_17 Depth=1
	incl	%edi
	jmp	.LBB12_17
.LBB12_8:                               # %b2278
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB12_9
# %bb.20:                               # %b2280
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB12_21:                              # %b2248
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB12_23
# %bb.22:                               # %b2251
                                        #   in Loop: Header=BB12_21 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB12_23:                              # %b2253
                                        #   in Loop: Header=BB12_21 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB12_9
# %bb.24:                               # %b2246
                                        #   in Loop: Header=BB12_21 Depth=1
	incl	%edi
	jmp	.LBB12_21
.LBB12_9:                               # %b808
	movl	%esi, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB12_10
# %bb.19:                               # %b2243
	movl	%eax, (%esp)
	movl	$str20+1, 4(%esp)
	calll	func_b2104
.LBB12_10:                              # %b1473
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end12:
	.size	func_b2426, .Lfunc_end12-func_b2426
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2334
	.type	func_b2334,@function
func_b2334:                             # @func_b2334
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	36(%esp), %esi
	movl	32(%esp), %edi
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_11:                              # %b2343
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
.LBB13_1:                               # %b2334
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB13_2
# %bb.9:                                # %b2336
                                        #   in Loop: Header=BB13_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%edi
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB13_11
# %bb.10:                               # %b2341
                                        #   in Loop: Header=BB13_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	jmp	.LBB13_11
.LBB13_2:                               # %b2329
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB13_4
# %bb.3:                                # %b2331
	movl	%eax, (%esp)
	movl	$str16+1, 4(%esp)
	calll	func_b2104
.LBB13_4:                               # %b2331
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB13_5
# %bb.12:                               # %b2328
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB13_13:                              # %b2294
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %edi
	jne	.LBB13_15
# %bb.14:                               # %b2297
                                        #   in Loop: Header=BB13_13 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB13_15:                              # %b2299
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	%edi, (%esp)
	calll	func_b845
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB13_5
# %bb.16:                               # %b2292
                                        #   in Loop: Header=BB13_13 Depth=1
	incl	%ebx
	jmp	.LBB13_13
.LBB13_5:                               # %b2289
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB13_6
# %bb.17:                               # %b2598
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB13_18:                              # %b2285
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%esp)
	calll	func_b854
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB13_6
# %bb.19:                               # %b2283
                                        #   in Loop: Header=BB13_18 Depth=1
	incl	%edi
	jmp	.LBB13_18
.LBB13_6:                               # %b2278
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB13_7
# %bb.21:                               # %b2280
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB13_22:                              # %b2248
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB13_24
# %bb.23:                               # %b2251
                                        #   in Loop: Header=BB13_22 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB13_24:                              # %b2253
                                        #   in Loop: Header=BB13_22 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB13_7
# %bb.25:                               # %b2246
                                        #   in Loop: Header=BB13_22 Depth=1
	incl	%edi
	jmp	.LBB13_22
.LBB13_7:                               # %b808
	movl	%esi, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB13_8
# %bb.20:                               # %b2243
	movl	%eax, (%esp)
	movl	$str20+1, 4(%esp)
	calll	func_b2104
.LBB13_8:                               # %b1473
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end13:
	.size	func_b2334, .Lfunc_end13-func_b2334
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2290
	.type	func_b2290,@function
func_b2290:                             # @func_b2290
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	36(%esp), %esi
	movl	32(%esp), %edi
	jmp	.LBB14_1
	.p2align	4, 0x90
.LBB14_11:                              # %b2299
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
.LBB14_1:                               # %b2290
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB14_2
# %bb.9:                                # %b2292
                                        #   in Loop: Header=BB14_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%edi
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB14_11
# %bb.10:                               # %b2297
                                        #   in Loop: Header=BB14_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	jmp	.LBB14_11
.LBB14_2:                               # %b2289
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB14_3
# %bb.6:                                # %b2598
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB14_7:                               # %b2285
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%esp)
	calll	func_b854
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB14_3
# %bb.8:                                # %b2283
                                        #   in Loop: Header=BB14_7 Depth=1
	incl	%edi
	jmp	.LBB14_7
.LBB14_3:                               # %b2278
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB14_4
# %bb.13:                               # %b2280
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB14_14:                              # %b2248
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB14_16
# %bb.15:                               # %b2251
                                        #   in Loop: Header=BB14_14 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB14_16:                              # %b2253
                                        #   in Loop: Header=BB14_14 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB14_4
# %bb.17:                               # %b2246
                                        #   in Loop: Header=BB14_14 Depth=1
	incl	%edi
	jmp	.LBB14_14
.LBB14_4:                               # %b808
	movl	%esi, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB14_5
# %bb.12:                               # %b2243
	movl	%eax, (%esp)
	movl	$str20+1, 4(%esp)
	calll	func_b2104
.LBB14_5:                               # %b1473
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end14:
	.size	func_b2290, .Lfunc_end14-func_b2290
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1021
	.type	func_b1021,@function
func_b1021:                             # @func_b1021
	.cfi_startproc
# %bb.0:                                # %b1021
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	pushl	%eax
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movl	20(%esp), %eax
	movl	16(%esp), %esi
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$9, %ecx
	ja	.LBB15_2
# %bb.1:                                # %b1713
	orb	$48, %cl
	jmp	.LBB15_3
.LBB15_2:                               # %b1714
	addb	$87, %cl
.LBB15_3:                               # %b1714
	movb	%cl, itoaBuf
	shrl	$4, %eax
	je	.LBB15_7
# %bb.4:                                # %b1251.preheader
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB15_5:                               # %b1251
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edi
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	jae	.LBB15_10
# %bb.6:                                # %b1546
                                        #   in Loop: Header=BB15_5 Depth=1
	orl	$48, %ecx
	jmp	.LBB15_11
	.p2align	4, 0x90
.LBB15_10:                              # %b1548
                                        #   in Loop: Header=BB15_5 Depth=1
	addl	$87, %ecx
.LBB15_11:                              # %b1547
                                        #   in Loop: Header=BB15_5 Depth=1
	movb	%cl, itoaBuf(%edi)
	leal	1(%edi), %ecx
	cmpl	$31, %ecx
	ja	.LBB15_13
# %bb.12:                               # %b2720
                                        #   in Loop: Header=BB15_5 Depth=1
	shrl	$4, %eax
	jne	.LBB15_5
.LBB15_13:                              # %b1244
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB15_14:                              # %b1239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%edi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%edi
	jns	.LBB15_14
# %bb.15:                               # %b1473
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	jmp	.LBB15_16
.LBB15_7:                               # %b2702
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB15_9
# %bb.8:                                # %b2704
	movl	$1, %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB15_9:                               # %b1303
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$20, %esp
	.cfi_adjust_cfa_offset -20
.LBB15_16:                              # %b1473
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end15:
	.size	func_b1021, .Lfunc_end15-func_b1021
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b854
	.type	func_b854,@function
func_b854:                              # @func_b854
	.cfi_startproc
# %bb.0:                                # %b854
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	32(%esp), %ebx
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB16_12
# %bb.1:                                # %b842
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	console+4, %eax
	cmpl	$13, %ebx
	je	.LBB16_2
# %bb.8:                                # %b850
	cmpl	$10, %ebx
	je	.LBB16_2
# %bb.9:                                # %b852
	movzbl	console+5, %ecx
	movzbl	console+6, %edx
	leal	(%eax,%eax,4), %esi
	shll	$5, %esi
	movzbl	%bl, %edi
	shll	$8, %edx
	orl	%edi, %edx
	movw	%dx, 753664(%esi,%ecx,2)
	movzbl	console+3, %edx
	incl	%ecx
	cmpl	%edx, %ecx
	ja	.LBB16_2
# %bb.10:                               # %b2686
	movb	%cl, console+5
	jmp	.LBB16_11
.LBB16_12:                              # %c32
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	jmp	func_b845                       # TAILCALL
.LBB16_2:                               # %b847
	.cfi_def_cfa_offset 32
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB16_4
# %bb.3:                                # %b2682
	movb	%al, console+4
	jmp	.LBB16_11
.LBB16_4:                               # %b849
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB16_6
	.p2align	4, 0x90
.LBB16_5:                               # %b2673
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%ebp), %eax
	movl	%eax, 8(%esp)                   # 4-byte Spill
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b702
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB16_5
.LBB16_6:                               # %b700.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB16_7:                               # %b700
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB16_7
.LBB16_11:                              # %b1473
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end16:
	.size	func_b854, .Lfunc_end16-func_b854
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2244
	.type	func_b2244,@function
func_b2244:                             # @func_b2244
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	jmp	.LBB17_1
	.p2align	4, 0x90
.LBB17_7:                               # %b2253
                                        #   in Loop: Header=BB17_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB17_8:                               # %b2244
                                        #   in Loop: Header=BB17_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB17_1:                               # %b2244
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB17_2
# %bb.6:                                # %b2246
                                        #   in Loop: Header=BB17_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB17_7
# %bb.5:                                # %b2251
                                        #   in Loop: Header=BB17_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB17_8
.LBB17_2:                               # %b808
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB17_4
# %bb.3:                                # %b2243
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB17_4:                               # %b1473
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end17:
	.size	func_b2244, .Lfunc_end17-func_b2244
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b702
	.type	func_b702,@function
func_b702:                              # @func_b702
	.cfi_startproc
# %bb.0:
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movl	16(%esp), %eax
	movl	12(%esp), %ecx
	movl	24(%esp), %esi
	movl	20(%esp), %edx
	leal	(%edx,%edx,4), %edx
	shll	$5, %edx
	leal	753664(%edx,%ecx,2), %edx
	leal	(%esi,%esi,4), %esi
	shll	$5, %esi
	leal	753664(%esi,%ecx,2), %esi
	.p2align	4, 0x90
.LBB18_1:                               # %b702
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%esi), %edi
	movw	%di, (%edx)
	incl	%ecx
	addl	$2, %edx
	addl	$2, %esi
	cmpl	%eax, %ecx
	jbe	.LBB18_1
# %bb.2:                                # %b1473
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end18:
	.size	func_b702, .Lfunc_end18-func_b702
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2695
	.type	func_b2695,@function
func_b2695:                             # @func_b2695
	.cfi_startproc
# %bb.0:
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	pushl	%eax
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movl	28(%esp), %esi
	movl	24(%esp), %eax
	movl	20(%esp), %edi
	movl	16(%esp), %ecx
	.p2align	4, 0x90
.LBB19_1:                               # %b2695
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB19_3
# %bb.2:                                # %b2697
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	%esi, (%esp)
	calll	func_b854
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB19_1
.LBB19_3:                               # %b1473
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end19:
	.size	func_b2695, .Lfunc_end19-func_b2695
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2200
	.type	func_b2200,@function
func_b2200:                             # @func_b2200
	.cfi_startproc
# %bb.0:                                # %b2200
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movzbl	str13, %eax
	testl	%eax, %eax
	je	.LBB20_1
# %bb.7:                                # %b2202
	movl	$str13+1, %esi
	.p2align	4, 0x90
.LBB20_8:                               # %b2199
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%esp)
	calll	func_b854
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB20_1
# %bb.9:                                # %b2197
                                        #   in Loop: Header=BB20_8 Depth=1
	incl	%esi
	jmp	.LBB20_8
.LBB20_1:                               # %b2192
	movl	32(%esp), %esi
	movzbl	str1, %ebx
	testl	%ebx, %ebx
	je	.LBB20_2
# %bb.10:                               # %b2194
	movl	$str1+1, %edi
	.p2align	4, 0x90
.LBB20_11:                              # %b2186
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB20_13
# %bb.12:                               # %b2189
                                        #   in Loop: Header=BB20_11 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB20_13:                              # %b2191
                                        #   in Loop: Header=BB20_11 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB20_2
# %bb.14:                               # %b2184
                                        #   in Loop: Header=BB20_11 Depth=1
	incl	%edi
	jmp	.LBB20_11
.LBB20_2:                               # %b1131
	movl	%esi, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1034
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB20_3
# %bb.15:                               # %b2181
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB20_16:                              # %b2173
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB20_18
# %bb.17:                               # %b2176
                                        #   in Loop: Header=BB20_16 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB20_18:                              # %b2178
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB20_3
# %bb.19:                               # %b2171
                                        #   in Loop: Header=BB20_16 Depth=1
	incl	%edi
	jmp	.LBB20_16
.LBB20_3:                               # %b2160
	movl	36(%esp), %edi
	movzbl	str7, %ebp
	testl	%ebp, %ebp
	je	.LBB20_4
# %bb.20:                               # %b2162
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str7+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebp
	jne	.LBB20_22
# %bb.21:                               # %b2166
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB20_22:                              # %b2168
	movl	%ebp, (%esp)
	calll	func_b845
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	calll	func_b2144
	jmp	.LBB20_26
.LBB20_4:                               # %b1385
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str8, %ebp
	testl	%ebp, %ebp
	je	.LBB20_5
# %bb.23:                               # %b2134
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str8+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebp
	jne	.LBB20_25
# %bb.24:                               # %b2138
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB20_25:                              # %b2140
	movl	%ebp, (%esp)
	calll	func_b845
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	calll	func_b2116
	jmp	.LBB20_26
.LBB20_5:                               # %b1386
	movl	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB20_26
# %bb.6:                                # %b2110
	movl	%eax, (%esp)
	movl	$str9+1, 4(%esp)
	calll	func_b2104
.LBB20_26:                              # %b2140
	movzbl	str3, %edi
	testl	%edi, %edi
	je	.LBB20_32
# %bb.27:                               # %b2156
	movl	$str3+1, %ebx
	.p2align	4, 0x90
.LBB20_28:                              # %b2086
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %edi
	jne	.LBB20_30
# %bb.29:                               # %b2089
                                        #   in Loop: Header=BB20_28 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB20_30:                              # %b2091
                                        #   in Loop: Header=BB20_28 Depth=1
	movl	%edi, (%esp)
	calll	func_b845
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB20_32
# %bb.31:                               # %b2084
                                        #   in Loop: Header=BB20_28 Depth=1
	incl	%ebx
	jmp	.LBB20_28
.LBB20_32:                              # %b792
	incl	%esi
	movl	%esi, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end20:
	.size	func_b2200, .Lfunc_end20-func_b2200
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2212
	.type	func_b2212,@function
func_b2212:                             # @func_b2212
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	44(%esp), %edi
	movl	40(%esp), %esi
	movl	36(%esp), %ebx
	movl	32(%esp), %ebp
	.p2align	4, 0x90
.LBB21_1:                               # %b2212
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB21_3
# %bb.2:                                # %b2592
                                        #   in Loop: Header=BB21_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_4
	.p2align	4, 0x90
.LBB21_3:                               # %b2593
                                        #   in Loop: Header=BB21_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_4:                               # %b2203
                                        #   in Loop: Header=BB21_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB21_5
# %bb.6:                                # %b2205
                                        #   in Loop: Header=BB21_1 Depth=1
	incl	%ebx
	jmp	.LBB21_1
.LBB21_5:                               # %c283
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b2200
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end21:
	.size	func_b2212, .Lfunc_end21-func_b2212
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1034
	.type	func_b1034,@function
func_b1034:                             # @func_b1034
	.cfi_startproc
# %bb.0:                                # %b1034
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	36(%esp), %ecx
	movl	32(%esp), %esi
	movl	$-858993459, %edi               # imm = 0xCCCCCCCD
	movl	%ecx, %eax
	mull	%edi
	shrl	$2, %edx
	andl	$-2, %edx
	leal	(%edx,%edx,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	$9, %eax
	ja	.LBB22_2
# %bb.1:                                # %b1707
	addb	$48, %al
	jmp	.LBB22_3
.LBB22_2:                               # %b1708
	addb	$87, %al
.LBB22_3:                               # %b1708
	movb	%al, itoaBuf
	movl	%ecx, %eax
	mull	%edi
	movl	%edx, %ecx
	shrl	$3, %ecx
	je	.LBB22_7
# %bb.4:                                # %b1241.preheader
	movl	$1, %ebp
	movl	$-858993459, %ebx               # imm = 0xCCCCCCCD
	.p2align	4, 0x90
.LBB22_5:                               # %b1241
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edi
	movl	%ecx, %eax
	mull	%ebx
	shrl	$2, %edx
	andl	$-2, %edx
	leal	(%edx,%edx,4), %edx
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	$10, %eax
	jae	.LBB22_10
# %bb.6:                                # %b1538
                                        #   in Loop: Header=BB22_5 Depth=1
	addl	$48, %eax
	jmp	.LBB22_11
	.p2align	4, 0x90
.LBB22_10:                              # %b1540
                                        #   in Loop: Header=BB22_5 Depth=1
	addl	$87, %eax
.LBB22_11:                              # %b1539
                                        #   in Loop: Header=BB22_5 Depth=1
	movzbl	%al, %eax
	movb	%al, itoaBuf(%edi)
	leal	1(%edi), %ebp
	cmpl	$31, %ebp
	ja	.LBB22_13
# %bb.12:                               # %b2708
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, %ecx
	shrl	$3, %ecx
	jne	.LBB22_5
.LBB22_13:                              # %b1244
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB22_14:                              # %b1239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%edi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%edi
	jns	.LBB22_14
# %bb.15:                               # %b1473
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	jmp	.LBB22_16
.LBB22_7:                               # %b2702
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB22_9
# %bb.8:                                # %b2704
	movl	$1, %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_9:                               # %b1303
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
.LBB22_16:                              # %b1473
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end22:
	.size	func_b1034, .Lfunc_end22-func_b1034
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2144
	.type	func_b2144,@function
func_b2144:                             # @func_b2144
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	jmp	.LBB23_1
	.p2align	4, 0x90
.LBB23_7:                               # %b2153
                                        #   in Loop: Header=BB23_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_8:                               # %b2144
                                        #   in Loop: Header=BB23_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_1:                               # %b2144
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_2
# %bb.6:                                # %b2146
                                        #   in Loop: Header=BB23_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_7
# %bb.5:                                # %b2151
                                        #   in Loop: Header=BB23_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_8
.LBB23_2:                               # %b802
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	(%esi)
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str8, %ebx
	testl	%ebx, %ebx
	je	.LBB23_3
# %bb.10:                               # %b2143
	movl	$str8+1, %edi
	.p2align	4, 0x90
.LBB23_11:                              # %b2120
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_13
# %bb.12:                               # %b2123
                                        #   in Loop: Header=BB23_11 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_14
	.p2align	4, 0x90
.LBB23_13:                              # %b2125
                                        #   in Loop: Header=BB23_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_14:                              # %b2116
                                        #   in Loop: Header=BB23_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_3
# %bb.15:                               # %b2118
                                        #   in Loop: Header=BB23_11 Depth=1
	incl	%edi
	jmp	.LBB23_11
.LBB23_3:                               # %b800
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	4(%esi)
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB23_4
# %bb.9:                                # %b2115
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_4:                               # %b1473
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end23:
	.size	func_b2144, .Lfunc_end23-func_b2144
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2116
	.type	func_b2116,@function
func_b2116:                             # @func_b2116
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	jmp	.LBB24_1
	.p2align	4, 0x90
.LBB24_7:                               # %b2125
                                        #   in Loop: Header=BB24_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_8:                               # %b2116
                                        #   in Loop: Header=BB24_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB24_1:                               # %b2116
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.6:                                # %b2118
                                        #   in Loop: Header=BB24_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_7
# %bb.5:                                # %b2123
                                        #   in Loop: Header=BB24_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_8
.LBB24_2:                               # %b800
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	4(%esi)
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB24_4
# %bb.3:                                # %b2115
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2104
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB24_4:                               # %b1473
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end24:
	.size	func_b2116, .Lfunc_end24-func_b2116
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2052
	.type	func_b2052,@function
func_b2052:                             # @func_b2052
	.cfi_startproc
# %bb.0:                                # %b2052
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movzbl	str11, %eax
	testl	%eax, %eax
	je	.LBB25_1
# %bb.7:                                # %b2054
	movl	$str11+1, %esi
	.p2align	4, 0x90
.LBB25_8:                               # %b2051
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%esp)
	calll	func_b854
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB25_1
# %bb.9:                                # %b2049
                                        #   in Loop: Header=BB25_8 Depth=1
	incl	%esi
	jmp	.LBB25_8
.LBB25_1:                               # %b2044
	movl	32(%esp), %esi
	movzbl	str1, %ebx
	testl	%ebx, %ebx
	je	.LBB25_2
# %bb.10:                               # %b2046
	movl	$str1+1, %edi
	.p2align	4, 0x90
.LBB25_11:                              # %b2038
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB25_13
# %bb.12:                               # %b2041
                                        #   in Loop: Header=BB25_11 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB25_13:                              # %b2043
                                        #   in Loop: Header=BB25_11 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_2
# %bb.14:                               # %b2036
                                        #   in Loop: Header=BB25_11 Depth=1
	incl	%edi
	jmp	.LBB25_11
.LBB25_2:                               # %b1067
	movl	%esi, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1034
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB25_3
# %bb.15:                               # %b2033
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB25_16:                              # %b2025
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebx, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebx
	jne	.LBB25_18
# %bb.17:                               # %b2028
                                        #   in Loop: Header=BB25_16 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB25_18:                              # %b2030
                                        #   in Loop: Header=BB25_16 Depth=1
	movl	%ebx, (%esp)
	calll	func_b845
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_3
# %bb.19:                               # %b2023
                                        #   in Loop: Header=BB25_16 Depth=1
	incl	%edi
	jmp	.LBB25_16
.LBB25_3:                               # %b2012
	movl	36(%esp), %edi
	movzbl	str4, %ebp
	testl	%ebp, %ebp
	je	.LBB25_4
# %bb.20:                               # %b2014
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str4+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebp
	jne	.LBB25_22
# %bb.21:                               # %b2018
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB25_22:                              # %b2020
	movl	%ebp, (%esp)
	calll	func_b845
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	calll	func_b1996
	jmp	.LBB25_26
.LBB25_4:                               # %b1370
	movl	(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str5, %ebp
	testl	%ebp, %ebp
	je	.LBB25_5
# %bb.23:                               # %b1986
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str5+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebp
	jne	.LBB25_25
# %bb.24:                               # %b1990
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB25_25:                              # %b1992
	movl	%ebp, (%esp)
	calll	func_b845
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	calll	func_b1968
	jmp	.LBB25_26
.LBB25_5:                               # %b1371
	movl	4(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
	movzbl	str6, %ebp
	testl	%ebp, %ebp
	je	.LBB25_6
# %bb.32:                               # %b1958
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str6+1, %ebx
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%ebp, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %ebp
	jne	.LBB25_34
# %bb.33:                               # %b1962
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB25_34:                              # %b1964
	movl	%ebp, (%esp)
	calll	func_b845
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	calll	func_b1940
	jmp	.LBB25_26
.LBB25_6:                               # %b1372
	movl	8(%edi), %eax
	movl	%eax, 4(%esp)
	movl	$32, (%esp)
	calll	func_b1021
.LBB25_26:                              # %b1992
	movzbl	str3, %edi
	testl	%edi, %edi
	je	.LBB25_35
# %bb.27:                               # %b2008
	movl	$str3+1, %ebx
	.p2align	4, 0x90
.LBB25_28:                              # %b1929
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b694
	cmpl	$10, %edi
	jne	.LBB25_30
# %bb.29:                               # %b1932
                                        #   in Loop: Header=BB25_28 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b694
.LBB25_30:                              # %b1934
                                        #   in Loop: Header=BB25_28 Depth=1
	movl	%edi, (%esp)
	calll	func_b845
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB25_35
# %bb.31:                               # %b1927
                                        #   in Loop: Header=BB25_28 Depth=1
	incl	%ebx
	jmp	.LBB25_28
.LBB25_35:                              # %b792
	incl	%esi
	movl	%esi, %eax
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end25:
	.size	func_b2052, .Lfunc_end25-func_b2052
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2064
	.type	func_b2064,@function
func_b2064:                             # @func_b2064
	.cfi_startproc
# %bb.0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	44(%esp), %edi
	movl	40(%esp), %esi
	movl	36(%esp), %ebx
	movl	32(%esp), %ebp
	.p2align	4, 0x90
.LBB26_1:                               # %b2064
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB26_3
# %bb.2:                                # %b2584
                                        #   in Loop: Header=BB26_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_4
	.p2align	4, 0x90
.LBB26_3:                               # %b2585
                                        #   in Loop: Header=BB26_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_4:                               # %b2055
                                        #   in Loop: Header=BB26_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB26_5
# %bb.6:                                # %b2057
                                        #   in Loop: Header=BB26_1 Depth=1
	incl	%ebx
	jmp	.LBB26_1
.LBB26_5:                               # %c200
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b2052
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end26:
	.size	func_b2064, .Lfunc_end26-func_b2064
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1996
	.type	func_b1996,@function
func_b1996:                             # @func_b1996
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	jmp	.LBB27_1
	.p2align	4, 0x90
.LBB27_8:                               # %b2005
                                        #   in Loop: Header=BB27_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_9:                               # %b1996
                                        #   in Loop: Header=BB27_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_1:                               # %b1996
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB27_2
# %bb.7:                                # %b1998
                                        #   in Loop: Header=BB27_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_8
# %bb.6:                                # %b2003
                                        #   in Loop: Header=BB27_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_9
.LBB27_2:                               # %b790
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	(%esi)
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str5, %ebx
	testl	%ebx, %ebx
	je	.LBB27_3
# %bb.10:                               # %b1995
	movl	$str5+1, %edi
	.p2align	4, 0x90
.LBB27_11:                              # %b1972
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_21
# %bb.12:                               # %b1975
                                        #   in Loop: Header=BB27_11 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_22
	.p2align	4, 0x90
.LBB27_21:                              # %b1977
                                        #   in Loop: Header=BB27_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_22:                              # %b1968
                                        #   in Loop: Header=BB27_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB27_3
# %bb.23:                               # %b1970
                                        #   in Loop: Header=BB27_11 Depth=1
	incl	%edi
	jmp	.LBB27_11
.LBB27_3:                               # %b788
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	4(%esi)
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str6, %ebx
	testl	%ebx, %ebx
	je	.LBB27_4
# %bb.18:                               # %b1967
	movl	$str6+1, %edi
	.p2align	4, 0x90
.LBB27_19:                              # %b1944
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_24
# %bb.20:                               # %b1947
                                        #   in Loop: Header=BB27_19 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_25
	.p2align	4, 0x90
.LBB27_24:                              # %b1949
                                        #   in Loop: Header=BB27_19 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_25:                              # %b1940
                                        #   in Loop: Header=BB27_19 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB27_4
# %bb.26:                               # %b1942
                                        #   in Loop: Header=BB27_19 Depth=1
	incl	%edi
	jmp	.LBB27_19
.LBB27_4:                               # %b784
	movl	8(%esi), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	jae	.LBB27_13
# %bb.5:                                # %b1713
	orb	$48, %cl
	jmp	.LBB27_14
.LBB27_13:                              # %b1714
	addb	$87, %cl
.LBB27_14:                              # %b1714
	movb	%cl, itoaBuf
	shrl	$4, %eax
	je	.LBB27_27
# %bb.15:                               # %b1251.preheader
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB27_16:                              # %b1251
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	jae	.LBB27_30
# %bb.17:                               # %b1546
                                        #   in Loop: Header=BB27_16 Depth=1
	orl	$48, %ecx
	jmp	.LBB27_31
	.p2align	4, 0x90
.LBB27_30:                              # %b1548
                                        #   in Loop: Header=BB27_16 Depth=1
	addl	$87, %ecx
.LBB27_31:                              # %b1547
                                        #   in Loop: Header=BB27_16 Depth=1
	movb	%cl, itoaBuf(%esi)
	leal	1(%esi), %ecx
	cmpl	$32, %ecx
	jae	.LBB27_33
# %bb.32:                               # %b2720
                                        #   in Loop: Header=BB27_16 Depth=1
	shrl	$4, %eax
	jne	.LBB27_16
.LBB27_33:                              # %b1244
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB27_34:                              # %b1239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB27_34
	jmp	.LBB27_35
.LBB27_27:                              # %b2702
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB27_29
# %bb.28:                               # %b2704
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_29:                              # %b1303
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_35:                              # %b1473
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end27:
	.size	func_b1996, .Lfunc_end27-func_b1996
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1968
	.type	func_b1968,@function
func_b1968:                             # @func_b1968
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	jmp	.LBB28_1
	.p2align	4, 0x90
.LBB28_15:                              # %b1977
                                        #   in Loop: Header=BB28_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_16:                              # %b1968
                                        #   in Loop: Header=BB28_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB28_1:                               # %b1968
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB28_2
# %bb.14:                               # %b1970
                                        #   in Loop: Header=BB28_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB28_15
# %bb.13:                               # %b1975
                                        #   in Loop: Header=BB28_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_16
.LBB28_2:                               # %b788
	.cfi_def_cfa_offset 16
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	4(%esi)
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1021
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str6, %ebx
	testl	%ebx, %ebx
	je	.LBB28_3
# %bb.10:                               # %b1967
	movl	$str6+1, %edi
	.p2align	4, 0x90
.LBB28_11:                              # %b1944
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB28_17
# %bb.12:                               # %b1947
                                        #   in Loop: Header=BB28_11 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_18
	.p2align	4, 0x90
.LBB28_17:                              # %b1949
                                        #   in Loop: Header=BB28_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_18:                              # %b1940
                                        #   in Loop: Header=BB28_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB28_3
# %bb.19:                               # %b1942
                                        #   in Loop: Header=BB28_11 Depth=1
	incl	%edi
	jmp	.LBB28_11
.LBB28_3:                               # %b784
	movl	8(%esi), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	jae	.LBB28_5
# %bb.4:                                # %b1713
	orb	$48, %cl
	jmp	.LBB28_6
.LBB28_5:                               # %b1714
	addb	$87, %cl
.LBB28_6:                               # %b1714
	movb	%cl, itoaBuf
	shrl	$4, %eax
	je	.LBB28_20
# %bb.7:                                # %b1251.preheader
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB28_8:                               # %b1251
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	jae	.LBB28_23
# %bb.9:                                # %b1546
                                        #   in Loop: Header=BB28_8 Depth=1
	orl	$48, %ecx
	jmp	.LBB28_24
	.p2align	4, 0x90
.LBB28_23:                              # %b1548
                                        #   in Loop: Header=BB28_8 Depth=1
	addl	$87, %ecx
.LBB28_24:                              # %b1547
                                        #   in Loop: Header=BB28_8 Depth=1
	movb	%cl, itoaBuf(%esi)
	leal	1(%esi), %ecx
	cmpl	$32, %ecx
	jae	.LBB28_26
# %bb.25:                               # %b2720
                                        #   in Loop: Header=BB28_8 Depth=1
	shrl	$4, %eax
	jne	.LBB28_8
.LBB28_26:                              # %b1244
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB28_27:                              # %b1239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB28_27
	jmp	.LBB28_28
.LBB28_20:                              # %b2702
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB28_22
# %bb.21:                               # %b2704
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB28_22:                              # %b1303
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB28_28:                              # %b1473
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end28:
	.size	func_b1968, .Lfunc_end28-func_b1968
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1940
	.type	func_b1940,@function
func_b1940:                             # @func_b1940
	.cfi_startproc
# %bb.0:
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	20(%esp), %esi
	movl	16(%esp), %edi
	jmp	.LBB29_1
	.p2align	4, 0x90
.LBB29_11:                              # %b1949
                                        #   in Loop: Header=BB29_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_12:                              # %b1940
                                        #   in Loop: Header=BB29_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b845
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_1:                               # %b1940
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB29_2
# %bb.10:                               # %b1942
                                        #   in Loop: Header=BB29_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%edi
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_11
# %bb.9:                                # %b1947
                                        #   in Loop: Header=BB29_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b694
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_12
.LBB29_2:                               # %b784
	.cfi_def_cfa_offset 16
	movl	8(%esi), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	jae	.LBB29_4
# %bb.3:                                # %b1713
	orb	$48, %cl
	jmp	.LBB29_5
.LBB29_4:                               # %b1714
	addb	$87, %cl
.LBB29_5:                               # %b1714
	movb	%cl, itoaBuf
	shrl	$4, %eax
	je	.LBB29_13
# %bb.6:                                # %b1251.preheader
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB29_7:                               # %b1251
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %esi
	movl	%eax, %ecx
	andl	$15, %ecx
	cmpl	$10, %ecx
	jae	.LBB29_16
# %bb.8:                                # %b1546
                                        #   in Loop: Header=BB29_7 Depth=1
	orl	$48, %ecx
	jmp	.LBB29_17
	.p2align	4, 0x90
.LBB29_16:                              # %b1548
                                        #   in Loop: Header=BB29_7 Depth=1
	addl	$87, %ecx
.LBB29_17:                              # %b1547
                                        #   in Loop: Header=BB29_7 Depth=1
	movb	%cl, itoaBuf(%esi)
	leal	1(%esi), %ecx
	cmpl	$31, %ecx
	ja	.LBB29_19
# %bb.18:                               # %b2720
                                        #   in Loop: Header=BB29_7 Depth=1
	shrl	$4, %eax
	jne	.LBB29_7
.LBB29_19:                              # %b1244
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB29_20:                              # %b1239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB29_20
	jmp	.LBB29_21
.LBB29_13:                              # %b2702
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB29_15
# %bb.14:                               # %b2704
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b2695
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_15:                              # %b1303
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b854
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_21:                              # %b1473
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end29:
	.size	func_b1940, .Lfunc_end29-func_b1940
	.cfi_endproc
                                        # -- End function
	.type	.Lstr.22,@object                # @str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.22:
	.asciz	"]\n"
	.size	.Lstr.22, 3

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	" ["
	.size	.Lstr.21, 3

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"imgline"
	.size	.Lstr.23, 8

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	": "
	.size	.Lstr.20, 3

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"cmdline"
	.size	.Lstr.19, 8

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	" "
	.size	.Lstr.18, 2

	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"Strings:\n"
	.size	.Lstr.17, 10

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"\n"
	.size	.Lstr.11, 2

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"]"
	.size	.Lstr.16, 2

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	"-0x"
	.size	.Lstr.15, 4

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"[0x"
	.size	.Lstr.14, 4

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"]: "
	.size	.Lstr.7, 4

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"["
	.size	.Lstr.6, 2

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"mmap"
	.size	.Lstr.13, 5

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	" "
	.size	.Lstr.4, 2

	.type	.Lstr.24,@object                # @str.24
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.24:
	.asciz	"Halting kernel, returning to mimgload\n"
	.size	.Lstr.24, 39

	.type	.Lstr.12,@object                # @str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.12:
	.asciz	"Memory map:\n"
	.size	.Lstr.12, 13

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"], entry 0x"
	.size	.Lstr.10, 12

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"-0x"
	.size	.Lstr.9, 4

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"[0x"
	.size	.Lstr.8, 4

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"header"
	.size	.Lstr.5, 7

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"Headers:\n"
	.size	.Lstr.3, 10

	.type	.Lstr.2,@object                 # @str.2
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.2:
	.asciz	"Trivial kernel has booted!\n"
	.size	.Lstr.2, 28

	.type	raw.0,@object                   # @raw.0
	.local	raw.0
	.comm	raw.0,32,1
	.type	raw.1,@object                   # @raw.1
	.local	raw.1
	.comm	raw.1,7,8
.set console, raw.1
.set itoaBuf, raw.0
.set str21, .Lstr.2
	.size	str21, 1
.set str10, .Lstr.3
	.size	str10, 1
.set str12, .Lstr.12
	.size	str12, 1
.set str22, .Lstr.24
	.size	str22, 1
.set str14, .Lstr.17
	.size	str14, 1
.set str17, .Lstr.18
	.size	str17, 1
.set str15, .Lstr.19
	.size	str15, 1
.set str18, .Lstr.20
	.size	str18, 1
.set str16, .Lstr.23
	.size	str16, 1
.set str19, .Lstr.21
	.size	str19, 1
.set str20, .Lstr.22
	.size	str20, 1
.set str0, .Lstr.4
	.size	str0, 1
.set str13, .Lstr.13
	.size	str13, 1
.set str1, .Lstr.6
	.size	str1, 1
.set str2, .Lstr.7
	.size	str2, 1
.set str7, .Lstr.14
	.size	str7, 1
.set str8, .Lstr.15
	.size	str8, 1
.set str9, .Lstr.16
	.size	str9, 1
.set str3, .Lstr.11
	.size	str3, 1
.set str11, .Lstr.5
	.size	str11, 1
.set str4, .Lstr.8
	.size	str4, 1
.set str5, .Lstr.9
	.size	str5, 1
.set str6, .Lstr.10
	.size	str6, 1
	.section	".note.GNU-stack","",@progbits
