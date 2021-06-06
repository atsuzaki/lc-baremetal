	.text
	.file	"llvm-link"
	.globl	yield                           # -- Begin function yield
	.p2align	4, 0x90
	.type	yield,@function
yield:                                  # @yield
	.cfi_startproc
# %bb.0:                                # %yield
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movzbl	current, %eax
	leal	(%eax,%eax,8), %eax
	leal	users(,%eax,8), %eax
	movl	%eax, (%esp)
	calll	returnTo
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end0:
	.size	yield, .Lfunc_end0-yield
	.cfi_endproc
                                        # -- End function
	.globl	kputc                           # -- Begin function kputc
	.p2align	4, 0x90
	.type	kputc,@function
kputc:                                  # @kputc
	.cfi_startproc
# %bb.0:
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movzbl	current, %ecx
	shll	$3, %ecx
	movl	users+28(%ecx,%ecx,8), %edi
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	leal	users(%ecx,%ecx,8), %esi
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%edi, 8(%esp)
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	calll	func_b1572
	cmpl	$10, %edi
	jne	.LBB1_2
# %bb.1:                                # %b2749
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b1572
.LBB1_2:                                # %b2750
	movl	%edi, (%esp)
	calll	func_b1950
	movl	%esi, (%esp)
	calll	returnTo
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end1:
	.size	kputc, .Lfunc_end1-kputc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1572
	.type	func_b1572,@function
func_b1572:                             # @func_b1572
	.cfi_startproc
# %bb.0:
	movl	12(%esp), %ecx
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	cmpl	%edx, %eax
	jne	.LBB2_3
	.p2align	4, 0x90
.LBB2_2:                                # %b258
                                        # =>This Inner Loop Header: Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	xorl	%edx, %edx
	cmpl	%edx, %eax
	je	.LBB2_2
.LBB2_3:                                # %b4563
	movw	$1016, %dx                      # imm = 0x3F8
	movl	%ecx, %eax
	#APP
	outb	%al, %dx
	#NO_APP
	retl
.Lfunc_end2:
	.size	func_b1572, .Lfunc_end2-func_b1572
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1950
	.type	func_b1950,@function
func_b1950:                             # @func_b1950
	.cfi_startproc
# %bb.0:                                # %b1950
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
	je	.LBB3_1
# %bb.7:                                # %b1955
	cmpl	$10, %edx
	je	.LBB3_1
# %bb.8:                                # %b1957
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
	ja	.LBB3_1
# %bb.9:                                # %b6370
	movb	%cl, console+5
	jmp	.LBB3_10
.LBB3_1:                                # %b1952
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB3_3
# %bb.2:                                # %b6366
	movb	%al, console+4
	jmp	.LBB3_10
.LBB3_3:                                # %b1954
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB3_5
	.p2align	4, 0x90
.LBB3_4:                                # %b6357
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
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB3_4
.LBB3_5:                                # %b1578.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB3_6:                                # %b1578
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB3_6
.LBB3_10:                               # %b303
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
	.size	func_b1950, .Lfunc_end3-func_b1950
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1580
	.type	func_b1580,@function
func_b1580:                             # @func_b1580
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
.LBB4_1:                                # %b1580
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%esi), %edi
	movw	%di, (%edx)
	incl	%ecx
	addl	$2, %edx
	addl	$2, %esi
	cmpl	%eax, %ecx
	jbe	.LBB4_1
# %bb.2:                                # %b303
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end4:
	.size	func_b1580, .Lfunc_end4-func_b1580
	.cfi_endproc
                                        # -- End function
	.globl	keyboardInterrupt               # -- Begin function keyboardInterrupt
	.p2align	4, 0x90
	.type	keyboardInterrupt,@function
keyboardInterrupt:                      # @keyboardInterrupt
	.cfi_startproc
# %bb.0:                                # %keyboardInterrupt
	pushl	%esi
	.cfi_def_cfa_offset 8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -8
	movl	keyb_layout, %ecx
	#APP
	inb	$33, %al
	#NO_APP
	orb	$2, %al
	#APP
	outb	%al, $33
	#NO_APP
	movb	$97, %al
	#APP
	outb	%al, $32
	#NO_APP
	#APP
	inb	$33, %al
	#NO_APP
	andb	$-3, %al
	#APP
	outb	%al, $33
	#NO_APP
	#APP
	inb	$96, %al
	#NO_APP
	movzbl	%al, %eax
	testb	$-128, %al
	jne	.LBB5_2
# %bb.1:                                # %b1116
	movl	%eax, %edx
	andl	$127, %edx
	movzbl	(%ecx,%edx), %edx
	movzbl	753703, %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, 753702
	movb	%dl, keyDown
.LBB5_2:                                # %b1115
	movl	%eax, %edx
	shrl	$7, %edx
	cmpl	$1, %edx
	jne	.LBB5_4
# %bb.3:                                # %b1113
	andl	$127, %eax
	movb	(%ecx,%eax), %al
	movb	%al, keyUp
.LBB5_4:                                # %b1354
	movzbl	current, %eax
	leal	(%eax,%eax,8), %eax
	leal	users(,%eax,8), %eax
	movl	%eax, (%esp)
	calll	returnTo
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end5:
	.size	keyboardInterrupt, .Lfunc_end5-keyboardInterrupt
	.cfi_endproc
                                        # -- End function
	.globl	timerInterrupt                  # -- Begin function timerInterrupt
	.p2align	4, 0x90
	.type	timerInterrupt,@function
timerInterrupt:                         # @timerInterrupt
	.cfi_startproc
# %bb.0:                                # %timerInterrupt
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	ball, %esi
	#APP
	inb	$33, %al
	#NO_APP
	orb	$1, %al
	#APP
	outb	%al, $33
	#NO_APP
	movb	$96, %al
	#APP
	outb	%al, $32
	#NO_APP
	#APP
	inb	$33, %al
	#NO_APP
	andb	$-2, %al
	#APP
	outb	%al, $33
	#NO_APP
	movl	ticks, %ebx
	leal	1(%ebx), %eax
	movl	%eax, ticks
	calll	func_b1223
	cmpb	$54, keyDown
	movl	%ebx, 16(%esp)                  # 4-byte Spill
	jne	.LBB6_5
# %bb.1:                                # %b3632
	movzbl	keyUp, %eax
	cmpl	$54, %eax
	je	.LBB6_10
# %bb.2:                                # %b3734
	incl	objects+8
	cmpb	$52, keyDown
	jne	.LBB6_12
# %bb.3:                                # %b3765
	movzbl	keyUp, %eax
	cmpl	$52, %eax
	je	.LBB6_12
# %bb.4:                                # %b3778
	decl	objects+8
	jmp	.LBB6_12
.LBB6_5:                                # %b3633
	cmpb	$52, keyDown
	jne	.LBB6_7
# %bb.6:                                # %b3711
	movzbl	keyUp, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$52
	.cfi_adjust_cfa_offset 4
	calll	func_b2729
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB6_7:                                # %b3712
	testb	$15, %bl
	je	.LBB6_15
# %bb.8:                                # %b3333
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
	.p2align	4, 0x90
.LBB6_9:                                # %b6480
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB6_9
	jmp	.LBB6_71
.LBB6_10:                               # %b3735
	cmpb	$52, keyDown
	jne	.LBB6_12
# %bb.11:                               # %b3763
	movzbl	keyUp, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$52
	.cfi_adjust_cfa_offset 4
	calll	func_b2729
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB6_12:                               # %b3778
	testb	$15, %bl
	je	.LBB6_24
# %bb.13:                               # %b3626
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
	.p2align	4, 0x90
.LBB6_14:                               # %b6635
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB6_14
	jmp	.LBB6_111
.LBB6_15:                               # %b3263
	movb	headingTop, %dl
	movl	8(%esi), %ecx
	movl	12(%esi), %eax
	cmpb	$0, headingLeft
	je	.LBB6_36
# %bb.16:                               # %b3264
	decl	%ecx
	testb	$1, %dl
	je	.LBB6_55
# %bb.17:                               # %b3265
	leal	-1(%eax), %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 12(%esi)
	movl	$objects, %ecx
	cmpl	%esi, %ecx
	je	.LBB6_23
# %bb.18:                               # %b4621
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_23
# %bb.19:                               # %b4622
	testb	$2, %cl
	je	.LBB6_23
# %bb.20:                               # %b4623
	movl	objects+8, %ecx
	movl	8(%esi), %edx
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_23
# %bb.21:                               # %b4624
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_23
# %bb.22:                               # %b4625
	movl	objects+12, %ecx
	movl	12(%esi), %edx
	movl	4(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jb	.LBB6_32
.LBB6_23:                               # %b6599
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_69
	jmp	.LBB6_98
.LBB6_24:                               # %b3558
	movb	headingTop, %dl
	movl	8(%esi), %ecx
	movl	12(%esi), %eax
	cmpb	$0, headingLeft
	je	.LBB6_44
# %bb.25:                               # %b3559
	decl	%ecx
	testb	$1, %dl
	je	.LBB6_77
# %bb.26:                               # %b3560
	leal	-1(%eax), %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 12(%esi)
	movl	$objects, %ecx
	cmpl	%esi, %ecx
	je	.LBB6_97
# %bb.27:                               # %b4643
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_97
# %bb.28:                               # %b4644
	testb	$2, %cl
	je	.LBB6_97
# %bb.29:                               # %b4645
	movl	objects+8, %ecx
	movl	8(%esi), %edx
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_97
# %bb.30:                               # %b4646
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_97
# %bb.31:                               # %b4647
	movl	objects+12, %ecx
	movl	12(%esi), %edx
	movl	4(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_97
.LBB6_32:
	movl	objects+4, %edi
	addl	%edi, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_117
# %bb.33:                               # %b4627
	movl	objects+12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB6_35
# %bb.34:                               # %b3860
	movl	4(%esi), %edx
	addl	%eax, %edx
	addl	objects+4, %ecx
	cmpl	%ecx, %edx
	jb	.LBB6_187
.LBB6_35:                               # %b3833
	movb	$0, headingTop
	jmp	.LBB6_188
.LBB6_36:                               # %b3312
	incl	%ecx
	testb	$1, %dl
	je	.LBB6_62
# %bb.37:                               # %b3313
	leal	-1(%eax), %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 12(%esi)
	movl	$objects, %ecx
	cmpl	%esi, %ecx
	je	.LBB6_43
# %bb.38:                               # %b4607
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_43
# %bb.39:                               # %b4608
	testb	$2, %cl
	je	.LBB6_43
# %bb.40:                               # %b4609
	movl	objects+8, %ecx
	movl	8(%esi), %edx
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_43
# %bb.41:                               # %b4610
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_43
# %bb.42:                               # %b4611
	movl	objects+12, %ecx
	movl	12(%esi), %edx
	movl	4(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jb	.LBB6_51
.LBB6_43:                               # %b6537
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_69
	jmp	.LBB6_101
.LBB6_44:                               # %b3605
	incl	%ecx
	testb	$1, %dl
	je	.LBB6_87
# %bb.45:                               # %b3606
	leal	-1(%eax), %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 12(%esi)
	movl	$objects, %ecx
	cmpl	%esi, %ecx
	je	.LBB6_100
# %bb.46:                               # %b4633
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_100
# %bb.47:                               # %b4634
	testb	$2, %cl
	je	.LBB6_100
# %bb.48:                               # %b4635
	movl	objects+8, %ecx
	movl	8(%esi), %edx
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_100
# %bb.49:                               # %b4636
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_100
# %bb.50:                               # %b4637
	movl	objects+12, %ecx
	movl	12(%esi), %edx
	movl	4(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_100
.LBB6_51:
	movl	objects+4, %edi
	addl	%edi, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_126
# %bb.52:                               # %b4613
	movl	objects+12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB6_54
# %bb.53:                               # %b3924
	movl	4(%esi), %edx
	addl	%eax, %edx
	addl	objects+4, %ecx
	cmpl	%ecx, %edx
	jb	.LBB6_189
.LBB6_54:                               # %b3897
	movb	$0, headingTop
	jmp	.LBB6_190
.LBB6_55:                               # %b3302
	leal	1(%eax), %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 12(%esi)
	movl	$objects, %ecx
	cmpl	%esi, %ecx
	je	.LBB6_61
# %bb.56:                               # %b4614
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_61
# %bb.57:                               # %b4615
	testb	$2, %cl
	je	.LBB6_61
# %bb.58:                               # %b4616
	movl	objects+8, %ecx
	movl	8(%esi), %edx
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_61
# %bb.59:                               # %b4617
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_61
# %bb.60:                               # %b4618
	movl	objects+12, %ecx
	movl	12(%esi), %edx
	movl	4(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jb	.LBB6_83
.LBB6_61:                               # %b6568
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_69
	jmp	.LBB6_104
.LBB6_62:                               # %b3323
	leal	1(%eax), %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 12(%esi)
	movl	$objects, %ecx
	cmpl	%esi, %ecx
	je	.LBB6_68
# %bb.63:                               # %b4600
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_68
# %bb.64:                               # %b4601
	testb	$2, %cl
	je	.LBB6_68
# %bb.65:                               # %b4602
	movl	objects+8, %ecx
	movl	8(%esi), %edx
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_68
# %bb.66:                               # %b4603
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_68
# %bb.67:                               # %b4604
	movl	objects+12, %ecx
	movl	12(%esi), %edx
	movl	4(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jb	.LBB6_93
.LBB6_68:                               # %b6506
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_107
.LBB6_69:                               # %b3267
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
	.p2align	4, 0x90
.LBB6_70:                               # %b6487
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB6_70
.LBB6_71:                               # %b3334
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB6_73
	.p2align	4, 0x90
.LBB6_72:                               # %b6468
                                        #   in Loop: Header=BB6_73 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB6_164
.LBB6_73:                               # %b6470
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB6_72
# %bb.74:                               # %b3271
                                        #   in Loop: Header=BB6_73 Depth=1
	leal	objects(%eax,%eax,2), %ebx
	movl	8(%ebx), %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jb	.LBB6_153
# %bb.75:                               # %b3272
                                        #   in Loop: Header=BB6_73 Depth=1
	calll	func_b5082
	cmpl	%eax, %ebp
	ja	.LBB6_72
	jmp	.LBB6_76
.LBB6_77:                               # %b3595
	leal	1(%eax), %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 12(%esi)
	movl	$objects, %ecx
	cmpl	%esi, %ecx
	je	.LBB6_103
# %bb.78:                               # %b4638
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_103
# %bb.79:                               # %b4639
	testb	$2, %cl
	je	.LBB6_103
# %bb.80:                               # %b4640
	movl	objects+8, %ecx
	movl	8(%esi), %edx
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_103
# %bb.81:                               # %b4641
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_103
# %bb.82:                               # %b4642
	movl	objects+12, %ecx
	movl	12(%esi), %edx
	movl	4(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_103
.LBB6_83:
	movl	objects+4, %edi
	addl	%edi, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_135
# %bb.84:                               # %b4620
	movl	objects+12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB6_86
# %bb.85:                               # %b3892
	movl	4(%esi), %edx
	addl	%eax, %edx
	addl	objects+4, %ecx
	cmpl	%ecx, %edx
	jb	.LBB6_191
.LBB6_86:                               # %b3865
	movb	$1, headingTop
	jmp	.LBB6_192
.LBB6_87:                               # %b3616
	leal	1(%eax), %edx
	movl	%ecx, 8(%esi)
	movl	%edx, 12(%esi)
	movl	$objects, %ecx
	cmpl	%esi, %ecx
	je	.LBB6_106
# %bb.88:                               # %b4628
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_106
# %bb.89:                               # %b4629
	testb	$2, %cl
	je	.LBB6_106
# %bb.90:                               # %b4630
	movl	objects+8, %ecx
	movl	8(%esi), %edx
	movl	(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_106
# %bb.91:                               # %b4631
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_106
# %bb.92:                               # %b4632
	movl	objects+12, %ecx
	movl	12(%esi), %edx
	movl	4(%esi), %edi
	addl	%edx, %edi
	cmpl	%edi, %ecx
	jae	.LBB6_106
.LBB6_93:
	movl	objects+4, %edi
	addl	%edi, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_144
# %bb.94:                               # %b4606
	movl	objects+12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB6_96
# %bb.95:                               # %b3956
	movl	4(%esi), %edx
	addl	%eax, %edx
	addl	objects+4, %ecx
	cmpl	%ecx, %edx
	jb	.LBB6_193
.LBB6_96:                               # %b3929
	movb	$1, headingTop
	jmp	.LBB6_194
.LBB6_97:                               # %b6656
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_109
.LBB6_98:                               # %b6601
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
.LBB6_99:                               # %b3031
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3181
	jmp	.LBB6_163
.LBB6_100:                              # %b6650
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_109
.LBB6_101:                              # %b6539
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
.LBB6_102:                              # %b3031
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3220
	jmp	.LBB6_163
.LBB6_103:                              # %b6653
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_109
.LBB6_104:                              # %b6570
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
.LBB6_105:                              # %b3031
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3201
	jmp	.LBB6_163
.LBB6_106:                              # %b6647
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_109
.LBB6_107:                              # %b6508
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
.LBB6_108:                              # %b3031
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3239
	jmp	.LBB6_163
.LBB6_109:                              # %b3562
	.cfi_def_cfa_offset 48
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
	.p2align	4, 0x90
.LBB6_110:                              # %b6642
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB6_110
.LBB6_111:                              # %b3627
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB6_113
	.p2align	4, 0x90
.LBB6_112:                              # %b6626
                                        #   in Loop: Header=BB6_113 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB6_164
.LBB6_113:                              # %b6628
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB6_112
# %bb.114:                              # %b3566
                                        #   in Loop: Header=BB6_113 Depth=1
	leal	objects(%eax,%eax,2), %ebx
	movl	8(%ebx), %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jb	.LBB6_153
# %bb.115:                              # %b3567
                                        #   in Loop: Header=BB6_113 Depth=1
	calll	func_b5082
	cmpl	%eax, %ebp
	ja	.LBB6_112
.LBB6_76:
	movl	%eax, %esi
	jmp	.LBB6_154
.LBB6_117:                              # %b6617
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_98
# %bb.118:                              # %b3834
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
.LBB6_119:                              # %b6612
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB6_119
# %bb.120:                              # %b3835
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB6_122
.LBB6_121:                              # %b6603
                                        #   in Loop: Header=BB6_122 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB6_164
.LBB6_122:                              # %b6605
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB6_121
# %bb.123:                              # %b3838
                                        #   in Loop: Header=BB6_122 Depth=1
	leal	objects(%eax,%eax,2), %ebx
	movl	8(%ebx), %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jb	.LBB6_153
# %bb.124:                              # %b3839
                                        #   in Loop: Header=BB6_122 Depth=1
	calll	func_b5082
	cmpl	%eax, %ebp
	ja	.LBB6_121
	jmp	.LBB6_76
.LBB6_126:                              # %b6555
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_101
# %bb.127:                              # %b3898
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
.LBB6_128:                              # %b6550
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB6_128
# %bb.129:                              # %b3899
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB6_131
.LBB6_130:                              # %b6541
                                        #   in Loop: Header=BB6_131 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB6_164
.LBB6_131:                              # %b6543
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB6_130
# %bb.132:                              # %b3902
                                        #   in Loop: Header=BB6_131 Depth=1
	leal	objects(%eax,%eax,2), %ebx
	movl	8(%ebx), %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jb	.LBB6_153
# %bb.133:                              # %b3903
                                        #   in Loop: Header=BB6_131 Depth=1
	calll	func_b5082
	cmpl	%eax, %ebp
	ja	.LBB6_130
	jmp	.LBB6_76
.LBB6_135:                              # %b6586
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_104
# %bb.136:                              # %b3866
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
.LBB6_137:                              # %b6581
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB6_137
# %bb.138:                              # %b3867
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB6_140
.LBB6_139:                              # %b6572
                                        #   in Loop: Header=BB6_140 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB6_164
.LBB6_140:                              # %b6574
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB6_139
# %bb.141:                              # %b3870
                                        #   in Loop: Header=BB6_140 Depth=1
	leal	objects(%eax,%eax,2), %ebx
	movl	8(%ebx), %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jb	.LBB6_153
# %bb.142:                              # %b3871
                                        #   in Loop: Header=BB6_140 Depth=1
	calll	func_b5082
	cmpl	%eax, %ebp
	ja	.LBB6_139
	jmp	.LBB6_76
.LBB6_144:                              # %b6524
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_107
# %bb.145:                              # %b3930
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
.LBB6_146:                              # %b6519
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB6_146
# %bb.147:                              # %b3931
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB6_149
.LBB6_148:                              # %b6510
                                        #   in Loop: Header=BB6_149 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB6_164
.LBB6_149:                              # %b6512
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB6_148
# %bb.150:                              # %b3934
                                        #   in Loop: Header=BB6_149 Depth=1
	leal	objects(%eax,%eax,2), %ebx
	movl	8(%ebx), %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jb	.LBB6_153
# %bb.151:                              # %b3935
                                        #   in Loop: Header=BB6_149 Depth=1
	calll	func_b5082
	cmpl	%eax, %ebp
	ja	.LBB6_148
	jmp	.LBB6_76
.LBB6_153:                              # %b6138
	cmpl	%esi, %ebp
	ja	.LBB6_161
.LBB6_154:                              # %b6467
	movl	12(%ebx), %edx
	movzbl	console, %eax
	movzbl	console+2, %ecx
	subl	%eax, %ecx
	cmpl	$25, %ecx
	jae	.LBB6_158
# %bb.155:                              # %b6694
	cmpl	%ecx, %edx
	ja	.LBB6_161
# %bb.156:                              # %b6710
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movl	(%ebx), %eax
	movl	4(%ebx), %ecx
	movl	16(%ebx), %ebx
	leal	-1(%ebp,%eax), %eax
	leal	-1(%edx,%ecx), %ecx
	cmpl	%esi, %eax
	ja	.LBB6_181
# %bb.157:                              # %b6692
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6020
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB6_162
.LBB6_158:                              # %b6695
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	jne	.LBB6_161
# %bb.159:                              # %b6709
	movl	(%ebx), %eax
	movl	4(%ebx), %ecx
	movl	16(%ebx), %ebx
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB6_183
# %bb.160:                              # %b6690
	leal	-1(%edx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6000
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB6_162
.LBB6_161:                              # %b3276
	.cfi_def_cfa_offset 48
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
.LBB6_162:                              # %b3031
	pushl	$19
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6461
.LBB6_163:                              # %b3031
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB6_164:                              # %b3031
	movzbl	753819, %esi
	shll	$8, %esi
	movl	16(%esp), %edi                  # 4-byte Reload
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	orl	%esi, %eax
	movw	%ax, 753818
	movl	%edi, %esi
	shrl	$4, %esi
	movzbl	753817, %edi
	shll	$8, %edi
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	orl	%edi, %eax
	movw	%ax, 753816
	movl	$75, %edi
	movl	$753814, %ebx                   # imm = 0xB8096
	.p2align	4, 0x90
.LBB6_165:                              # %b6425
                                        # =>This Inner Loop Header: Depth=1
	shrl	$4, %esi
	movzbl	1(%ebx), %ebp
	shll	$8, %ebp
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	orl	%ebp, %eax
	movw	%ax, (%ebx)
	decl	%edi
	addl	$-2, %ebx
	cmpl	$69, %edi
	jg	.LBB6_165
# %bb.166:                              # %b2505
	movl	16(%esp), %eax                  # 4-byte Reload
	testb	$3, %al
	je	.LBB6_168
# %bb.167:                              # %b1107
	testb	$15, %al
	jne	.LBB6_180
	jmp	.LBB6_176
.LBB6_168:                              # %b1726
	movzbl	pos, %esi
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b865
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpb	$0, dir
	je	.LBB6_171
# %bb.169:                              # %b6422
	leal	1(%esi), %ebx
	subl	$8, %esp
	cmpl	$69, %ebx
	jae	.LBB6_174
# %bb.170:                              # %b6420
	.cfi_adjust_cfa_offset 8
	pushl	$62
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_173
.LBB6_171:                              # %b6417
	.cfi_def_cfa_offset 48
	leal	-1(%esi), %ebx
	subl	$8, %esp
	cmpl	$45, %ebx
	jle	.LBB6_175
# %bb.172:                              # %b6415
	.cfi_adjust_cfa_offset 8
	pushl	$60
	.cfi_adjust_cfa_offset 4
.LBB6_173:                              # %b6420
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b865
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%bl, pos
	testb	$15, 16(%esp)                   # 1-byte Folded Reload
	jne	.LBB6_180
	jmp	.LBB6_176
.LBB6_174:                              # %b1729
	.cfi_adjust_cfa_offset 8
	pushl	$124
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b865
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$0, dir
	testb	$15, 16(%esp)                   # 1-byte Folded Reload
	jne	.LBB6_180
	jmp	.LBB6_176
.LBB6_175:                              # %b1732
	.cfi_adjust_cfa_offset 8
	pushl	$124
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b865
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$1, dir
	testb	$15, 16(%esp)                   # 1-byte Folded Reload
	jne	.LBB6_180
.LBB6_176:                              # %b1105
	movzbl	current, %eax
	incl	%eax
	cmpl	$2, %eax
	jae	.LBB6_178
# %bb.177:                              # %b6410
	andl	$1, %eax
	movb	%al, current
	jmp	.LBB6_179
.LBB6_178:                              # %b4197
	movb	$0, current
.LBB6_179:                              # %b2501
	movzbl	spinpos, %eax
	movzbl	spinner(%eax), %ecx
	incb	%al
	andb	$3, %al
	movb	%al, spinpos
	movzbl	753823, %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movw	%ax, 753822
.LBB6_180:                              # %b1354
	movzbl	current, %eax
	leal	(%eax,%eax,8), %eax
	leal	users(,%eax,8), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	returnTo
	addl	$44, %esp
	.cfi_adjust_cfa_offset -44
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.LBB6_181:                              # %b6693
	.cfi_def_cfa_offset 48
	movl	8(%esp), %eax                   # 4-byte Reload
	cmpl	%eax, %ecx
	jbe	.LBB6_184
# %bb.182:                              # %b3477
	movzbl	console+1, %ecx
	movl	%ecx, 12(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 24(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	40(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	movl	%edx, 52(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_185
.LBB6_183:                              # %b6691
	.cfi_def_cfa_offset 48
	addl	%edx, %ecx
	decl	%ecx
	jne	.LBB6_186
.LBB6_184:
	movl	%ecx, 24(%esp)                  # 4-byte Spill
	movzbl	console+1, %ecx
	movl	%ecx, 12(%esp)                  # 4-byte Spill
	movzbl	console, %eax
	movl	%eax, 8(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 52(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	44(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
.LBB6_185:                              # %b3031
	pushl	44(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6457
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB6_162
.LBB6_186:                              # %b3467
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ecx
	movl	%ecx, 12(%esp)                  # 4-byte Spill
	movzbl	console, %eax
	movl	%eax, 8(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 52(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	44(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6449
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB6_162
.LBB6_187:                              # %b3861
	.cfi_def_cfa_offset 48
	movb	$0, headingLeft
.LBB6_188:                              # %b3031
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_99
.LBB6_189:                              # %b3925
	.cfi_def_cfa_offset 48
	movb	$1, headingLeft
.LBB6_190:                              # %b3031
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_102
.LBB6_191:                              # %b3893
	.cfi_def_cfa_offset 48
	movb	$0, headingLeft
.LBB6_192:                              # %b3031
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_105
.LBB6_193:                              # %b3957
	.cfi_def_cfa_offset 48
	movb	$1, headingLeft
.LBB6_194:                              # %b3031
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_108
.Lfunc_end6:
	.size	timerInterrupt, .Lfunc_end6-timerInterrupt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1223
	.type	func_b1223,@function
func_b1223:                             # @func_b1223
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
	movzbl	console, %ebx
	movzbl	console+1, %eax
	movb	%bl, console+4
	movl	%eax, 8(%esp)                   # 4-byte Spill
	movb	%al, console+5
	movzbl	console+2, %esi
	movzbl	console+3, %edi
	movzbl	console+6, %ebp
	.p2align	4, 0x90
.LBB7_1:                                # %b1699
                                        # =>This Inner Loop Header: Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	calll	func_b1697
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%ebx
	cmpl	%esi, %ebx
	jbe	.LBB7_1
# %bb.2:                                # %b303
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
.Lfunc_end7:
	.size	func_b1223, .Lfunc_end7-func_b1223
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2729
	.type	func_b2729,@function
func_b2729:                             # @func_b2729
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	cmpl	%eax, %ecx
	je	.LBB8_2
# %bb.1:                                # %b979
	decl	objects+8
.LBB8_2:                                # %b303
	retl
.Lfunc_end8:
	.size	func_b2729, .Lfunc_end8-func_b2729
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4592
	.type	func_b4592,@function
func_b4592:                             # @func_b4592
	.cfi_startproc
# %bb.0:
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset %esi, -8
	movl	ball, %eax
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB9_8
# %bb.1:                                # %b4593
	testb	$1, %cl
	je	.LBB9_8
# %bb.2:                                # %b4594
	movl	$objects, %ecx
	cmpl	%eax, %ecx
	je	.LBB9_8
# %bb.3:                                # %b4595
	movl	objects+8, %ecx
	movl	8(%eax), %edx
	movl	(%eax), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB9_8
# %bb.4:                                # %b4596
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB9_8
# %bb.5:                                # %b4597
	movl	objects+12, %ecx
	movl	12(%eax), %edx
	movl	4(%eax), %eax
	addl	%edx, %eax
	cmpl	%eax, %ecx
	jae	.LBB9_8
# %bb.6:                                # %b4598
	addl	objects+4, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB9_8
# %bb.7:                                # %b4599
	andb	$-17, objects+20
.LBB9_8:                                # %b303
	popl	%esi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end9:
	.size	func_b4592, .Lfunc_end9-func_b4592
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2660
	.type	func_b2660,@function
func_b2660:                             # @func_b2660
	.cfi_startproc
# %bb.0:
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movl	12(%esp), %eax
	movl	ball, %ecx
	movl	20(%eax), %edx
	testb	$16, %dl
	je	.LBB10_8
# %bb.1:                                # %b2658
	testb	$1, %dl
	je	.LBB10_8
# %bb.2:                                # %b2427
	cmpl	%ecx, %eax
	je	.LBB10_8
# %bb.3:                                # %b1644
	movl	8(%eax), %edx
	movl	8(%ecx), %esi
	movl	(%ecx), %edi
	addl	%esi, %edi
	cmpl	%edi, %edx
	jae	.LBB10_8
# %bb.4:                                # %b2034
	addl	(%eax), %edx
	cmpl	%esi, %edx
	jbe	.LBB10_8
# %bb.5:                                # %b2035
	movl	12(%eax), %edx
	movl	12(%ecx), %esi
	movl	4(%ecx), %ecx
	addl	%esi, %ecx
	cmpl	%ecx, %edx
	jae	.LBB10_8
# %bb.6:                                # %b2036
	addl	4(%eax), %edx
	cmpl	%esi, %edx
	jbe	.LBB10_8
# %bb.7:                                # %b1017
	andb	$-17, 20(%eax)
.LBB10_8:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end10:
	.size	func_b2660, .Lfunc_end10-func_b2660
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2162
	.type	func_b2162,@function
func_b2162:                             # @func_b2162
	.cfi_startproc
# %bb.0:                                # %b2162
	pushl	%ebp
	.cfi_def_cfa_offset 8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	pushl	%edi
	.cfi_def_cfa_offset 16
	pushl	%esi
	.cfi_def_cfa_offset 20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	testb	$16, objects+20
	je	.LBB11_3
# %bb.1:                                # %b4576
	movl	objects+8, %edx
	movzbl	console+1, %eax
	movzbl	console+3, %ecx
	subl	%eax, %ecx
	cmpl	$80, %ecx
	movl	%edx, 16(%esp)                  # 4-byte Spill
	jae	.LBB11_4
# %bb.2:                                # %b6047
	cmpl	%ecx, %edx
	movl	%ecx, %eax
	jbe	.LBB11_5
	jmp	.LBB11_3
.LBB11_4:                               # %b4577
	calll	func_b5082
	movl	16(%esp), %edx                  # 4-byte Reload
	cmpl	%eax, %edx
	ja	.LBB11_3
.LBB11_5:                               # %b6474
	movl	%eax, 12(%esp)                  # 4-byte Spill
	movl	objects+12, %ebx
	movzbl	console, %ecx
	movzbl	console+2, %eax
	subl	%ecx, %eax
	cmpl	$24, %eax
	ja	.LBB11_10
# %bb.6:                                # %b6685
	cmpl	%eax, %ebx
	movl	12(%esp), %esi                  # 4-byte Reload
	ja	.LBB11_3
# %bb.7:                                # %b6702
	movl	objects, %ecx
	movl	%edx, %edi
	movl	objects+4, %edx
	movl	objects+16, %ebp
	leal	-1(%edi,%ecx), %ecx
	leal	-1(%ebx,%edx), %edi
	cmpl	%esi, %ecx
	ja	.LBB11_16
# %bb.8:                                # %b6683
	cmpl	%eax, %edi
	ja	.LBB11_9
# %bb.18:
	movl	%ecx, 12(%esp)                  # 4-byte Spill
	jmp	.LBB11_19
.LBB11_10:                              # %b6686
	testl	%ebx, %ebx
	movl	12(%esp), %esi                  # 4-byte Reload
	jne	.LBB11_3
# %bb.11:                               # %b6701
	movl	objects, %eax
	movl	objects+4, %edi
	movl	objects+16, %ecx
	leal	-1(%edx,%eax), %eax
	addl	%ebx, %edi
	cmpl	%esi, %eax
	ja	.LBB11_21
# %bb.12:                               # %b6681
	decl	%edi
	jne	.LBB11_13
# %bb.20:
	movl	%eax, 12(%esp)                  # 4-byte Spill
	jmp	.LBB11_22
.LBB11_16:                              # %b6684
	cmpl	%eax, %edi
	ja	.LBB11_17
.LBB11_19:
	movl	16(%esp), %edx                  # 4-byte Reload
	movl	%ebp, %ecx
	jmp	.LBB11_22
.LBB11_21:                              # %b6682
	decl	%edi
	jne	.LBB11_14
.LBB11_22:                              # %b6002
	movzbl	console+1, %eax
	movl	%eax, 20(%esp)                  # 4-byte Spill
	movzbl	console, %eax
	movl	%eax, 24(%esp)                  # 4-byte Spill
	jmp	.LBB11_23
.LBB11_9:
	movl	%ecx, 12(%esp)                  # 4-byte Spill
.LBB11_17:
	movl	16(%esp), %edx                  # 4-byte Reload
	movl	%ebp, %ecx
	movzbl	console+1, %esi
	movl	%esi, 20(%esp)                  # 4-byte Spill
	movzbl	console, %esi
	movl	%esi, 24(%esp)                  # 4-byte Spill
	movl	%eax, %edi
.LBB11_23:                              # %b2191
	movl	12(%esp), %ebp                  # 4-byte Reload
	.p2align	4, 0x90
.LBB11_24:                              # %b2191
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	48(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	movl	%ecx, %esi
	calll	func_b6448
	movl	%esi, %ecx
	movl	48(%esp), %edx                  # 4-byte Reload
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	incl	%ebx
	cmpl	%edi, %ebx
	jbe	.LBB11_24
	jmp	.LBB11_3
.LBB11_13:
	movl	%eax, 12(%esp)                  # 4-byte Spill
.LBB11_14:                              # %b2181
	movzbl	console+1, %eax
	movl	%eax, 20(%esp)                  # 4-byte Spill
	movzbl	console, %ebp
	movl	12(%esp), %edi                  # 4-byte Reload
	.p2align	4, 0x90
.LBB11_15:                              # %b2182
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	48(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	movl	%ecx, %esi
	calll	func_b6448
	movl	%esi, %ecx
	movl	48(%esp), %edx                  # 4-byte Reload
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	incl	%ebx
	je	.LBB11_15
.LBB11_3:                               # %b303
	addl	$28, %esp
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
.Lfunc_end11:
	.size	func_b2162, .Lfunc_end11-func_b2162
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3181
	.type	func_b3181,@function
func_b3181:                             # @func_b3181
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	52(%esp), %eax
	movl	ball, %edx
	movl	%edx, %esi
	negl	%esi
	jmp	.LBB12_3
.LBB12_1:                               # %b3498
                                        #   in Loop: Header=BB12_3 Depth=1
	movb	$0, headingTop
	.p2align	4, 0x90
.LBB12_2:                               # %b6595
                                        #   in Loop: Header=BB12_3 Depth=1
	incl	%eax
	cmpl	$20, %eax
	jae	.LBB12_14
.LBB12_3:                               # %b3181.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	leal	(%eax,%eax,2), %edi
	leal	objects+12(,%edi,8), %edi
.LBB12_4:                               # %b3181
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%esi,%edi), %ebx
	cmpl	$12, %ebx
	je	.LBB12_2
# %bb.5:                                # %b3502
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	8(%edi), %ebx
	testb	$16, %bl
	je	.LBB12_2
# %bb.6:                                # %b3703
                                        #   in Loop: Header=BB12_4 Depth=2
	testb	$2, %bl
	je	.LBB12_2
# %bb.7:                                # %b3751
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	-4(%edi), %ebx
	movl	8(%edx), %ebp
	movl	(%edx), %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	jae	.LBB12_2
# %bb.8:                                # %b3766
                                        #   in Loop: Header=BB12_4 Depth=2
	addl	-12(%edi), %ebx
	cmpl	%ebp, %ebx
	jbe	.LBB12_2
# %bb.9:                                # %b3779
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	(%edi), %ebx
	movl	12(%edx), %ebp
	movl	4(%edx), %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	jae	.LBB12_2
# %bb.10:                               # %b3787
                                        #   in Loop: Header=BB12_4 Depth=2
	addl	-8(%edi), %ebx
	cmpl	%ebp, %ebx
	jbe	.LBB12_2
# %bb.11:                               # %b3795
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	(%edi), %ebx
	movl	48(%esp), %ebp
	cmpl	%ebx, %ebp
	jbe	.LBB12_1
# %bb.12:                               # %b3499
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	4(%edx), %ecx
	addl	%ebp, %ecx
	addl	-8(%edi), %ebx
	cmpl	%ebx, %ecx
	jae	.LBB12_1
# %bb.13:                               # %b3500
                                        #   in Loop: Header=BB12_4 Depth=2
	movb	$0, headingLeft
	incl	%eax
	addl	$24, %edi
	cmpl	$20, %eax
	jb	.LBB12_4
.LBB12_14:                              # %b2159
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
	.p2align	4, 0x90
.LBB12_15:                              # %b6497
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB12_15
# %bb.16:                               # %b2161
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB12_20
.LBB12_17:                              # %b6703
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%ebp), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6000
.LBB12_18:                              # %b6461
                                        #   in Loop: Header=BB12_20 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB12_19:                              # %b6461
                                        #   in Loop: Header=BB12_20 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB12_37
.LBB12_20:                              # %b6463
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB12_19
# %bb.21:                               # %b2651
                                        #   in Loop: Header=BB12_20 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB12_23
# %bb.22:                               # %b6100
                                        #   in Loop: Header=BB12_20 Depth=1
	cmpl	%esi, %edx
	ja	.LBB12_19
	jmp	.LBB12_24
	.p2align	4, 0x90
.LBB12_23:                              # %b2652
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	%edx, %esi
	calll	func_b5082
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB12_19
.LBB12_24:                              # %b6460
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %ebp
	subl	%eax, %ebp
	cmpl	$25, %ebp
	jae	.LBB12_28
# %bb.25:                               # %b6707
                                        #   in Loop: Header=BB12_20 Depth=1
	cmpl	%ebp, %ecx
	ja	.LBB12_19
# %bb.26:                               # %b6716
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB12_32
# %bb.27:                               # %b6705
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	8(%esp), %esi                   # 4-byte Reload
	leal	-1(%esi,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6020
	jmp	.LBB12_18
.LBB12_28:                              # %b6708
                                        #   in Loop: Header=BB12_20 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB12_19
# %bb.29:                               # %b6715
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ebp
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB12_17
# %bb.30:                               # %b6704
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	addl	%ecx, %ebp
	decl	%ebp
	jne	.LBB12_34
# %bb.31:                               #   in Loop: Header=BB12_20 Depth=1
	movl	%ebp, 12(%esp)                  # 4-byte Spill
	jmp	.LBB12_33
.LBB12_32:                              # %b6706
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	movl	%ebx, 12(%esp)                  # 4-byte Spill
	cmpl	%ebp, %ebx
	ja	.LBB12_35
.LBB12_33:                              # %b6059
                                        #   in Loop: Header=BB12_20 Depth=1
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 24(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	32(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB12_36
.LBB12_34:                              # %b3143
                                        #   in Loop: Header=BB12_20 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	32(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	movl	%ecx, 40(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6449
	jmp	.LBB12_18
.LBB12_35:                              # %b3149
                                        #   in Loop: Header=BB12_20 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
.LBB12_36:                              # %b6461
                                        #   in Loop: Header=BB12_20 Depth=1
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6457
	jmp	.LBB12_18
.LBB12_37:                              # %b303
	.cfi_def_cfa_offset 48
	addl	$28, %esp
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
.Lfunc_end12:
	.size	func_b3181, .Lfunc_end12-func_b3181
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3201
	.type	func_b3201,@function
func_b3201:                             # @func_b3201
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	52(%esp), %eax
	movl	ball, %edx
	movl	%edx, %esi
	negl	%esi
	jmp	.LBB13_3
.LBB13_1:                               # %b3507
                                        #   in Loop: Header=BB13_3 Depth=1
	movb	$1, headingTop
	.p2align	4, 0x90
.LBB13_2:                               # %b6564
                                        #   in Loop: Header=BB13_3 Depth=1
	incl	%eax
	cmpl	$20, %eax
	jae	.LBB13_14
.LBB13_3:                               # %b3201.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	leal	(%eax,%eax,2), %edi
	leal	objects+12(,%edi,8), %edi
.LBB13_4:                               # %b3201
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%esi,%edi), %ebx
	cmpl	$12, %ebx
	je	.LBB13_2
# %bb.5:                                # %b3511
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	8(%edi), %ebx
	testb	$16, %bl
	je	.LBB13_2
# %bb.6:                                # %b3705
                                        #   in Loop: Header=BB13_4 Depth=2
	testb	$2, %bl
	je	.LBB13_2
# %bb.7:                                # %b3753
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	-4(%edi), %ebx
	movl	8(%edx), %ebp
	movl	(%edx), %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	jae	.LBB13_2
# %bb.8:                                # %b3768
                                        #   in Loop: Header=BB13_4 Depth=2
	addl	-12(%edi), %ebx
	cmpl	%ebp, %ebx
	jbe	.LBB13_2
# %bb.9:                                # %b3781
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	(%edi), %ebx
	movl	12(%edx), %ebp
	movl	4(%edx), %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	jae	.LBB13_2
# %bb.10:                               # %b3789
                                        #   in Loop: Header=BB13_4 Depth=2
	addl	-8(%edi), %ebx
	cmpl	%ebp, %ebx
	jbe	.LBB13_2
# %bb.11:                               # %b3796
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	(%edi), %ebx
	movl	48(%esp), %ebp
	cmpl	%ebx, %ebp
	jbe	.LBB13_1
# %bb.12:                               # %b3508
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	4(%edx), %ecx
	addl	%ebp, %ecx
	addl	-8(%edi), %ebx
	cmpl	%ebx, %ecx
	jae	.LBB13_1
# %bb.13:                               # %b3509
                                        #   in Loop: Header=BB13_4 Depth=2
	movb	$0, headingLeft
	incl	%eax
	addl	$24, %edi
	cmpl	$20, %eax
	jb	.LBB13_4
.LBB13_14:                              # %b2159
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
	.p2align	4, 0x90
.LBB13_15:                              # %b6497
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB13_15
# %bb.16:                               # %b2161
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB13_20
.LBB13_17:                              # %b6703
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%ebp), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6000
.LBB13_18:                              # %b6461
                                        #   in Loop: Header=BB13_20 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB13_19:                              # %b6461
                                        #   in Loop: Header=BB13_20 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB13_37
.LBB13_20:                              # %b6463
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB13_19
# %bb.21:                               # %b2651
                                        #   in Loop: Header=BB13_20 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB13_23
# %bb.22:                               # %b6100
                                        #   in Loop: Header=BB13_20 Depth=1
	cmpl	%esi, %edx
	ja	.LBB13_19
	jmp	.LBB13_24
	.p2align	4, 0x90
.LBB13_23:                              # %b2652
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	%edx, %esi
	calll	func_b5082
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB13_19
.LBB13_24:                              # %b6460
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %ebp
	subl	%eax, %ebp
	cmpl	$25, %ebp
	jae	.LBB13_28
# %bb.25:                               # %b6707
                                        #   in Loop: Header=BB13_20 Depth=1
	cmpl	%ebp, %ecx
	ja	.LBB13_19
# %bb.26:                               # %b6716
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB13_32
# %bb.27:                               # %b6705
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	8(%esp), %esi                   # 4-byte Reload
	leal	-1(%esi,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6020
	jmp	.LBB13_18
.LBB13_28:                              # %b6708
                                        #   in Loop: Header=BB13_20 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB13_19
# %bb.29:                               # %b6715
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ebp
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB13_17
# %bb.30:                               # %b6704
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	addl	%ecx, %ebp
	decl	%ebp
	jne	.LBB13_34
# %bb.31:                               #   in Loop: Header=BB13_20 Depth=1
	movl	%ebp, 12(%esp)                  # 4-byte Spill
	jmp	.LBB13_33
.LBB13_32:                              # %b6706
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	movl	%ebx, 12(%esp)                  # 4-byte Spill
	cmpl	%ebp, %ebx
	ja	.LBB13_35
.LBB13_33:                              # %b6059
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 24(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	32(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB13_36
.LBB13_34:                              # %b3143
                                        #   in Loop: Header=BB13_20 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	32(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	movl	%ecx, 40(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6449
	jmp	.LBB13_18
.LBB13_35:                              # %b3149
                                        #   in Loop: Header=BB13_20 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
.LBB13_36:                              # %b6461
                                        #   in Loop: Header=BB13_20 Depth=1
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6457
	jmp	.LBB13_18
.LBB13_37:                              # %b303
	.cfi_def_cfa_offset 48
	addl	$28, %esp
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
.Lfunc_end13:
	.size	func_b3201, .Lfunc_end13-func_b3201
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3220
	.type	func_b3220,@function
func_b3220:                             # @func_b3220
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	52(%esp), %eax
	movl	ball, %edx
	movl	%edx, %esi
	negl	%esi
	jmp	.LBB14_3
.LBB14_1:                               # %b3516
                                        #   in Loop: Header=BB14_3 Depth=1
	movb	$0, headingTop
	.p2align	4, 0x90
.LBB14_2:                               # %b6533
                                        #   in Loop: Header=BB14_3 Depth=1
	incl	%eax
	cmpl	$20, %eax
	jae	.LBB14_14
.LBB14_3:                               # %b3220.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
	leal	(%eax,%eax,2), %edi
	leal	objects+12(,%edi,8), %edi
.LBB14_4:                               # %b3220
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%esi,%edi), %ebx
	cmpl	$12, %ebx
	je	.LBB14_2
# %bb.5:                                # %b3520
                                        #   in Loop: Header=BB14_4 Depth=2
	movl	8(%edi), %ebx
	testb	$16, %bl
	je	.LBB14_2
# %bb.6:                                # %b3707
                                        #   in Loop: Header=BB14_4 Depth=2
	testb	$2, %bl
	je	.LBB14_2
# %bb.7:                                # %b3755
                                        #   in Loop: Header=BB14_4 Depth=2
	movl	-4(%edi), %ebx
	movl	8(%edx), %ebp
	movl	(%edx), %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	jae	.LBB14_2
# %bb.8:                                # %b3770
                                        #   in Loop: Header=BB14_4 Depth=2
	addl	-12(%edi), %ebx
	cmpl	%ebp, %ebx
	jbe	.LBB14_2
# %bb.9:                                # %b3783
                                        #   in Loop: Header=BB14_4 Depth=2
	movl	(%edi), %ebx
	movl	12(%edx), %ebp
	movl	4(%edx), %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	jae	.LBB14_2
# %bb.10:                               # %b3791
                                        #   in Loop: Header=BB14_4 Depth=2
	addl	-8(%edi), %ebx
	cmpl	%ebp, %ebx
	jbe	.LBB14_2
# %bb.11:                               # %b3797
                                        #   in Loop: Header=BB14_4 Depth=2
	movl	(%edi), %ebx
	movl	48(%esp), %ebp
	cmpl	%ebx, %ebp
	jbe	.LBB14_1
# %bb.12:                               # %b3517
                                        #   in Loop: Header=BB14_4 Depth=2
	movl	4(%edx), %ecx
	addl	%ebp, %ecx
	addl	-8(%edi), %ebx
	cmpl	%ebx, %ecx
	jae	.LBB14_1
# %bb.13:                               # %b3518
                                        #   in Loop: Header=BB14_4 Depth=2
	movb	$1, headingLeft
	incl	%eax
	addl	$24, %edi
	cmpl	$20, %eax
	jb	.LBB14_4
.LBB14_14:                              # %b2159
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
	.p2align	4, 0x90
.LBB14_15:                              # %b6497
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB14_15
# %bb.16:                               # %b2161
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB14_20
.LBB14_17:                              # %b6703
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%ebp), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6000
.LBB14_18:                              # %b6461
                                        #   in Loop: Header=BB14_20 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB14_19:                              # %b6461
                                        #   in Loop: Header=BB14_20 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB14_37
.LBB14_20:                              # %b6463
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB14_19
# %bb.21:                               # %b2651
                                        #   in Loop: Header=BB14_20 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB14_23
# %bb.22:                               # %b6100
                                        #   in Loop: Header=BB14_20 Depth=1
	cmpl	%esi, %edx
	ja	.LBB14_19
	jmp	.LBB14_24
	.p2align	4, 0x90
.LBB14_23:                              # %b2652
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	%edx, %esi
	calll	func_b5082
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB14_19
.LBB14_24:                              # %b6460
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %ebp
	subl	%eax, %ebp
	cmpl	$25, %ebp
	jae	.LBB14_28
# %bb.25:                               # %b6707
                                        #   in Loop: Header=BB14_20 Depth=1
	cmpl	%ebp, %ecx
	ja	.LBB14_19
# %bb.26:                               # %b6716
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB14_32
# %bb.27:                               # %b6705
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	8(%esp), %esi                   # 4-byte Reload
	leal	-1(%esi,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6020
	jmp	.LBB14_18
.LBB14_28:                              # %b6708
                                        #   in Loop: Header=BB14_20 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB14_19
# %bb.29:                               # %b6715
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ebp
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB14_17
# %bb.30:                               # %b6704
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	addl	%ecx, %ebp
	decl	%ebp
	jne	.LBB14_34
# %bb.31:                               #   in Loop: Header=BB14_20 Depth=1
	movl	%ebp, 12(%esp)                  # 4-byte Spill
	jmp	.LBB14_33
.LBB14_32:                              # %b6706
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	movl	%ebx, 12(%esp)                  # 4-byte Spill
	cmpl	%ebp, %ebx
	ja	.LBB14_35
.LBB14_33:                              # %b6059
                                        #   in Loop: Header=BB14_20 Depth=1
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 24(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	32(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB14_36
.LBB14_34:                              # %b3143
                                        #   in Loop: Header=BB14_20 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	32(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	movl	%ecx, 40(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6449
	jmp	.LBB14_18
.LBB14_35:                              # %b3149
                                        #   in Loop: Header=BB14_20 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
.LBB14_36:                              # %b6461
                                        #   in Loop: Header=BB14_20 Depth=1
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6457
	jmp	.LBB14_18
.LBB14_37:                              # %b303
	.cfi_def_cfa_offset 48
	addl	$28, %esp
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
.Lfunc_end14:
	.size	func_b3220, .Lfunc_end14-func_b3220
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3239
	.type	func_b3239,@function
func_b3239:                             # @func_b3239
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	52(%esp), %eax
	movl	ball, %edx
	movl	%edx, %esi
	negl	%esi
	jmp	.LBB15_3
.LBB15_1:                               # %b3525
                                        #   in Loop: Header=BB15_3 Depth=1
	movb	$1, headingTop
	.p2align	4, 0x90
.LBB15_2:                               # %b6502
                                        #   in Loop: Header=BB15_3 Depth=1
	incl	%eax
	cmpl	$20, %eax
	jae	.LBB15_14
.LBB15_3:                               # %b3239.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_4 Depth 2
	leal	(%eax,%eax,2), %edi
	leal	objects+12(,%edi,8), %edi
.LBB15_4:                               # %b3239
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%esi,%edi), %ebx
	cmpl	$12, %ebx
	je	.LBB15_2
# %bb.5:                                # %b3529
                                        #   in Loop: Header=BB15_4 Depth=2
	movl	8(%edi), %ebx
	testb	$16, %bl
	je	.LBB15_2
# %bb.6:                                # %b3709
                                        #   in Loop: Header=BB15_4 Depth=2
	testb	$2, %bl
	je	.LBB15_2
# %bb.7:                                # %b3757
                                        #   in Loop: Header=BB15_4 Depth=2
	movl	-4(%edi), %ebx
	movl	8(%edx), %ebp
	movl	(%edx), %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	jae	.LBB15_2
# %bb.8:                                # %b3772
                                        #   in Loop: Header=BB15_4 Depth=2
	addl	-12(%edi), %ebx
	cmpl	%ebp, %ebx
	jbe	.LBB15_2
# %bb.9:                                # %b3785
                                        #   in Loop: Header=BB15_4 Depth=2
	movl	(%edi), %ebx
	movl	12(%edx), %ebp
	movl	4(%edx), %ecx
	addl	%ebp, %ecx
	cmpl	%ecx, %ebx
	jae	.LBB15_2
# %bb.10:                               # %b3793
                                        #   in Loop: Header=BB15_4 Depth=2
	addl	-8(%edi), %ebx
	cmpl	%ebp, %ebx
	jbe	.LBB15_2
# %bb.11:                               # %b3798
                                        #   in Loop: Header=BB15_4 Depth=2
	movl	(%edi), %ebx
	movl	48(%esp), %ebp
	cmpl	%ebx, %ebp
	jbe	.LBB15_1
# %bb.12:                               # %b3526
                                        #   in Loop: Header=BB15_4 Depth=2
	movl	4(%edx), %ecx
	addl	%ebp, %ecx
	addl	-8(%edi), %ebx
	cmpl	%ebx, %ecx
	jae	.LBB15_1
# %bb.13:                               # %b3527
                                        #   in Loop: Header=BB15_4 Depth=2
	movb	$1, headingLeft
	incl	%eax
	addl	$24, %edi
	cmpl	$20, %eax
	jb	.LBB15_4
.LBB15_14:                              # %b2159
	calll	func_b4592
	movl	$1, %esi
	movl	$objects+24, %edi
	.p2align	4, 0x90
.LBB15_15:                              # %b6497
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2660
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%esi
	addl	$24, %edi
	cmpl	$20, %esi
	jb	.LBB15_15
# %bb.16:                               # %b2161
	calll	func_b2162
	movl	$1, %edi
	jmp	.LBB15_20
.LBB15_17:                              # %b6703
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%ebp), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6000
.LBB15_18:                              # %b6461
                                        #   in Loop: Header=BB15_20 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB15_19:                              # %b6461
                                        #   in Loop: Header=BB15_20 Depth=1
	incl	%edi
	cmpl	$20, %edi
	jae	.LBB15_37
.LBB15_20:                              # %b6463
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%edi,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB15_19
# %bb.21:                               # %b2651
                                        #   in Loop: Header=BB15_20 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB15_23
# %bb.22:                               # %b6100
                                        #   in Loop: Header=BB15_20 Depth=1
	cmpl	%esi, %edx
	ja	.LBB15_19
	jmp	.LBB15_24
	.p2align	4, 0x90
.LBB15_23:                              # %b2652
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	%edx, %esi
	calll	func_b5082
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB15_19
.LBB15_24:                              # %b6460
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %ebp
	subl	%eax, %ebp
	cmpl	$25, %ebp
	jae	.LBB15_28
# %bb.25:                               # %b6707
                                        #   in Loop: Header=BB15_20 Depth=1
	cmpl	%ebp, %ecx
	ja	.LBB15_19
# %bb.26:                               # %b6716
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB15_32
# %bb.27:                               # %b6705
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	8(%esp), %esi                   # 4-byte Reload
	leal	-1(%esi,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6020
	jmp	.LBB15_18
.LBB15_28:                              # %b6708
                                        #   in Loop: Header=BB15_20 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB15_19
# %bb.29:                               # %b6715
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ebp
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB15_17
# %bb.30:                               # %b6704
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	addl	%ecx, %ebp
	decl	%ebp
	jne	.LBB15_34
# %bb.31:                               #   in Loop: Header=BB15_20 Depth=1
	movl	%ebp, 12(%esp)                  # 4-byte Spill
	jmp	.LBB15_33
.LBB15_32:                              # %b6706
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	movl	%ebx, 12(%esp)                  # 4-byte Spill
	cmpl	%ebp, %ebx
	ja	.LBB15_35
.LBB15_33:                              # %b6059
                                        #   in Loop: Header=BB15_20 Depth=1
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 24(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	32(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB15_36
.LBB15_34:                              # %b3143
                                        #   in Loop: Header=BB15_20 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	32(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	movl	%ecx, 40(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6449
	jmp	.LBB15_18
.LBB15_35:                              # %b3149
                                        #   in Loop: Header=BB15_20 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ebx
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 48(%esp)                  # 4-byte Spill
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
.LBB15_36:                              # %b6461
                                        #   in Loop: Header=BB15_20 Depth=1
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6457
	jmp	.LBB15_18
.LBB15_37:                              # %b303
	.cfi_def_cfa_offset 48
	addl	$28, %esp
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
.Lfunc_end15:
	.size	func_b3239, .Lfunc_end15-func_b3239
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1608
	.type	func_b1608,@function
func_b1608:                             # @func_b1608
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %ecx
	movl	4(%esp), %eax
	cmpl	%ecx, %eax
	ja	.LBB16_2
# %bb.1:                                # %b1144
	addl	$48, %eax
	movzbl	%al, %eax
	retl
.LBB16_2:                               # %b1145
	addl	$87, %eax
	movzbl	%al, %eax
	retl
.Lfunc_end16:
	.size	func_b1608, .Lfunc_end16-func_b1608
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5082
	.type	func_b5082,@function
func_b5082:                             # @func_b5082
	.cfi_startproc
# %bb.0:                                # %b5082
	pushl	%edi
	.cfi_def_cfa_offset 8
	pushl	%esi
	.cfi_def_cfa_offset 12
	pushl	%eax
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -12
	.cfi_offset %edi, -8
	movzbl	str0, %edi
	testl	%edi, %edi
	je	.LBB17_7
# %bb.1:                                # %b5084
	movl	$str0+1, %esi
	.p2align	4, 0x90
.LBB17_2:                               # %b5071
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB17_4
# %bb.3:                                # %b5074
                                        #   in Loop: Header=BB17_2 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB17_5
	.p2align	4, 0x90
.LBB17_4:                               # %b5076
                                        #   in Loop: Header=BB17_2 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB17_5:                               # %b5076
                                        #   in Loop: Header=BB17_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB17_7
# %bb.6:                                # %b5069
                                        #   in Loop: Header=BB17_2 Depth=1
	incl	%esi
	jmp	.LBB17_2
.LBB17_7:                               # %b1818
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end17:
	.size	func_b5082, .Lfunc_end17-func_b5082
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6461
	.type	func_b6461,@function
func_b6461:                             # @func_b6461
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
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	56(%esp), %ecx
	movl	52(%esp), %edi
	movl	48(%esp), %edx
	.p2align	4, 0x90
.LBB18_1:                               # %b6461
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %eax
	movl	%edx, %edi
	addl	%eax, %edi
	cmpl	%ecx, %edi
	ja	.LBB18_20
# %bb.2:                                # %b6463
                                        #   in Loop: Header=BB18_1 Depth=1
	leal	(,%edi,8), %eax
	movl	$19, %ecx
	movl	$1, %edx
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB18_1
# %bb.3:                                # %b2651
                                        #   in Loop: Header=BB18_1 Depth=1
	leal	(%eax,%eax,2), %ebp
	movl	objects+8(%ebp), %ebx
	movzbl	console+1, %esi
	movzbl	console+3, %eax
	subl	%esi, %eax
	cmpl	$79, %eax
	movl	%ebx, 20(%esp)                  # 4-byte Spill
	jbe	.LBB18_4
# %bb.21:                               # %b2652
                                        #   in Loop: Header=BB18_1 Depth=1
	calll	func_b5082
	movl	$1, %edx
	movl	$19, %ecx
.LBB18_4:                               # %b6100
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	%eax, %ebx
	ja	.LBB18_1
# %bb.5:                                # %b6460
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	%eax, 24(%esp)                  # 4-byte Spill
	movl	objects+12(%ebp), %ebx
	movzbl	console, %esi
	movzbl	console+2, %eax
	subl	%esi, %eax
	cmpl	$24, %eax
	ja	.LBB18_10
# %bb.6:                                # %b6707
                                        #   in Loop: Header=BB18_1 Depth=1
	cmpl	%eax, %ebx
	movl	24(%esp), %esi                  # 4-byte Reload
	ja	.LBB18_1
# %bb.7:                                # %b6716
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	%eax, 8(%esp)                   # 4-byte Spill
	movl	%ebx, %ecx
	movl	objects(%ebp), %eax
	movl	objects+4(%ebp), %ebx
	movl	objects+16(%ebp), %ebp
	movl	20(%esp), %edx                  # 4-byte Reload
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB18_13
# %bb.8:                                # %b6705
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%ebx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6020
	jmp	.LBB18_9
.LBB18_10:                              # %b6708
                                        #   in Loop: Header=BB18_1 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ebx, %ebx
	movl	24(%esp), %esi                  # 4-byte Reload
	jne	.LBB18_1
# %bb.11:                               # %b6715
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	%ebx, %ecx
	movl	objects(%ebp), %eax
	movl	objects+4(%ebp), %ebx
	movl	objects+16(%ebp), %ebp
	movl	20(%esp), %edx                  # 4-byte Reload
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB18_15
# %bb.12:                               # %b6703
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%ebx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6000
.LBB18_9:                               # %b6461
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$1, %edx
	movl	$19, %ecx
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	jmp	.LBB18_1
.LBB18_13:                              # %b6706
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%ecx, 16(%esp)                  # 4-byte Spill
	leal	-1(%ecx,%ebx), %edx
	movl	8(%esp), %ebx                   # 4-byte Reload
	movl	%edx, 4(%esp)                   # 4-byte Spill
	cmpl	%ebx, %edx
	jbe	.LBB18_16
# %bb.14:                               # %b3149
                                        #   in Loop: Header=BB18_1 Depth=1
	movzbl	console+1, %edx
	movl	%edx, 12(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	36(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	jmp	.LBB18_17
.LBB18_15:                              # %b6704
                                        #   in Loop: Header=BB18_1 Depth=1
	.cfi_def_cfa_offset 48
	movl	%edx, %eax
	movl	%ebx, %edx
	addl	%ecx, %edx
	decl	%edx
	movl	%edx, 4(%esp)                   # 4-byte Spill
	jne	.LBB18_19
.LBB18_16:                              # %b6059
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	%ebp, 8(%esp)                   # 4-byte Spill
	movzbl	console+1, %ebx
	movzbl	console, %edx
	movl	%edx, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	%ecx, 24(%esp)                  # 4-byte Spill
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	movl	%eax, %ebp
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
.LBB18_17:                              # %b6461
                                        #   in Loop: Header=BB18_1 Depth=1
	pushl	40(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6457
	jmp	.LBB18_18
.LBB18_19:                              # %b3143
                                        #   in Loop: Header=BB18_1 Depth=1
	.cfi_def_cfa_offset 48
	movl	%ecx, %ebx
	movzbl	console+1, %edx
	movl	%edx, 12(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	movl	%ebp, 32(%esp)                  # 4-byte Spill
	movl	%eax, %ebp
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6449
.LBB18_18:                              # %b6461
                                        #   in Loop: Header=BB18_1 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movl	$19, %ecx
	movl	$1, %edx
	jmp	.LBB18_1
.LBB18_20:                              # %b303
	addl	$28, %esp
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
.Lfunc_end18:
	.size	func_b6461, .Lfunc_end18-func_b6461
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b865
	.type	func_b865,@function
func_b865:                              # @func_b865
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %ecx
	movl	4(%esp), %eax
	movzbl	753665(%eax,%eax), %edx
	shll	$8, %edx
	movzbl	%cl, %ecx
	orl	%edx, %ecx
	movw	%cx, 753664(%eax,%eax)
	retl
.Lfunc_end19:
	.size	func_b865, .Lfunc_end19-func_b865
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6020
	.type	func_b6020,@function
func_b6020:                             # @func_b6020
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
	movl	40(%esp), %ebp
	movl	36(%esp), %eax
	movl	32(%esp), %esi
	cmpl	%eax, %esi
	ja	.LBB20_2
# %bb.1:                                # %b6002
	movzbl	console+1, %edi
	movzbl	console, %ebx
	jmp	.LBB20_3
.LBB20_2:                               # %b2190
	movzbl	console+1, %edi
	movzbl	console, %ebx
	movl	%eax, %esi
	.p2align	4, 0x90
.LBB20_3:                               # %b2191
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	56(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	64(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	76(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	incl	%ebp
	cmpl	%esi, %ebp
	jbe	.LBB20_3
# %bb.4:                                # %b303
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
	.size	func_b6020, .Lfunc_end20-func_b6020
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6000
	.type	func_b6000,@function
func_b6000:                             # @func_b6000
	.cfi_startproc
# %bb.0:                                # %b6000
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
	movl	52(%esp), %eax
	movl	48(%esp), %ecx
	movl	44(%esp), %edx
	movl	40(%esp), %ebp
	movl	32(%esp), %esi
	cmpl	36(%esp), %esi
	movl	%edx, %ebx
	ja	.LBB21_3
# %bb.1:                                # %b6002
	movzbl	console+1, %esi
	movzbl	console, %edi
	.p2align	4, 0x90
.LBB21_2:                               # %b2191
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b6448
	movl	%ebx, %edx
	movl	80(%esp), %ecx
	movl	84(%esp), %eax
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	incl	%ebp
	cmpl	32(%esp), %ebp
	jbe	.LBB21_2
	jmp	.LBB21_5
.LBB21_3:                               # %b2181
	movzbl	console+1, %esi
	movzbl	console, %edi
	.p2align	4, 0x90
.LBB21_4:                               # %b2182
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b6448
	movl	%ebx, %edx
	movl	80(%esp), %ecx
	movl	84(%esp), %eax
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	incl	%ebp
	je	.LBB21_4
.LBB21_5:                               # %b303
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
.Lfunc_end21:
	.size	func_b6000, .Lfunc_end21-func_b6000
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6448
	.type	func_b6448,@function
func_b6448:                             # @func_b6448
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
	pushl	%eax
	.cfi_def_cfa_offset 24
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	44(%esp), %eax
	movl	40(%esp), %ecx
	movl	32(%esp), %ebp
	movl	28(%esp), %esi
	movl	24(%esp), %edi
	addl	48(%esp), %eax
	leal	(%eax,%eax,4), %edx
	shll	$5, %edx
	movl	%edx, (%esp)                    # 4-byte Spill
	shll	$8, %ecx
	orl	$32, %ecx
	jmp	.LBB22_1
	.p2align	4, 0x90
.LBB22_4:                               # %b6443
                                        #   in Loop: Header=BB22_1 Depth=1
	incl	%esi
	movl	$79, %ebp
	cmpl	36(%esp), %esi
	ja	.LBB22_6
.LBB22_1:                               # %b6448.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_2 Depth 2
	leal	(%edi,%esi), %ebx
	movl	(%esp), %edx                    # 4-byte Reload
	leal	753664(%edx,%ebx,2), %ebx
	.p2align	4, 0x90
.LBB22_2:                               # %b6448
                                        #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%edi,%esi), %edx
	cmpl	%ebp, %edx
	ja	.LBB22_4
# %bb.3:                                # %b6438
                                        #   in Loop: Header=BB22_2 Depth=2
	cmpl	$25, %eax
	jae	.LBB22_4
# %bb.5:                                # %b6436
                                        #   in Loop: Header=BB22_2 Depth=2
	movw	%cx, (%ebx)
	incl	%esi
	addl	$2, %ebx
	movl	$79, %ebp
	cmpl	36(%esp), %esi
	jbe	.LBB22_2
.LBB22_6:                               # %b303
	addl	$4, %esp
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
.Lfunc_end22:
	.size	func_b6448, .Lfunc_end22-func_b6448
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6457
	.type	func_b6457,@function
func_b6457:                             # @func_b6457
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
	movl	48(%esp), %ebp
	movl	44(%esp), %esi
	movl	40(%esp), %edi
	movl	36(%esp), %ebx
	movl	32(%esp), %eax
	.p2align	4, 0x90
.LBB23_1:                               # %b6457
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	movl	%eax, %ebx
	addl	%ecx, %ebx
	cmpl	%edi, %ebx
	ja	.LBB23_3
# %bb.2:                                # %b2191
                                        #   in Loop: Header=BB23_1 Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	60(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	64(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	88(%esp)
	.cfi_adjust_cfa_offset 4
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movl	$1, %eax
	jmp	.LBB23_1
.LBB23_3:                               # %b303
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
.Lfunc_end23:
	.size	func_b6457, .Lfunc_end23-func_b6457
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6449
	.type	func_b6449,@function
func_b6449:                             # @func_b6449
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
	movl	52(%esp), %ebx
	movl	48(%esp), %ebp
	movl	44(%esp), %esi
	movl	40(%esp), %eax
	movl	36(%esp), %edi
	movl	32(%esp), %ecx
	.p2align	4, 0x90
.LBB24_1:                               # %b6449
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB24_3
# %bb.2:                                # %b2182
                                        #   in Loop: Header=BB24_1 Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	60(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	88(%esp)
	.cfi_adjust_cfa_offset 4
	calll	func_b6448
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB24_1
.LBB24_3:                               # %b303
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
.Lfunc_end24:
	.size	func_b6449, .Lfunc_end24-func_b6449
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1697
	.type	func_b1697,@function
func_b1697:                             # @func_b1697
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
.LBB25_1:                               # %b1697
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, (%esi)
	incl	%edx
	addl	$2, %esi
	cmpl	%ecx, %edx
	jbe	.LBB25_1
# %bb.2:                                # %b303
	popl	%esi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end25:
	.size	func_b1697, .Lfunc_end25-func_b1697
	.cfi_endproc
                                        # -- End function
	.globl	unhandled                       # -- Begin function unhandled
	.p2align	4, 0x90
	.type	unhandled,@function
unhandled:                              # @unhandled
	.cfi_startproc
# %bb.0:                                # %unhandled
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	16(%esp), %edi
	movzbl	str55, %ebx
	testl	%ebx, %ebx
	je	.LBB26_1
# %bb.4:                                # %b5063
	movl	$str55+1, %esi
	.p2align	4, 0x90
.LBB26_5:                               # %b5055
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_11
# %bb.6:                                # %b5058
                                        #   in Loop: Header=BB26_5 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_12
	.p2align	4, 0x90
.LBB26_11:                              # %b5060
                                        #   in Loop: Header=BB26_5 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_12:                              # %b5051
                                        #   in Loop: Header=BB26_5 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_1
# %bb.13:                               # %b5053
                                        #   in Loop: Header=BB26_5 Depth=1
	incl	%esi
	jmp	.LBB26_5
.LBB26_1:                               # %b1810
	movl	20(%esp), %esi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %ebx
	testl	%ebx, %ebx
	je	.LBB26_2
# %bb.8:                                # %b5050
	movl	$str56+1, %edi
	.p2align	4, 0x90
.LBB26_9:                               # %b5042
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_14
# %bb.10:                               # %b5045
                                        #   in Loop: Header=BB26_9 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_15
	.p2align	4, 0x90
.LBB26_14:                              # %b5047
                                        #   in Loop: Header=BB26_9 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_15:                              # %b5038
                                        #   in Loop: Header=BB26_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_2
# %bb.16:                               # %b5040
                                        #   in Loop: Header=BB26_9 Depth=1
	incl	%edi
	jmp	.LBB26_9
.LBB26_2:                               # %b1806
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str57, %eax
	testl	%eax, %eax
	je	.LBB26_3
# %bb.7:                                # %b5037
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str57+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_3:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end26:
	.size	unhandled, .Lfunc_end26-unhandled
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6395
	.type	func_b6395,@function
func_b6395:                             # @func_b6395
	.cfi_startproc
# %bb.0:                                # %b6395
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	32(%esp), %esi
	movl	20(%esp), %eax
	addl	16(%esp), %eax
	cmpl	24(%esp), %eax
	ja	.LBB27_2
# %bb.1:                                # %b6397
	movl	28(%esp), %ebx
	shrl	$4, %ebx
	je	.LBB27_2
	.p2align	4, 0x90
.LBB27_5:                               # %b3128
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %edi
	movl	%ebx, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%edi)
	leal	1(%edi), %eax
	cmpl	$32, %eax
	jae	.LBB27_7
# %bb.6:                                # %b6392
                                        #   in Loop: Header=BB27_5 Depth=1
	shrl	$4, %ebx
	jne	.LBB27_5
.LBB27_7:                               # %b3129
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6379
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB27_8:                               # %b3126
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%edi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%edi
	jns	.LBB27_8
	jmp	.LBB27_9
.LBB27_2:                               # %b6386
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB27_4
# %bb.3:                                # %b6388
	movl	$1, %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
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
	calll	func_b6379
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_4:                               # %b3390
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_9:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end27:
	.size	func_b6395, .Lfunc_end27-func_b6395
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5034
	.type	func_b5034,@function
func_b5034:                             # @func_b5034
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
.LBB28_1:                               # %b5034
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB28_3
# %bb.2:                                # %b5996
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_4
	.p2align	4, 0x90
.LBB28_3:                               # %b5997
                                        #   in Loop: Header=BB28_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_4:                               # %b5025
                                        #   in Loop: Header=BB28_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB28_5
# %bb.6:                                # %b5027
                                        #   in Loop: Header=BB28_1 Depth=1
	incl	%esi
	jmp	.LBB28_1
.LBB28_5:                               # %b303
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end28:
	.size	func_b5034, .Lfunc_end28-func_b5034
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1959
	.type	func_b1959,@function
func_b1959:                             # @func_b1959
	.cfi_startproc
# %bb.0:                                # %b1959
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_12
# %bb.1:                                # %b1947
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	console+4, %eax
	cmpl	$13, %ebx
	je	.LBB29_2
# %bb.8:                                # %b1955
	cmpl	$10, %ebx
	je	.LBB29_2
# %bb.9:                                # %b1957
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
	ja	.LBB29_2
# %bb.10:                               # %b6370
	movb	%cl, console+5
	jmp	.LBB29_11
.LBB29_12:                              # %c464
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
	jmp	func_b1950                      # TAILCALL
.LBB29_2:                               # %b1952
	.cfi_def_cfa_offset 32
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB29_4
# %bb.3:                                # %b6366
	movb	%al, console+4
	jmp	.LBB29_11
.LBB29_4:                               # %b1954
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB29_6
	.p2align	4, 0x90
.LBB29_5:                               # %b6357
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
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB29_5
.LBB29_6:                               # %b1578.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB29_7:                               # %b1578
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB29_7
.LBB29_11:                              # %b303
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
.Lfunc_end29:
	.size	func_b1959, .Lfunc_end29-func_b1959
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6379
	.type	func_b6379,@function
func_b6379:                             # @func_b6379
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
.LBB30_1:                               # %b6379
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB30_3
# %bb.2:                                # %b6381
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	%esi, (%esp)
	calll	func_b1959
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB30_1
.LBB30_3:                               # %b303
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end30:
	.size	func_b6379, .Lfunc_end30-func_b6379
	.cfi_endproc
                                        # -- End function
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
	movl	$objects+24, ball
	movb	$0, current
	movl	$0, users
	movl	$0, users+4
	movl	$0, users+8
	movl	$0, users+12
	movl	$0, users+16
	movl	$0, users+20
	movl	$0, users+24
	movl	$0, users+28
	movl	$59, users+32
	movl	$59, users+36
	movl	$59, users+40
	movl	$59, users+44
	movl	$0, users+48
	movl	$0, users+52
	movl	$51, users+56
	movl	$12802, users+60                # imm = 0x3202
	movl	$0, users+64
	movl	$59, users+68
	movl	$0, users+72
	movl	$0, users+76
	movl	$0, users+80
	movl	$0, users+84
	movl	$0, users+88
	movl	$0, users+92
	movl	$0, users+96
	movl	$0, users+100
	movl	$59, users+104
	movl	$59, users+108
	movl	$59, users+112
	movl	$59, users+116
	movl	$0, users+120
	movl	$0, users+124
	movl	$51, users+128
	movl	$12802, users+132               # imm = 0x3202
	movl	$0, users+136
	movl	$59, users+140
	movl	$1326972928, console            # imm = 0x4F180000
	movw	$0, console+4
	movb	$10, console+6
	movb	$0, keyUp
	movb	$0, keyDown
	movl	$1, ticks
	movl	$8, objects
	movl	$1, objects+4
	movl	$18, objects+8
	movl	$21, objects+12
	movl	$48, objects+16
	movl	$22, objects+20
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$objects+24
	.cfi_adjust_cfa_offset 4
	calll	func_b4523
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	$796679213, spinner             # imm = 0x2F7C5C2D
	movb	$0, spinpos
	movb	$55, pos
	movb	$1, dir
	movb	$1, headingLeft
	movb	$1, headingTop
	movb	$0, itoaBuf
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$itoaBuf+1
	.cfi_adjust_cfa_offset 4
	calll	func_b4530
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$32, console+6
	calll	func_b1223
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB31_7
# %bb.1:                                # %b5880
	movl	$str45+1, %esi
	.p2align	4, 0x90
.LBB31_2:                               # %b5872
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB31_4
# %bb.3:                                # %b5875
                                        #   in Loop: Header=BB31_2 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_5
	.p2align	4, 0x90
.LBB31_4:                               # %b5877
                                        #   in Loop: Header=BB31_2 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_5:                               # %b5877
                                        #   in Loop: Header=BB31_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB31_7
# %bb.6:                                # %b5870
                                        #   in Loop: Header=BB31_2 Depth=1
	incl	%esi
	jmp	.LBB31_2
.LBB31_7:                               # %b1930
	movl	$756482305, console             # imm = 0x2D170101
	movw	$257, console+4                 # imm = 0x101
	movb	$15, console+6
	calll	func_b1223
	movzbl	str11, %eax
	testl	%eax, %eax
	je	.LBB31_9
# %bb.8:                                # %b5865
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str11+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5862
	jmp	.LBB31_57
.LBB31_9:                               # %b2987
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
	calll	func_b5191
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str13, %eax
	testl	%eax, %eax
	je	.LBB31_11
# %bb.10:                               # %b5847
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str13+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5844
	jmp	.LBB31_57
.LBB31_11:                              # %b2988
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
	calll	func_b5329
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB31_13
# %bb.12:                               # %b5829
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5826
	jmp	.LBB31_57
.LBB31_13:                              # %b2989
	.cfi_def_cfa_offset 32
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB31_15
# %bb.14:                               # %b5748
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5742
	jmp	.LBB31_33
.LBB31_15:                              # %b5725
	.cfi_def_cfa_offset 32
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB31_17
# %bb.16:                               # %b5727
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_17:                              # %b5713
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB31_20
# %bb.18:                               # %b5724
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %ebx
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB31_27
# %bb.19:                               # %b5719
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_28
.LBB31_20:                              # %b5706
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB31_24
# %bb.21:                               # %b6220
	leal	1(%esi), %edi
.LBB31_22:                              # %b5702
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB31_24
# %bb.23:                               # %b5700
                                        #   in Loop: Header=BB31_22 Depth=1
	incl	%edi
	jmp	.LBB31_22
.LBB31_24:                              # %b5689
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB31_29
# %bb.25:                               # %b5691
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str20+1, %edi
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB31_31
# %bb.26:                               # %b5695
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_32
.LBB31_27:                              # %b5721
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_28:                              # %b5721
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5618
	jmp	.LBB31_33
.LBB31_29:                              # %b3662
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB31_34
# %bb.30:                               # %b5680
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	jmp	.LBB31_33
.LBB31_31:                              # %b5697
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_32:                              # %b5697
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5578
.LBB31_33:                              # %b3663
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_34:                              # %b3663
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB31_37
# %bb.35:                               # %b5745
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB31_42
# %bb.36:                               # %b5672
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_43
.LBB31_37:                              # %b5640
	.cfi_def_cfa_offset 32
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB31_39
# %bb.38:                               # %b5642
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_39:                              # %b5628
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB31_44
# %bb.40:                               # %b5639
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %ebx
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB31_51
# %bb.41:                               # %b5634
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_52
.LBB31_42:                              # %b5674
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_43:                              # %b5674
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5656
	jmp	.LBB31_57
.LBB31_44:                              # %b5605
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB31_48
# %bb.45:                               # %b6219
	leal	1(%esi), %edi
.LBB31_46:                              # %b5601
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB31_48
# %bb.47:                               # %b5599
                                        #   in Loop: Header=BB31_46 Depth=1
	incl	%edi
	jmp	.LBB31_46
.LBB31_48:                              # %b5588
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB31_53
# %bb.49:                               # %b5590
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str20+1, %edi
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB31_55
# %bb.50:                               # %b5594
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_56
.LBB31_51:                              # %b5636
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_52:                              # %b5636
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5618
	jmp	.LBB31_57
.LBB31_53:                              # %b3668
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB31_58
# %bb.54:                               # %b5572
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	jmp	.LBB31_57
.LBB31_55:                              # %b5596
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_56:                              # %b5596
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5578
.LBB31_57:                              # %b5847
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_58:                              # %b5847
	movl	4096, %esi
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	.LBB31_63
# %bb.59:
	addl	$4, %esi
	movl	%ecx, %eax
	negl	%eax
	addl	$12, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB31_60:                              # %b5567
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %ebx
	je	.LBB31_62
# %bb.61:                               # %b5565
                                        #   in Loop: Header=BB31_60 Depth=1
	decl	%ebx
	addl	$12, %esi
	cmpl	%ebx, %eax
	jne	.LBB31_60
	jmp	.LBB31_63
.LBB31_62:                              # %b5502
	movl	$1, %eax
	subl	%ecx, %eax
	cmpl	%ebx, %eax
	jne	.LBB31_70
.LBB31_63:                              # %b5354
	movzbl	str52, %edi
	testl	%edi, %edi
	je	.LBB31_117
# %bb.64:                               # %b5356
	movl	$str52+1, %esi
	.p2align	4, 0x90
.LBB31_65:                              # %b5348
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB31_67
# %bb.66:                               # %b5351
                                        #   in Loop: Header=BB31_65 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_68
	.p2align	4, 0x90
.LBB31_67:                              # %b5353
                                        #   in Loop: Header=BB31_65 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_68:                              # %b5353
                                        #   in Loop: Header=BB31_65 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB31_117
# %bb.69:                               # %b5346
                                        #   in Loop: Header=BB31_65 Depth=1
	incl	%esi
	jmp	.LBB31_65
.LBB31_70:                              # %b5504
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	str47, %edi
	testl	%edi, %edi
	je	.LBB31_77
# %bb.71:                               # %b5556
	movl	$str47+1, %ebp
	.p2align	4, 0x90
.LBB31_72:                              # %b5557
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB31_74
# %bb.73:                               # %b5558
                                        #   in Loop: Header=BB31_72 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_75
	.p2align	4, 0x90
.LBB31_74:                              # %b5564
                                        #   in Loop: Header=BB31_72 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_75:                              # %b5564
                                        #   in Loop: Header=BB31_72 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebp), %edi
	testl	%edi, %edi
	je	.LBB31_77
# %bb.76:                               # %b5563
                                        #   in Loop: Header=BB31_72 Depth=1
	incl	%ebp
	jmp	.LBB31_72
.LBB31_77:                              # %b5510
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-2(%eax,%ebx), %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b5136
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str48, %ebp
	testl	%ebp, %ebp
	je	.LBB31_84
# %bb.78:                               # %b5547
	movl	$str48+1, %ebx
	.p2align	4, 0x90
.LBB31_79:                              # %b5548
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB31_81
# %bb.80:                               # %b5549
                                        #   in Loop: Header=BB31_79 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_82
	.p2align	4, 0x90
.LBB31_81:                              # %b5555
                                        #   in Loop: Header=BB31_79 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_82:                              # %b5555
                                        #   in Loop: Header=BB31_79 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB31_84
# %bb.83:                               # %b5554
                                        #   in Loop: Header=BB31_79 Depth=1
	incl	%ebx
	jmp	.LBB31_79
.LBB31_84:                              # %b5546
	testl	%edi, %edi
	je	.LBB31_101
# %bb.85:                               # %b6218
	leal	12(%esi), %edi
	movzbl	str49, %ebp
	testl	%ebp, %ebp
	je	.LBB31_92
# %bb.86:                               # %b6680
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str49+1, %ebx
	.p2align	4, 0x90
.LBB31_87:                              # %b6680
                                        # =>This Inner Loop Header: Depth=1
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB31_89
# %bb.88:                               # %b6712
                                        #   in Loop: Header=BB31_87 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_90
	.p2align	4, 0x90
.LBB31_89:                              # %b6713
                                        #   in Loop: Header=BB31_87 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_90:                              # %b6713
                                        #   in Loop: Header=BB31_87 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB31_92
# %bb.91:                               # %b6718
                                        #   in Loop: Header=BB31_87 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB31_87
.LBB31_92:                              # %b6679
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5136
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str50, %ebp
	testl	%ebp, %ebp
	je	.LBB31_99
# %bb.93:                               # %b6700
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str50+1, %ebx
	.p2align	4, 0x90
.LBB31_94:                              # %b6700
                                        # =>This Inner Loop Header: Depth=1
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB31_96
# %bb.95:                               # %b6719
                                        #   in Loop: Header=BB31_94 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_97
	.p2align	4, 0x90
.LBB31_96:                              # %b6720
                                        #   in Loop: Header=BB31_94 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_97:                              # %b6720
                                        #   in Loop: Header=BB31_94 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB31_99
# %bb.98:                               # %b6723
                                        #   in Loop: Header=BB31_94 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB31_94
.LBB31_99:                              # %b6699
	movl	8(%esi), %esi
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB31_108
# %bb.100:                              # %b5429
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5423
	jmp	.LBB31_110
.LBB31_101:                             # %b5367
	.cfi_def_cfa_offset 32
	movzbl	str51, %edi
	testl	%edi, %edi
	je	.LBB31_117
# %bb.102:                              # %b5369
	movl	$str51+1, %esi
	.p2align	4, 0x90
.LBB31_103:                             # %b5361
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB31_105
# %bb.104:                              # %b5364
                                        #   in Loop: Header=BB31_103 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_106
	.p2align	4, 0x90
.LBB31_105:                             # %b5366
                                        #   in Loop: Header=BB31_103 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_106:                             # %b5366
                                        #   in Loop: Header=BB31_103 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB31_117
# %bb.107:                              # %b5359
                                        #   in Loop: Header=BB31_103 Depth=1
	incl	%esi
	jmp	.LBB31_103
.LBB31_108:                             # %b2795
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str54, %eax
	testl	%eax, %eax
	je	.LBB31_121
# %bb.109:                              # %b6678
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str54+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5374
.LBB31_110:                             # %b6678
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_111:                             # %b6678
	movl	8(%edi), %esi
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB31_113
# %bb.112:                              # %b5426
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5405
	jmp	.LBB31_115
.LBB31_113:                             # %b2783
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str54, %eax
	testl	%eax, %eax
	je	.LBB31_122
# %bb.114:                              # %b6675
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str54+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5384
.LBB31_115:                             # %b2560
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_116:                             # %b2560
	movb	$0, current
	movb	$17, %al
	#APP
	outb	%al, $32
	#NO_APP
	movb	$32, %al
	#APP
	outb	%al, $33
	#NO_APP
	movb	$4, %al
	#APP
	outb	%al, $33
	#NO_APP
	movb	$1, %al
	#APP
	outb	%al, $33
	#NO_APP
	movb	$-5, %al
	#APP
	outb	%al, $33
	#NO_APP
	movb	$17, %al
	#APP
	outb	%al, $160
	#NO_APP
	movb	$40, %al
	#APP
	outb	%al, $161
	#NO_APP
	movb	$2, %al
	#APP
	outb	%al, $161
	#NO_APP
	movb	$1, %al
	#APP
	outb	%al, $161
	#NO_APP
	movb	$-1, %al
	#APP
	outb	%al, $161
	#NO_APP
	movb	$52, %al
	#APP
	outb	%al, $67
	#NO_APP
	movb	$-100, %al
	#APP
	outb	%al, $64
	#NO_APP
	movb	$46, %al
	#APP
	outb	%al, $64
	#NO_APP
	#APP
	inb	$33, %al
	#NO_APP
	andb	$-2, %al
	#APP
	outb	%al, $33
	#NO_APP
	#APP
	inb	$33, %al
	#NO_APP
	andb	$-3, %al
	#APP
	outb	%al, $33
	#NO_APP
	movzbl	current, %eax
	leal	(%eax,%eax,8), %eax
	leal	users(,%eax,8), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	returnTo
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_117:                             # %b5341
	movzbl	str46, %eax
	testl	%eax, %eax
	je	.LBB31_119
# %bb.118:                              # %b5343
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str46+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB31_120
.LBB31_119:                             # %b303
	.cfi_def_cfa_offset 32
	addl	$12, %esp
	.cfi_def_cfa_offset 20
.LBB31_120:                             # %b303
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.LBB31_121:                             # %b6677
	.cfi_def_cfa_offset 32
	movl	%esi, users+52
	jmp	.LBB31_111
.LBB31_122:                             # %b6674
	movl	%esi, users+124
	jmp	.LBB31_116
.Lfunc_end31:
	.size	kernel, .Lfunc_end31-kernel
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4523
	.type	func_b4523,@function
func_b4523:                             # @func_b4523
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
	movl	36(%esp), %edi
	movl	32(%esp), %ebx
	movl	$-858993459, %ebp               # imm = 0xCCCCCCCD
	jmp	.LBB32_1
	.p2align	4, 0x90
.LBB32_3:                               # %b6182
                                        #   in Loop: Header=BB32_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$20
	.cfi_adjust_cfa_offset 4
	pushl	$22
	.cfi_adjust_cfa_offset 4
	pushl	$16
	.cfi_adjust_cfa_offset 4
	pushl	$48
	.cfi_adjust_cfa_offset 4
	pushl	$12
	.cfi_adjust_cfa_offset 4
	pushl	$21
	.cfi_adjust_cfa_offset 4
	pushl	$8
	.cfi_adjust_cfa_offset 4
	pushl	$18
	.cfi_adjust_cfa_offset 4
	pushl	$4
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$8
	.cfi_adjust_cfa_offset 4
.LBB32_4:                               # %b4995
                                        #   in Loop: Header=BB32_1 Depth=1
	calll	func_b4335
	addl	$64, %esp
	.cfi_adjust_cfa_offset -64
.LBB32_5:                               # %b4995
                                        #   in Loop: Header=BB32_1 Depth=1
	incl	%edi
	addl	$24, %ebx
.LBB32_1:                               # %b4523
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, %edi
	ja	.LBB32_17
# %bb.2:                                # %b5920
                                        #   in Loop: Header=BB32_1 Depth=1
	testl	%edi, %edi
	je	.LBB32_3
# %bb.7:                                # %b6183
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$1, %edi
	jne	.LBB32_8
# %bb.6:                                # %b6659
                                        #   in Loop: Header=BB32_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$20
	.cfi_adjust_cfa_offset 4
	pushl	$26
	.cfi_adjust_cfa_offset 4
	pushl	$16
	.cfi_adjust_cfa_offset 4
	pushl	$224
	.cfi_adjust_cfa_offset 4
	pushl	$12
	.cfi_adjust_cfa_offset 4
	pushl	$20
	.cfi_adjust_cfa_offset 4
	pushl	$8
	.cfi_adjust_cfa_offset 4
	pushl	$18
	.cfi_adjust_cfa_offset 4
	pushl	$4
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB32_4
	.p2align	4, 0x90
.LBB32_8:                               # %b6660
                                        #   in Loop: Header=BB32_1 Depth=1
	.cfi_def_cfa_offset 32
	xorl	%edx, %edx
	movl	$25, %eax
	movl	$1, %ecx
	cmpl	$2, %edi
	je	.LBB32_9
# %bb.10:                               # %b6697
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$44, %edx
	cmpl	$3, %edi
	je	.LBB32_9
# %bb.11:                               # %b6711
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$4, %edi
	jne	.LBB32_13
# %bb.12:                               #   in Loop: Header=BB32_1 Depth=1
	movl	$1, %eax
	movl	$44, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB32_9:                               # %b6696
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	%ecx, (%ebx)
	movl	%eax, 4(%ebx)
	movl	%edx, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$112, 16(%ebx)
	movl	$18, 20(%ebx)
	jmp	.LBB32_5
.LBB32_13:                              # %b6717
                                        #   in Loop: Header=BB32_1 Depth=1
	leal	-5(%edi), %ecx
	movl	%ecx, %eax
	movl	$1717986919, %edx               # imm = 0x66666667
	imull	%edx
	movl	%edx, %esi
	movl	%edx, %eax
	shrl	$31, %eax
	sarl	%esi
	addl	%eax, %esi
	movl	%ecx, %eax
	mull	%ebp
	shrl	$2, %edx
	leal	(%edx,%edx,4), %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	leal	3(,%edx,8), %eax
	leal	2(%esi,%esi,2), %edx
	movl	$80, %esi
	testb	$1, %cl
	jne	.LBB32_14
# %bb.15:                               # %b6722
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$192, %esi
	testb	$2, %cl
	jne	.LBB32_14
# %bb.16:                               # %g532
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$208, %esi
.LBB32_14:                              # %b6721
                                        #   in Loop: Header=BB32_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$20
	.cfi_adjust_cfa_offset 4
	pushl	$19
	.cfi_adjust_cfa_offset 4
	pushl	$16
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$12
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	$8
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$4
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$6
	.cfi_adjust_cfa_offset 4
	jmp	.LBB32_4
.LBB32_17:                              # %b4027
	.cfi_def_cfa_offset 32
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
.Lfunc_end32:
	.size	func_b4523, .Lfunc_end32-func_b4523
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4530
	.type	func_b4530,@function
func_b4530:                             # @func_b4530
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	cmpl	$31, %eax
	ja	.LBB33_3
	.p2align	4, 0x90
.LBB33_2:                               # %b4531
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%ecx)
	incl	%eax
	incl	%ecx
	cmpl	$31, %eax
	jbe	.LBB33_2
.LBB33_3:                               # %b4027
	retl
.Lfunc_end33:
	.size	func_b4530, .Lfunc_end33-func_b4530
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5191
	.type	func_b5191,@function
func_b5191:                             # @func_b5191
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
	jmp	.LBB34_1
	.p2align	4, 0x90
.LBB34_3:                               # %b6188
                                        #   in Loop: Header=BB34_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5173
.LBB34_4:                               # %b5191
                                        #   in Loop: Header=BB34_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$12, %edi
.LBB34_1:                               # %b5191
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB34_6
# %bb.2:                                # %b5193
                                        #   in Loop: Header=BB34_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str1, %edx
	testl	%edx, %edx
	je	.LBB34_3
# %bb.5:                                # %b6189
                                        #   in Loop: Header=BB34_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str1+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b5185
	jmp	.LBB34_4
.LBB34_6:                               # %b444
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end34:
	.size	func_b5191, .Lfunc_end34-func_b5191
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5862
	.type	func_b5862,@function
func_b5862:                             # @func_b5862
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
.LBB35_1:                               # %b5862
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB35_3
# %bb.2:                                # %b6204
                                        #   in Loop: Header=BB35_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_4
	.p2align	4, 0x90
.LBB35_3:                               # %b6205
                                        #   in Loop: Header=BB35_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_4:                               # %b6205
                                        #   in Loop: Header=BB35_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB35_6
# %bb.5:                                # %b5855
                                        #   in Loop: Header=BB35_1 Depth=1
	incl	%esi
	jmp	.LBB35_1
.LBB35_6:                               # %b1912
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
	calll	func_b5191
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str13, %eax
	testl	%eax, %eax
	je	.LBB35_8
# %bb.7:                                # %b5852
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str13+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5844
	jmp	.LBB35_60
.LBB35_8:                               # %b1910
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
	calll	func_b5329
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB35_10
# %bb.9:                                # %b5834
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5826
	jmp	.LBB35_60
.LBB35_10:                              # %b1908
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB35_12
# %bb.11:                               # %b5814
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5742
	jmp	.LBB35_30
.LBB35_12:                              # %b5804
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB35_14
# %bb.13:                               # %b5806
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_14:                              # %b5792
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB35_17
# %bb.15:                               # %b5803
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %ebx
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB35_24
# %bb.16:                               # %b5798
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_25
.LBB35_17:                              # %b5785
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB35_21
# %bb.18:                               # %b6199
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB35_19:                              # %b5781
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB35_21
# %bb.20:                               # %b5779
                                        #   in Loop: Header=BB35_19 Depth=1
	incl	%edi
	jmp	.LBB35_19
.LBB35_21:                              # %b5768
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB35_26
# %bb.22:                               # %b5770
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str20+1, %edi
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_28
# %bb.23:                               # %b5774
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_29
.LBB35_24:                              # %b5800
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_25:                              # %b5800
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5618
	jmp	.LBB35_30
.LBB35_26:                              # %b3371
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB35_31
# %bb.27:                               # %b5759
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	jmp	.LBB35_30
.LBB35_28:                              # %b5776
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_29:                              # %b5776
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5578
.LBB35_30:                              # %b3102
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_31:                              # %b3102
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB35_38
# %bb.32:                               # %b5811
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB35_33:                              # %b5660
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB35_35
# %bb.34:                               # %b5663
                                        #   in Loop: Header=BB35_33 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_36
	.p2align	4, 0x90
.LBB35_35:                              # %b5665
                                        #   in Loop: Header=BB35_33 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_36:                              # %b5656
                                        #   in Loop: Header=BB35_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB35_38
# %bb.37:                               # %b5658
                                        #   in Loop: Header=BB35_33 Depth=1
	incl	%ebx
	jmp	.LBB35_33
.LBB35_38:                              # %b5651
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB35_40
# %bb.39:                               # %b5653
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_40:                              # %b5645
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB35_47
# %bb.41:                               # %b5650
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB35_42:                              # %b5622
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB35_44
# %bb.43:                               # %b5625
                                        #   in Loop: Header=BB35_42 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_45
	.p2align	4, 0x90
.LBB35_44:                              # %b5627
                                        #   in Loop: Header=BB35_42 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_45:                              # %b5618
                                        #   in Loop: Header=BB35_42 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB35_47
# %bb.46:                               # %b5620
                                        #   in Loop: Header=BB35_42 Depth=1
	incl	%ebx
	jmp	.LBB35_42
.LBB35_47:                              # %b5617
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB35_51
# %bb.48:                               # %b6196
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB35_49:                              # %b5613
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB35_51
# %bb.50:                               # %b5611
                                        #   in Loop: Header=BB35_49 Depth=1
	incl	%edi
	jmp	.LBB35_49
.LBB35_51:                              # %b5606
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB35_58
# %bb.52:                               # %b5608
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB35_53:                              # %b5582
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_55
# %bb.54:                               # %b5585
                                        #   in Loop: Header=BB35_53 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_56
	.p2align	4, 0x90
.LBB35_55:                              # %b5587
                                        #   in Loop: Header=BB35_53 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_56:                              # %b5578
                                        #   in Loop: Header=BB35_53 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_58
# %bb.57:                               # %b5580
                                        #   in Loop: Header=BB35_53 Depth=1
	incl	%edi
	jmp	.LBB35_53
.LBB35_58:                              # %b1902
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB35_61
# %bb.59:                               # %b5577
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
.LBB35_60:                              # %b303
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_61:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end35:
	.size	func_b5862, .Lfunc_end35-func_b5862
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5329
	.type	func_b5329,@function
func_b5329:                             # @func_b5329
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
	jmp	.LBB36_1
	.p2align	4, 0x90
.LBB36_3:                               # %b6194
                                        #   in Loop: Header=BB36_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5311
.LBB36_4:                               # %b5329
                                        #   in Loop: Header=BB36_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$8, %edi
.LBB36_1:                               # %b5329
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB36_6
# %bb.2:                                # %b5331
                                        #   in Loop: Header=BB36_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str1, %edx
	testl	%edx, %edx
	je	.LBB36_3
# %bb.5:                                # %b6195
                                        #   in Loop: Header=BB36_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str1+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b5323
	jmp	.LBB36_4
.LBB36_6:                               # %b444
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end36:
	.size	func_b5329, .Lfunc_end36-func_b5329
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5844
	.type	func_b5844,@function
func_b5844:                             # @func_b5844
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
.LBB37_1:                               # %b5844
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB37_3
# %bb.2:                                # %b6202
                                        #   in Loop: Header=BB37_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_4
	.p2align	4, 0x90
.LBB37_3:                               # %b6203
                                        #   in Loop: Header=BB37_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_4:                               # %b6203
                                        #   in Loop: Header=BB37_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB37_6
# %bb.5:                                # %b5837
                                        #   in Loop: Header=BB37_1 Depth=1
	incl	%esi
	jmp	.LBB37_1
.LBB37_6:                               # %b1910
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
	calll	func_b5329
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB37_8
# %bb.7:                                # %b5834
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5826
	jmp	.LBB37_58
.LBB37_8:                               # %b1908
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB37_10
# %bb.9:                                # %b5814
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5742
	jmp	.LBB37_28
.LBB37_10:                              # %b5804
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB37_12
# %bb.11:                               # %b5806
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB37_12:                              # %b5792
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB37_15
# %bb.13:                               # %b5803
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %ebx
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB37_22
# %bb.14:                               # %b5798
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_23
.LBB37_15:                              # %b5785
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB37_19
# %bb.16:                               # %b6199
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB37_17:                              # %b5781
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB37_19
# %bb.18:                               # %b5779
                                        #   in Loop: Header=BB37_17 Depth=1
	incl	%edi
	jmp	.LBB37_17
.LBB37_19:                              # %b5768
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB37_24
# %bb.20:                               # %b5770
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str20+1, %edi
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_26
# %bb.21:                               # %b5774
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_27
.LBB37_22:                              # %b5800
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_23:                              # %b5800
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5618
	jmp	.LBB37_28
.LBB37_24:                              # %b3371
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB37_29
# %bb.25:                               # %b5759
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	jmp	.LBB37_28
.LBB37_26:                              # %b5776
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_27:                              # %b5776
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5578
.LBB37_28:                              # %b3102
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB37_29:                              # %b3102
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB37_36
# %bb.30:                               # %b5811
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB37_31:                              # %b5660
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB37_33
# %bb.32:                               # %b5663
                                        #   in Loop: Header=BB37_31 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_34
	.p2align	4, 0x90
.LBB37_33:                              # %b5665
                                        #   in Loop: Header=BB37_31 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_34:                              # %b5656
                                        #   in Loop: Header=BB37_31 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB37_36
# %bb.35:                               # %b5658
                                        #   in Loop: Header=BB37_31 Depth=1
	incl	%ebx
	jmp	.LBB37_31
.LBB37_36:                              # %b5651
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB37_38
# %bb.37:                               # %b5653
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB37_38:                              # %b5645
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB37_45
# %bb.39:                               # %b5650
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB37_40:                              # %b5622
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB37_42
# %bb.41:                               # %b5625
                                        #   in Loop: Header=BB37_40 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_43
	.p2align	4, 0x90
.LBB37_42:                              # %b5627
                                        #   in Loop: Header=BB37_40 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_43:                              # %b5618
                                        #   in Loop: Header=BB37_40 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB37_45
# %bb.44:                               # %b5620
                                        #   in Loop: Header=BB37_40 Depth=1
	incl	%ebx
	jmp	.LBB37_40
.LBB37_45:                              # %b5617
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB37_49
# %bb.46:                               # %b6196
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB37_47:                              # %b5613
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB37_49
# %bb.48:                               # %b5611
                                        #   in Loop: Header=BB37_47 Depth=1
	incl	%edi
	jmp	.LBB37_47
.LBB37_49:                              # %b5606
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB37_56
# %bb.50:                               # %b5608
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB37_51:                              # %b5582
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_53
# %bb.52:                               # %b5585
                                        #   in Loop: Header=BB37_51 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_54
	.p2align	4, 0x90
.LBB37_53:                              # %b5587
                                        #   in Loop: Header=BB37_51 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_54:                              # %b5578
                                        #   in Loop: Header=BB37_51 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_56
# %bb.55:                               # %b5580
                                        #   in Loop: Header=BB37_51 Depth=1
	incl	%edi
	jmp	.LBB37_51
.LBB37_56:                              # %b1902
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB37_59
# %bb.57:                               # %b5577
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
.LBB37_58:                              # %b303
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB37_59:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end37:
	.size	func_b5844, .Lfunc_end37-func_b5844
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5826
	.type	func_b5826,@function
func_b5826:                             # @func_b5826
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
.LBB38_1:                               # %b5826
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB38_3
# %bb.2:                                # %b6200
                                        #   in Loop: Header=BB38_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_4
	.p2align	4, 0x90
.LBB38_3:                               # %b6201
                                        #   in Loop: Header=BB38_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_4:                               # %b6201
                                        #   in Loop: Header=BB38_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB38_6
# %bb.5:                                # %b5819
                                        #   in Loop: Header=BB38_1 Depth=1
	incl	%esi
	jmp	.LBB38_1
.LBB38_6:                               # %b1908
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB38_8
# %bb.7:                                # %b5814
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5742
	jmp	.LBB38_26
.LBB38_8:                               # %b5804
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB38_10
# %bb.9:                                # %b5806
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB38_10:                              # %b5792
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB38_13
# %bb.11:                               # %b5803
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str19+1, %ebx
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB38_20
# %bb.12:                               # %b5798
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_21
.LBB38_13:                              # %b5785
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB38_17
# %bb.14:                               # %b6199
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB38_15:                              # %b5781
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB38_17
# %bb.16:                               # %b5779
                                        #   in Loop: Header=BB38_15 Depth=1
	incl	%edi
	jmp	.LBB38_15
.LBB38_17:                              # %b5768
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB38_22
# %bb.18:                               # %b5770
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str20+1, %edi
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB38_24
# %bb.19:                               # %b5774
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_25
.LBB38_20:                              # %b5800
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_21:                              # %b5800
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5618
	jmp	.LBB38_26
.LBB38_22:                              # %b3371
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB38_27
# %bb.23:                               # %b5759
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	jmp	.LBB38_26
.LBB38_24:                              # %b5776
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_25:                              # %b5776
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5578
.LBB38_26:                              # %b3102
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB38_27:                              # %b3102
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB38_34
# %bb.28:                               # %b5811
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB38_29:                              # %b5660
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB38_31
# %bb.30:                               # %b5663
                                        #   in Loop: Header=BB38_29 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_32
	.p2align	4, 0x90
.LBB38_31:                              # %b5665
                                        #   in Loop: Header=BB38_29 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_32:                              # %b5656
                                        #   in Loop: Header=BB38_29 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB38_34
# %bb.33:                               # %b5658
                                        #   in Loop: Header=BB38_29 Depth=1
	incl	%ebx
	jmp	.LBB38_29
.LBB38_34:                              # %b5651
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB38_36
# %bb.35:                               # %b5653
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB38_36:                              # %b5645
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB38_43
# %bb.37:                               # %b5650
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB38_38:                              # %b5622
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB38_40
# %bb.39:                               # %b5625
                                        #   in Loop: Header=BB38_38 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_41
	.p2align	4, 0x90
.LBB38_40:                              # %b5627
                                        #   in Loop: Header=BB38_38 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_41:                              # %b5618
                                        #   in Loop: Header=BB38_38 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB38_43
# %bb.42:                               # %b5620
                                        #   in Loop: Header=BB38_38 Depth=1
	incl	%ebx
	jmp	.LBB38_38
.LBB38_43:                              # %b5617
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB38_47
# %bb.44:                               # %b6196
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB38_45:                              # %b5613
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB38_47
# %bb.46:                               # %b5611
                                        #   in Loop: Header=BB38_45 Depth=1
	incl	%edi
	jmp	.LBB38_45
.LBB38_47:                              # %b5606
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB38_54
# %bb.48:                               # %b5608
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB38_49:                              # %b5582
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB38_51
# %bb.50:                               # %b5585
                                        #   in Loop: Header=BB38_49 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_52
	.p2align	4, 0x90
.LBB38_51:                              # %b5587
                                        #   in Loop: Header=BB38_49 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_52:                              # %b5578
                                        #   in Loop: Header=BB38_49 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB38_54
# %bb.53:                               # %b5580
                                        #   in Loop: Header=BB38_49 Depth=1
	incl	%edi
	jmp	.LBB38_49
.LBB38_54:                              # %b1902
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB38_56
# %bb.55:                               # %b5577
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB38_56:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end38:
	.size	func_b5826, .Lfunc_end38-func_b5826
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5742
	.type	func_b5742,@function
func_b5742:                             # @func_b5742
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
	movl	24(%esp), %esi
	movl	20(%esp), %edi
	movl	16(%esp), %ebx
	.p2align	4, 0x90
.LBB39_1:                               # %b5742
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB39_3
# %bb.2:                                # %b6197
                                        #   in Loop: Header=BB39_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB39_4
	.p2align	4, 0x90
.LBB39_3:                               # %b6198
                                        #   in Loop: Header=BB39_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB39_4:                               # %b5733
                                        #   in Loop: Header=BB39_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB39_5
# %bb.28:                               # %b5735
                                        #   in Loop: Header=BB39_1 Depth=1
	incl	%edi
	jmp	.LBB39_1
.LBB39_5:                               # %b5730
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB39_7
# %bb.6:                                # %b5732
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB39_7:                               # %b5732
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB39_8
# %bb.12:                               # %b5650
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB39_13:                              # %b5622
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB39_18
# %bb.14:                               # %b5625
                                        #   in Loop: Header=BB39_13 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB39_19
	.p2align	4, 0x90
.LBB39_18:                              # %b5627
                                        #   in Loop: Header=BB39_13 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB39_19:                              # %b5618
                                        #   in Loop: Header=BB39_13 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB39_8
# %bb.20:                               # %b5620
                                        #   in Loop: Header=BB39_13 Depth=1
	incl	%ebx
	jmp	.LBB39_13
.LBB39_8:                               # %b5617
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB39_9
# %bb.15:                               # %b6196
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB39_16:                              # %b5613
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB39_9
# %bb.17:                               # %b5611
                                        #   in Loop: Header=BB39_16 Depth=1
	incl	%edi
	jmp	.LBB39_16
.LBB39_9:                               # %b5606
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB39_10
# %bb.22:                               # %b5608
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB39_23:                              # %b5582
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB39_25
# %bb.24:                               # %b5585
                                        #   in Loop: Header=BB39_23 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB39_26
	.p2align	4, 0x90
.LBB39_25:                              # %b5587
                                        #   in Loop: Header=BB39_23 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB39_26:                              # %b5578
                                        #   in Loop: Header=BB39_23 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB39_10
# %bb.27:                               # %b5580
                                        #   in Loop: Header=BB39_23 Depth=1
	incl	%edi
	jmp	.LBB39_23
.LBB39_10:                              # %b1902
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB39_11
# %bb.21:                               # %b5577
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB39_11:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end39:
	.size	func_b5742, .Lfunc_end39-func_b5742
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5136
	.type	func_b5136,@function
func_b5136:                             # @func_b5136
	.cfi_startproc
# %bb.0:                                # %b5136
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
	movl	16(%esp), %esi
	movzbl	str5, %ebx
	testl	%ebx, %ebx
	je	.LBB40_1
# %bb.10:                               # %b5138
	movl	$str5+1, %edi
	.p2align	4, 0x90
.LBB40_11:                              # %b5120
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB40_16
# %bb.12:                               # %b5123
                                        #   in Loop: Header=BB40_11 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB40_17
	.p2align	4, 0x90
.LBB40_16:                              # %b5125
                                        #   in Loop: Header=BB40_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB40_17:                              # %b5116
                                        #   in Loop: Header=BB40_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB40_1
# %bb.18:                               # %b5118
                                        #   in Loop: Header=BB40_11 Depth=1
	incl	%edi
	jmp	.LBB40_11
.LBB40_1:                               # %b1884
	movl	(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str6, %ebx
	testl	%ebx, %ebx
	je	.LBB40_2
# %bb.13:                               # %b5115
	movl	$str6+1, %edi
	.p2align	4, 0x90
.LBB40_14:                              # %b5107
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB40_22
# %bb.15:                               # %b5110
                                        #   in Loop: Header=BB40_14 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB40_23
	.p2align	4, 0x90
.LBB40_22:                              # %b5112
                                        #   in Loop: Header=BB40_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB40_23:                              # %b5103
                                        #   in Loop: Header=BB40_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB40_2
# %bb.24:                               # %b5105
                                        #   in Loop: Header=BB40_14 Depth=1
	incl	%edi
	jmp	.LBB40_14
.LBB40_2:                               # %b1882
	movl	4(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str7, %ebx
	testl	%ebx, %ebx
	je	.LBB40_3
# %bb.19:                               # %b5102
	movl	$str7+1, %edi
	.p2align	4, 0x90
.LBB40_20:                              # %b5094
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB40_28
# %bb.21:                               # %b5097
                                        #   in Loop: Header=BB40_20 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB40_29
	.p2align	4, 0x90
.LBB40_28:                              # %b5099
                                        #   in Loop: Header=BB40_20 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB40_29:                              # %b5090
                                        #   in Loop: Header=BB40_20 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB40_3
# %bb.30:                               # %b5092
                                        #   in Loop: Header=BB40_20 Depth=1
	incl	%edi
	jmp	.LBB40_20
.LBB40_3:                               # %b1880
	movl	8(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	shrl	$4, %edi
	je	.LBB40_25
# %bb.4:                                # %b3128.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB40_5:                               # %b3128
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%esi)
	leal	1(%esi), %eax
	cmpl	$32, %eax
	jae	.LBB40_7
# %bb.6:                                # %b6392
                                        #   in Loop: Header=BB40_5 Depth=1
	shrl	$4, %edi
	jne	.LBB40_5
.LBB40_7:                               # %b3129
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6379
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB40_8:                               # %b3126
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB40_8
	jmp	.LBB40_9
.LBB40_25:                              # %b6386
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB40_27
# %bb.26:                               # %b6388
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
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
	calll	func_b6379
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB40_27:                              # %b3390
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB40_9:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end40:
	.size	func_b5136, .Lfunc_end40-func_b5136
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5656
	.type	func_b5656,@function
func_b5656:                             # @func_b5656
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
	jmp	.LBB41_1
	.p2align	4, 0x90
.LBB41_11:                              # %b5665
                                        #   in Loop: Header=BB41_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB41_12:                              # %b5656
                                        #   in Loop: Header=BB41_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB41_1:                               # %b5656
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB41_2
# %bb.10:                               # %b5658
                                        #   in Loop: Header=BB41_1 Depth=1
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB41_11
# %bb.9:                                # %b5663
                                        #   in Loop: Header=BB41_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB41_12
.LBB41_2:                               # %b5651
	.cfi_def_cfa_offset 16
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB41_4
# %bb.3:                                # %b5653
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB41_4:                               # %b5653
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB41_5
# %bb.13:                               # %b5650
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB41_14:                              # %b5622
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB41_19
# %bb.15:                               # %b5625
                                        #   in Loop: Header=BB41_14 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB41_20
	.p2align	4, 0x90
.LBB41_19:                              # %b5627
                                        #   in Loop: Header=BB41_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB41_20:                              # %b5618
                                        #   in Loop: Header=BB41_14 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB41_5
# %bb.21:                               # %b5620
                                        #   in Loop: Header=BB41_14 Depth=1
	incl	%ebx
	jmp	.LBB41_14
.LBB41_5:                               # %b5617
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB41_6
# %bb.16:                               # %b6196
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB41_17:                              # %b5613
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB41_6
# %bb.18:                               # %b5611
                                        #   in Loop: Header=BB41_17 Depth=1
	incl	%edi
	jmp	.LBB41_17
.LBB41_6:                               # %b5606
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB41_7
# %bb.23:                               # %b5608
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB41_24:                              # %b5582
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB41_26
# %bb.25:                               # %b5585
                                        #   in Loop: Header=BB41_24 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB41_27
	.p2align	4, 0x90
.LBB41_26:                              # %b5587
                                        #   in Loop: Header=BB41_24 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB41_27:                              # %b5578
                                        #   in Loop: Header=BB41_24 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB41_7
# %bb.28:                               # %b5580
                                        #   in Loop: Header=BB41_24 Depth=1
	incl	%edi
	jmp	.LBB41_24
.LBB41_7:                               # %b1902
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB41_8
# %bb.22:                               # %b5577
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB41_8:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end41:
	.size	func_b5656, .Lfunc_end41-func_b5656
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5618
	.type	func_b5618,@function
func_b5618:                             # @func_b5618
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
	jmp	.LBB42_1
	.p2align	4, 0x90
.LBB42_11:                              # %b5627
                                        #   in Loop: Header=BB42_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB42_12:                              # %b5618
                                        #   in Loop: Header=BB42_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB42_1:                               # %b5618
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB42_2
# %bb.10:                               # %b5620
                                        #   in Loop: Header=BB42_1 Depth=1
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB42_11
# %bb.9:                                # %b5625
                                        #   in Loop: Header=BB42_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB42_12
.LBB42_2:                               # %b5617
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB42_3
# %bb.6:                                # %b6196
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB42_7:                               # %b5613
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB42_3
# %bb.8:                                # %b5611
                                        #   in Loop: Header=BB42_7 Depth=1
	incl	%edi
	jmp	.LBB42_7
.LBB42_3:                               # %b5606
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB42_4
# %bb.14:                               # %b5608
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB42_15:                              # %b5582
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB42_17
# %bb.16:                               # %b5585
                                        #   in Loop: Header=BB42_15 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB42_18
	.p2align	4, 0x90
.LBB42_17:                              # %b5587
                                        #   in Loop: Header=BB42_15 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB42_18:                              # %b5578
                                        #   in Loop: Header=BB42_15 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB42_4
# %bb.19:                               # %b5580
                                        #   in Loop: Header=BB42_15 Depth=1
	incl	%edi
	jmp	.LBB42_15
.LBB42_4:                               # %b1902
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB42_5
# %bb.13:                               # %b5577
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB42_5:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end42:
	.size	func_b5618, .Lfunc_end42-func_b5618
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5578
	.type	func_b5578,@function
func_b5578:                             # @func_b5578
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
	jmp	.LBB43_1
	.p2align	4, 0x90
.LBB43_7:                               # %b5587
                                        #   in Loop: Header=BB43_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB43_8:                               # %b5578
                                        #   in Loop: Header=BB43_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB43_1:                               # %b5578
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB43_2
# %bb.6:                                # %b5580
                                        #   in Loop: Header=BB43_1 Depth=1
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB43_7
# %bb.5:                                # %b5585
                                        #   in Loop: Header=BB43_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB43_8
.LBB43_2:                               # %b1902
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB43_4
# %bb.3:                                # %b5577
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB43_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end43:
	.size	func_b5578, .Lfunc_end43-func_b5578
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5423
	.type	func_b5423,@function
func_b5423:                             # @func_b5423
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
	movl	24(%esp), %esi
	movl	20(%esp), %edi
	movl	16(%esp), %ebx
	.p2align	4, 0x90
.LBB44_1:                               # %b5423
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB44_3
# %bb.2:                                # %b6206
                                        #   in Loop: Header=BB44_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB44_4
	.p2align	4, 0x90
.LBB44_3:                               # %b6207
                                        #   in Loop: Header=BB44_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB44_4:                               # %b5414
                                        #   in Loop: Header=BB44_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB44_5
# %bb.9:                                # %b5416
                                        #   in Loop: Header=BB44_1 Depth=1
	incl	%edi
	jmp	.LBB44_1
.LBB44_5:                               # %b2347
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str54, %eax
	testl	%eax, %eax
	je	.LBB44_6
# %bb.8:                                # %b5408
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str54+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5374
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB44_7
.LBB44_6:                               # %b2351
	movl	%esi, users+52
.LBB44_7:                               # %b2351
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end44:
	.size	func_b5423, .Lfunc_end44-func_b5423
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5374
	.type	func_b5374,@function
func_b5374:                             # @func_b5374
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
	movl	24(%esp), %esi
	movl	20(%esp), %edi
	movl	16(%esp), %ebx
	.p2align	4, 0x90
.LBB45_1:                               # %b5374
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB45_3
# %bb.2:                                # %b5377
                                        #   in Loop: Header=BB45_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB45_4
	.p2align	4, 0x90
.LBB45_3:                               # %b5379
                                        #   in Loop: Header=BB45_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB45_4:                               # %b5370
                                        #   in Loop: Header=BB45_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB45_5
# %bb.6:                                # %b5372
                                        #   in Loop: Header=BB45_1 Depth=1
	incl	%edi
	jmp	.LBB45_1
.LBB45_5:                               # %b2351
	movl	%esi, users+52
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end45:
	.size	func_b5374, .Lfunc_end45-func_b5374
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5405
	.type	func_b5405,@function
func_b5405:                             # @func_b5405
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
	movl	24(%esp), %esi
	movl	20(%esp), %edi
	movl	16(%esp), %ebx
	.p2align	4, 0x90
.LBB46_1:                               # %b5405
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB46_3
# %bb.2:                                # %b6208
                                        #   in Loop: Header=BB46_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB46_4
	.p2align	4, 0x90
.LBB46_3:                               # %b6209
                                        #   in Loop: Header=BB46_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB46_4:                               # %b5396
                                        #   in Loop: Header=BB46_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB46_5
# %bb.9:                                # %b5398
                                        #   in Loop: Header=BB46_1 Depth=1
	incl	%edi
	jmp	.LBB46_1
.LBB46_5:                               # %b2358
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str54, %eax
	testl	%eax, %eax
	je	.LBB46_6
# %bb.8:                                # %b5395
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str54+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5384
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB46_7
.LBB46_6:                               # %b2362
	movl	%esi, users+124
.LBB46_7:                               # %b2362
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end46:
	.size	func_b5405, .Lfunc_end46-func_b5405
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5384
	.type	func_b5384,@function
func_b5384:                             # @func_b5384
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
	movl	24(%esp), %esi
	movl	20(%esp), %edi
	movl	16(%esp), %ebx
	.p2align	4, 0x90
.LBB47_1:                               # %b5384
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB47_3
# %bb.2:                                # %b5387
                                        #   in Loop: Header=BB47_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB47_4
	.p2align	4, 0x90
.LBB47_3:                               # %b5389
                                        #   in Loop: Header=BB47_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB47_4:                               # %b5380
                                        #   in Loop: Header=BB47_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB47_5
# %bb.6:                                # %b5382
                                        #   in Loop: Header=BB47_1 Depth=1
	incl	%edi
	jmp	.LBB47_1
.LBB47_5:                               # %b2362
	movl	%esi, users+124
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end47:
	.size	func_b5384, .Lfunc_end47-func_b5384
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5311
	.type	func_b5311,@function
func_b5311:                             # @func_b5311
	.cfi_startproc
# %bb.0:                                # %b5311
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
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB48_1
# %bb.7:                                # %b5313
	movl	$str14+1, %esi
	.p2align	4, 0x90
.LBB48_8:                               # %b5310
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB48_1
# %bb.9:                                # %b5308
                                        #   in Loop: Header=BB48_8 Depth=1
	incl	%esi
	jmp	.LBB48_8
.LBB48_1:                               # %b5303
	movl	32(%esp), %esi
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB48_2
# %bb.10:                               # %b5305
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB48_11:                              # %b5297
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB48_16
# %bb.12:                               # %b5300
                                        #   in Loop: Header=BB48_11 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB48_17
	.p2align	4, 0x90
.LBB48_16:                              # %b5302
                                        #   in Loop: Header=BB48_11 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB48_17:                              # %b5293
                                        #   in Loop: Header=BB48_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB48_2
# %bb.18:                               # %b5295
                                        #   in Loop: Header=BB48_11 Depth=1
	incl	%edi
	jmp	.LBB48_11
.LBB48_2:                               # %b2916
	movl	$-858993459, %ecx               # imm = 0xCCCCCCCD
	movl	%esi, %eax
	mull	%ecx
	shrl	$2, %edx
	andl	$-2, %edx
	leal	(%edx,%edx,4), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6669
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str3, %ebx
	testl	%ebx, %ebx
	je	.LBB48_3
# %bb.13:                               # %b5292
	movl	$str3+1, %edi
	.p2align	4, 0x90
.LBB48_14:                              # %b5284
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB48_23
# %bb.15:                               # %b5287
                                        #   in Loop: Header=BB48_14 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB48_24
	.p2align	4, 0x90
.LBB48_23:                              # %b5289
                                        #   in Loop: Header=BB48_14 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB48_24:                              # %b5280
                                        #   in Loop: Header=BB48_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB48_3
# %bb.25:                               # %b5282
                                        #   in Loop: Header=BB48_14 Depth=1
	incl	%edi
	jmp	.LBB48_14
.LBB48_3:                               # %b5271
	movl	36(%esp), %edi
	movzbl	str8, %ebp
	testl	%ebp, %ebp
	je	.LBB48_4
# %bb.20:                               # %b5273
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str8+1, %ebx
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB48_21
# %bb.19:                               # %b5277
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB48_22
.LBB48_4:                               # %b3639
	.cfi_def_cfa_offset 32
	movl	(%edi), %ebx
	movl	%ebx, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %ebp
	testl	%ebp, %ebp
	je	.LBB48_5
# %bb.27:                               # %b5245
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str9+1, %ebx
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB48_28
# %bb.26:                               # %b5249
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB48_29
.LBB48_21:                              # %b5279
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB48_22:                              # %b5279
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5255
	jmp	.LBB48_30
.LBB48_5:                               # %b3640
	.cfi_def_cfa_offset 32
	movl	4(%edi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB48_31
# %bb.6:                                # %b5221
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	jmp	.LBB48_30
.LBB48_28:                              # %b5251
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB48_29:                              # %b5251
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5227
.LBB48_30:                              # %b5251
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB48_31:                              # %b5251
	movzbl	str4, %edi
	testl	%edi, %edi
	je	.LBB48_38
# %bb.32:                               # %b5267
	movl	$str4+1, %ebx
	.p2align	4, 0x90
.LBB48_33:                              # %b5207
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB48_35
# %bb.34:                               # %b5210
                                        #   in Loop: Header=BB48_33 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB48_36
	.p2align	4, 0x90
.LBB48_35:                              # %b5212
                                        #   in Loop: Header=BB48_33 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB48_36:                              # %b5203
                                        #   in Loop: Header=BB48_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB48_38
# %bb.37:                               # %b5205
                                        #   in Loop: Header=BB48_33 Depth=1
	incl	%ebx
	jmp	.LBB48_33
.LBB48_38:                              # %b1886
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
.Lfunc_end48:
	.size	func_b5311, .Lfunc_end48-func_b5311
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5323
	.type	func_b5323,@function
func_b5323:                             # @func_b5323
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
.LBB49_1:                               # %b5323
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB49_3
# %bb.2:                                # %b6190
                                        #   in Loop: Header=BB49_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB49_4
	.p2align	4, 0x90
.LBB49_3:                               # %b6191
                                        #   in Loop: Header=BB49_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB49_4:                               # %b5314
                                        #   in Loop: Header=BB49_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB49_5
# %bb.6:                                # %b5316
                                        #   in Loop: Header=BB49_1 Depth=1
	incl	%ebx
	jmp	.LBB49_1
.LBB49_5:                               # %c687
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b5311
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
.Lfunc_end49:
	.size	func_b5323, .Lfunc_end49-func_b5323
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6669
	.type	func_b6669,@function
func_b6669:                             # @func_b6669
	.cfi_startproc
# %bb.0:                                # %b6669
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
	movl	36(%esp), %ecx
	addl	32(%esp), %ecx
	cmpl	40(%esp), %ecx
	ja	.LBB50_2
# %bb.1:                                # %b6671
	movl	44(%esp), %eax
	movl	$-858993459, %ebp               # imm = 0xCCCCCCCD
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	je	.LBB50_2
	.p2align	4, 0x90
.LBB50_5:                               # %b3339
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebx
	movl	%esi, %eax
	mull	%ebp
	shrl	$2, %edx
	andl	$-2, %edx
	leal	(%edx,%edx,4), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%ebx)
	leal	1(%ebx), %ecx
	cmpl	$32, %ecx
	jae	.LBB50_7
# %bb.6:                                # %b6663
                                        #   in Loop: Header=BB50_5 Depth=1
	movl	%esi, %eax
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	jne	.LBB50_5
.LBB50_7:                               # %b3129
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6379
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB50_8:                               # %b3126
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%ebx), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%ebx
	jns	.LBB50_8
# %bb.9:                                # %b303
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	jmp	.LBB50_10
.LBB50_2:                               # %b6386
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB50_4
# %bb.3:                                # %b6388
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6379
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB50_4:                               # %b3390
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
.LBB50_10:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end50:
	.size	func_b6669, .Lfunc_end50-func_b6669
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5255
	.type	func_b5255,@function
func_b5255:                             # @func_b5255
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
	jmp	.LBB51_1
	.p2align	4, 0x90
.LBB51_7:                               # %b5264
                                        #   in Loop: Header=BB51_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB51_8:                               # %b5255
                                        #   in Loop: Header=BB51_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB51_1:                               # %b5255
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB51_2
# %bb.6:                                # %b5257
                                        #   in Loop: Header=BB51_1 Depth=1
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB51_7
# %bb.5:                                # %b5262
                                        #   in Loop: Header=BB51_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB51_8
.LBB51_2:                               # %b1896
	.cfi_def_cfa_offset 16
	movl	(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %ebx
	testl	%ebx, %ebx
	je	.LBB51_3
# %bb.10:                               # %b5254
	movl	$str9+1, %edi
	.p2align	4, 0x90
.LBB51_11:                              # %b5231
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB51_13
# %bb.12:                               # %b5234
                                        #   in Loop: Header=BB51_11 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB51_14
	.p2align	4, 0x90
.LBB51_13:                              # %b5236
                                        #   in Loop: Header=BB51_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB51_14:                              # %b5227
                                        #   in Loop: Header=BB51_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB51_3
# %bb.15:                               # %b5229
                                        #   in Loop: Header=BB51_11 Depth=1
	incl	%edi
	jmp	.LBB51_11
.LBB51_3:                               # %b1894
	movl	4(%esi), %esi
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB51_4
# %bb.9:                                # %b5226
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB51_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end51:
	.size	func_b5255, .Lfunc_end51-func_b5255
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5227
	.type	func_b5227,@function
func_b5227:                             # @func_b5227
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
	jmp	.LBB52_1
	.p2align	4, 0x90
.LBB52_7:                               # %b5236
                                        #   in Loop: Header=BB52_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB52_8:                               # %b5227
                                        #   in Loop: Header=BB52_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB52_1:                               # %b5227
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB52_2
# %bb.6:                                # %b5229
                                        #   in Loop: Header=BB52_1 Depth=1
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB52_7
# %bb.5:                                # %b5234
                                        #   in Loop: Header=BB52_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB52_8
.LBB52_2:                               # %b1894
	.cfi_def_cfa_offset 16
	movl	4(%esi), %esi
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6395
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB52_4
# %bb.3:                                # %b5226
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5034
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB52_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end52:
	.size	func_b5227, .Lfunc_end52-func_b5227
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5173
	.type	func_b5173,@function
func_b5173:                             # @func_b5173
	.cfi_startproc
# %bb.0:                                # %b5173
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
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB53_1
# %bb.5:                                # %b5175
	movl	$str12+1, %esi
	.p2align	4, 0x90
.LBB53_6:                               # %b5172
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1959
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB53_1
# %bb.7:                                # %b5170
                                        #   in Loop: Header=BB53_6 Depth=1
	incl	%esi
	jmp	.LBB53_6
.LBB53_1:                               # %b5165
	movl	32(%esp), %esi
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB53_2
# %bb.8:                                # %b5167
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB53_9:                               # %b5159
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB53_14
# %bb.10:                               # %b5162
                                        #   in Loop: Header=BB53_9 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB53_15
	.p2align	4, 0x90
.LBB53_14:                              # %b5164
                                        #   in Loop: Header=BB53_9 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB53_15:                              # %b5155
                                        #   in Loop: Header=BB53_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB53_2
# %bb.16:                               # %b5157
                                        #   in Loop: Header=BB53_9 Depth=1
	incl	%edi
	jmp	.LBB53_9
.LBB53_2:                               # %b2852
	movl	36(%esp), %edi
	movl	$-858993459, %ecx               # imm = 0xCCCCCCCD
	movl	%esi, %eax
	mull	%ecx
	shrl	$2, %edx
	andl	$-2, %edx
	leal	(%edx,%edx,4), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b1608
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$31
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6669
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str3, %ebp
	testl	%ebp, %ebp
	je	.LBB53_3
# %bb.11:                               # %b5154
	movl	$str3+1, %ebx
	.p2align	4, 0x90
.LBB53_12:                              # %b5146
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB53_20
# %bb.13:                               # %b5149
                                        #   in Loop: Header=BB53_12 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB53_21
	.p2align	4, 0x90
.LBB53_20:                              # %b5151
                                        #   in Loop: Header=BB53_12 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB53_21:                              # %b5142
                                        #   in Loop: Header=BB53_12 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB53_3
# %bb.22:                               # %b5144
                                        #   in Loop: Header=BB53_12 Depth=1
	incl	%ebx
	jmp	.LBB53_12
.LBB53_3:                               # %b2853
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5136
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str4, %ebx
	testl	%ebx, %ebx
	je	.LBB53_4
# %bb.17:                               # %b5141
	movl	$str4+1, %edi
	.p2align	4, 0x90
.LBB53_18:                              # %b5130
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB53_23
# %bb.19:                               # %b5133
                                        #   in Loop: Header=BB53_18 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB53_24
	.p2align	4, 0x90
.LBB53_23:                              # %b5135
                                        #   in Loop: Header=BB53_18 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB53_24:                              # %b5126
                                        #   in Loop: Header=BB53_18 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB53_4
# %bb.25:                               # %b5128
                                        #   in Loop: Header=BB53_18 Depth=1
	incl	%edi
	jmp	.LBB53_18
.LBB53_4:                               # %b1886
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
.Lfunc_end53:
	.size	func_b5173, .Lfunc_end53-func_b5173
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5185
	.type	func_b5185,@function
func_b5185:                             # @func_b5185
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
.LBB54_1:                               # %b5185
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
	calll	func_b1572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB54_3
# %bb.2:                                # %b6184
                                        #   in Loop: Header=BB54_1 Depth=1
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
	calll	func_b1572
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB54_4
	.p2align	4, 0x90
.LBB54_3:                               # %b6185
                                        #   in Loop: Header=BB54_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB54_4:                               # %b5176
                                        #   in Loop: Header=BB54_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1950
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB54_5
# %bb.6:                                # %b5178
                                        #   in Loop: Header=BB54_1 Depth=1
	incl	%ebx
	jmp	.LBB54_1
.LBB54_5:                               # %c611
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b5173
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
.Lfunc_end54:
	.size	func_b5185, .Lfunc_end54-func_b5185
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4335
	.type	func_b4335,@function
func_b4335:                             # @func_b4335
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
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	68(%esp), %eax
	movl	40(%esp), %ecx
	movl	36(%esp), %edx
	movl	32(%esp), %esi
	movl	28(%esp), %edi
	movl	24(%esp), %ebx
	movl	20(%esp), %ebp
	movl	%ebp, (%eax,%ebx)
	movl	%edi, (%eax,%esi)
	movl	%edx, (%eax,%ecx)
	movl	48(%esp), %ecx
	movl	44(%esp), %edx
	movl	%edx, (%eax,%ecx)
	movl	56(%esp), %ecx
	movl	52(%esp), %edx
	movl	%edx, (%eax,%ecx)
	movl	64(%esp), %ecx
	movl	60(%esp), %edx
	movl	%edx, (%eax,%ecx)
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end55:
	.size	func_b4335, .Lfunc_end55-func_b4335
	.cfi_endproc
                                        # -- End function
	.type	raw.1,@object                   # @raw.1
	.local	raw.1
	.comm	raw.1,144,4
	.type	raw.0,@object                   # @raw.0
	.local	raw.0
	.comm	raw.0,1,1
	.type	raw.2,@object                   # @raw.2
	.local	raw.2
	.comm	raw.2,7,8
	.type	raw.3,@object                   # @raw.3
	.local	raw.3
	.comm	raw.3,1,1
	.type	raw.4,@object                   # @raw.4
	.local	raw.4
	.comm	raw.4,1,1
	.type	ball,@object                    # @ball
	.local	ball
	.comm	ball,4,4
	.type	raw.8,@object                   # @raw.8
	.local	raw.8
	.comm	raw.8,4,1
	.type	raw.9,@object                   # @raw.9
	.local	raw.9
	.comm	raw.9,1,1
	.type	raw.11,@object                  # @raw.11
	.local	raw.11
	.comm	raw.11,1,1
	.type	raw.10,@object                  # @raw.10
	.local	raw.10
	.comm	raw.10,1,1
	.type	.Lstr.7,@object                 # @str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.7:
	.asciz	"nothing\n"
	.size	.Lstr.7, 9

	.type	raw.13,@object                  # @raw.13
	.local	raw.13
	.comm	raw.13,1,1
	.type	raw.12,@object                  # @raw.12
	.local	raw.12
	.comm	raw.12,1,1
	.type	raw.6,@object                   # @raw.6
	.local	raw.6
	.comm	raw.6,480,4
	.type	raw.5,@object                   # @raw.5
	.local	raw.5
	.comm	raw.5,4,4
	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"\n"
	.size	.Lstr.17, 2

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	", frame=0x"
	.size	.Lstr.16, 11

	.type	raw.15,@object                  # @raw.15
	.local	raw.15
	.comm	raw.15,32,1
	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"Exception 0x"
	.size	.Lstr.14, 13

	.type	.Lstr.47,@object                # @str.47
.Lstr.47:
	.asciz	"\n"
	.size	.Lstr.47, 2

	.type	.Lstr.46,@object                # @str.46
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.46:
	.asciz	"user code is at 0x"
	.size	.Lstr.46, 19

	.type	.Lstr.45,@object                # @str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.45:
	.asciz	"\n"
	.size	.Lstr.45, 2

	.type	.Lstr.38,@object                # @str.38
.Lstr.38:
	.asciz	"]\n"
	.size	.Lstr.38, 3

	.type	.Lstr.44,@object                # @str.44
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.44:
	.asciz	"Found header for second user program:\n"
	.size	.Lstr.44, 39

	.type	.Lstr.48,@object                # @str.48
	.p2align	4
.Lstr.48:
	.asciz	"Did not find second user program\n"
	.size	.Lstr.48, 34

	.type	.Lstr.37,@object                # @str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.37:
	.asciz	" ["
	.size	.Lstr.37, 3

	.type	.Lstr.43,@object                # @str.43
.Lstr.43:
	.asciz	"\n"
	.size	.Lstr.43, 2

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"], entry 0x"
	.size	.Lstr.26, 12

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"-0x"
	.size	.Lstr.25, 4

	.type	.Lstr.24,@object                # @str.24
.Lstr.24:
	.asciz	"[0x"
	.size	.Lstr.24, 4

	.type	.Lstr.39,@object                # @str.39
.Lstr.39:
	.asciz	"imgline"
	.size	.Lstr.39, 8

	.type	.Lstr.36,@object                # @str.36
.Lstr.36:
	.asciz	": "
	.size	.Lstr.36, 3

	.type	.Lstr.42,@object                # @str.42
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.42:
	.asciz	"Found header for first user program:\n"
	.size	.Lstr.42, 38

	.type	.Lstr.35,@object                # @str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.35:
	.asciz	"cmdline"
	.size	.Lstr.35, 8

	.type	.Lstr.41,@object                # @str.41
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.41:
	.asciz	"\nHalting kernel, returning to mimgload\n"
	.size	.Lstr.41, 40

	.type	.Lstr.34,@object                # @str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.34:
	.asciz	" "
	.size	.Lstr.34, 2

	.type	.Lstr.40,@object                # @str.40
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.40:
	.asciz	"Did not find first user program\n"
	.size	.Lstr.40, 33

	.type	.Lstr.33,@object                # @str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.33:
	.asciz	"Strings:\n"
	.size	.Lstr.33, 10

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"\n"
	.size	.Lstr.27, 2

	.type	.Lstr.32,@object                # @str.32
.Lstr.32:
	.asciz	"]"
	.size	.Lstr.32, 2

	.type	.Lstr.31,@object                # @str.31
.Lstr.31:
	.asciz	"-0x"
	.size	.Lstr.31, 4

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"[0x"
	.size	.Lstr.30, 4

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"]: "
	.size	.Lstr.23, 4

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"["
	.size	.Lstr.22, 2

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"mmap"
	.size	.Lstr.29, 5

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	" "
	.size	.Lstr.20, 2

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"Memory map:\n"
	.size	.Lstr.28, 13

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	"header"
	.size	.Lstr.21, 7

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"Headers:\n"
	.size	.Lstr.19, 10

	.type	.Lstr.18,@object                # @str.18
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.18:
	.asciz	" Last key pressed:"
	.size	.Lstr.18, 19

.set current, raw.0
.set users, raw.1
.set console, raw.2
.set keyDown, raw.4
.set keyUp, raw.3
.set ticks, raw.5
.set objects, raw.6
.set headingLeft, raw.12
.set headingTop, raw.13
.set pos, raw.10
.set dir, raw.11
.set spinpos, raw.9
.set spinner, raw.8
.set str0, .Lstr.7
	.size	str0, 1
.set str55, .Lstr.14
	.size	str55, 1
.set itoaBuf, raw.15
.set str56, .Lstr.16
	.size	str56, 1
.set str57, .Lstr.17
	.size	str57, 1
.set str45, .Lstr.18
	.size	str45, 1
.set str11, .Lstr.19
	.size	str11, 1
.set str13, .Lstr.28
	.size	str13, 1
.set str15, .Lstr.33
	.size	str15, 1
.set str52, .Lstr.40
	.size	str52, 1
.set str18, .Lstr.34
	.size	str18, 1
.set str46, .Lstr.41
	.size	str46, 1
.set str16, .Lstr.35
	.size	str16, 1
.set str47, .Lstr.42
	.size	str47, 1
.set str19, .Lstr.36
	.size	str19, 1
.set str17, .Lstr.39
	.size	str17, 1
.set str48, .Lstr.43
	.size	str48, 1
.set str20, .Lstr.37
	.size	str20, 1
.set str51, .Lstr.48
	.size	str51, 1
.set str49, .Lstr.44
	.size	str49, 1
.set str21, .Lstr.38
	.size	str21, 1
.set str50, .Lstr.45
	.size	str50, 1
.set str53, .Lstr.46
	.size	str53, 1
.set str54, .Lstr.47
	.size	str54, 1
.set str5, .Lstr.24
	.size	str5, 1
.set str6, .Lstr.25
	.size	str6, 1
.set str7, .Lstr.26
	.size	str7, 1
.set str1, .Lstr.20
	.size	str1, 1
.set str14, .Lstr.29
	.size	str14, 1
.set str2, .Lstr.22
	.size	str2, 1
.set str3, .Lstr.23
	.size	str3, 1
.set str8, .Lstr.30
	.size	str8, 1
.set str9, .Lstr.31
	.size	str9, 1
.set str10, .Lstr.32
	.size	str10, 1
.set str4, .Lstr.27
	.size	str4, 1
.set str12, .Lstr.21
	.size	str12, 1
	.section	".note.GNU-stack","",@progbits
