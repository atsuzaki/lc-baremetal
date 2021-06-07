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
	calll	func_b1602
	cmpl	$10, %edi
	jne	.LBB1_2
# %bb.1:                                # %b2827
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b1602
.LBB1_2:                                # %b2828
	movl	%edi, (%esp)
	calll	func_b1988
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
	.p2align	4, 0x90                         # -- Begin function func_b1602
	.type	func_b1602,@function
func_b1602:                             # @func_b1602
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
.LBB2_3:                                # %b4656
	movw	$1016, %dx                      # imm = 0x3F8
	movl	%ecx, %eax
	#APP
	outb	%al, %dx
	#NO_APP
	retl
.Lfunc_end2:
	.size	func_b1602, .Lfunc_end2-func_b1602
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1988
	.type	func_b1988,@function
func_b1988:                             # @func_b1988
	.cfi_startproc
# %bb.0:                                # %b1988
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
# %bb.7:                                # %b1993
	cmpl	$10, %edx
	je	.LBB3_1
# %bb.8:                                # %b1995
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
# %bb.9:                                # %b6622
	movb	%cl, console+5
	jmp	.LBB3_10
.LBB3_1:                                # %b1990
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB3_3
# %bb.2:                                # %b6618
	movb	%al, console+4
	jmp	.LBB3_10
.LBB3_3:                                # %b1992
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
.LBB3_4:                                # %b6609
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
	calll	func_b1610
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB3_4
.LBB3_5:                                # %b1608.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB3_6:                                # %b1608
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
	.size	func_b1988, .Lfunc_end3-func_b1988
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1610
	.type	func_b1610,@function
func_b1610:                             # @func_b1610
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
.LBB4_1:                                # %b1610
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
	.size	func_b1610, .Lfunc_end4-func_b1610
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
# %bb.1:                                # %b1137
	movl	%eax, %edx
	andl	$127, %edx
	movzbl	(%ecx,%edx), %edx
	movzbl	753703, %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, 753702
	movb	%dl, keyDown
.LBB5_2:                                # %b1136
	movl	%eax, %edx
	shrl	$7, %edx
	cmpl	$1, %edx
	jne	.LBB5_4
# %bb.3:                                # %b1134
	andl	$127, %eax
	movb	(%ecx,%eax), %al
	movb	%al, keyUp
.LBB5_4:                                # %b1384
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
	movl	ball, %ebx
	movl	gameoverZone, %ebp
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
	movl	ticks, %eax
	movl	%eax, 20(%esp)                  # 4-byte Spill
	incl	%eax
	movl	%eax, ticks
	cmpb	$1, isPlaying
	jne	.LBB6_137
# %bb.1:                                # %b3380
	calll	func_b1244
	cmpb	$54, keyDown
	jne	.LBB6_4
# %bb.2:                                # %b3597
	movzbl	keyUp, %eax
	cmpl	$54, %eax
	je	.LBB6_4
# %bb.3:                                # %b3681
	incl	objects+8
.LBB6_4:                                # %b3681
	cmpb	$52, keyDown
	jne	.LBB6_7
# %bb.5:
	movzbl	keyUp, %eax
	cmpl	$52, %eax
	je	.LBB6_7
# %bb.6:                                # %b4070
	decl	objects+8
.LBB6_7:                                # %b4070
	testb	$15, 20(%esp)                   # 1-byte Folded Reload
	je	.LBB6_16
.LBB6_8:                                # %b3339
	movl	objects+20, %ecx
	xorl	%eax, %eax
	testb	$16, %cl
	je	.LBB6_91
# %bb.9:                                # %b4696
	testb	$1, %cl
	je	.LBB6_91
# %bb.10:                               # %b4697
	movl	$objects, %ecx
	cmpl	%ebx, %ecx
	je	.LBB6_91
# %bb.11:                               # %b4698
	movl	objects+8, %ecx
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_91
# %bb.12:                               # %b4699
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_91
# %bb.13:                               # %b4700
	movl	objects+12, %ecx
	movl	12(%ebx), %edx
	movl	4(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_91
# %bb.14:                               # %b4701
	addl	objects+4, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_91
# %bb.15:                               # %b4702
	andb	$-17, objects+20
	decl	bricksLeft
	movl	$1, %eax
	jmp	.LBB6_92
.LBB6_16:                               # %b3335
	movb	headingTop, %dl
	movl	8(%ebx), %ecx
	movl	12(%ebx), %eax
	cmpb	$0, headingLeft
	je	.LBB6_28
# %bb.17:                               # %b3336
	decl	%ecx
	testb	$1, %dl
	je	.LBB6_39
# %bb.18:                               # %b3337
	leal	-1(%eax), %edx
	movl	%ecx, 8(%ebx)
	movl	%edx, 12(%ebx)
	movl	$objects, %ecx
	cmpl	%ebx, %ecx
	je	.LBB6_59
# %bb.19:                               # %b4746
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_59
# %bb.20:                               # %b4747
	testb	$2, %cl
	je	.LBB6_59
# %bb.21:                               # %b4748
	movl	objects+8, %ecx
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_59
# %bb.22:                               # %b4749
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_59
# %bb.23:                               # %b4750
	movl	objects+12, %ecx
	movl	12(%ebx), %edx
	movl	4(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_59
# %bb.24:                               # %b4751
	addl	objects+4, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_71
# %bb.25:                               # %b4752
	movl	objects+12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB6_27
# %bb.26:                               # %b3935
	movl	4(%ebx), %edx
	addl	%eax, %edx
	addl	objects+4, %ecx
	cmpl	%ecx, %edx
	jb	.LBB6_83
.LBB6_27:                               # %b3932
	movb	$0, headingTop
	jmp	.LBB6_84
.LBB6_28:                               # %b3358
	incl	%ecx
	testb	$1, %dl
	je	.LBB6_49
# %bb.29:                               # %b3359
	leal	-1(%eax), %edx
	movl	%ecx, 8(%ebx)
	movl	%edx, 12(%ebx)
	movl	$objects, %ecx
	cmpl	%ebx, %ecx
	je	.LBB6_62
# %bb.30:                               # %b4732
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_62
# %bb.31:                               # %b4733
	testb	$2, %cl
	je	.LBB6_62
# %bb.32:                               # %b4734
	movl	objects+8, %ecx
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_62
# %bb.33:                               # %b4735
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_62
# %bb.34:                               # %b4736
	movl	objects+12, %ecx
	movl	12(%ebx), %edx
	movl	4(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_62
# %bb.35:                               # %b4737
	addl	objects+4, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_72
# %bb.36:                               # %b4738
	movl	objects+12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB6_38
# %bb.37:                               # %b3951
	movl	4(%ebx), %edx
	addl	%eax, %edx
	addl	objects+4, %ecx
	cmpl	%ecx, %edx
	jb	.LBB6_85
.LBB6_38:                               # %b3948
	movb	$0, headingTop
	jmp	.LBB6_86
.LBB6_39:                               # %b3348
	leal	1(%eax), %edx
	movl	%ecx, 8(%ebx)
	movl	%edx, 12(%ebx)
	movl	$objects, %ecx
	cmpl	%ebx, %ecx
	je	.LBB6_65
# %bb.40:                               # %b4739
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_65
# %bb.41:                               # %b4740
	testb	$2, %cl
	je	.LBB6_65
# %bb.42:                               # %b4741
	movl	objects+8, %ecx
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_65
# %bb.43:                               # %b4742
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_65
# %bb.44:                               # %b4743
	movl	objects+12, %ecx
	movl	12(%ebx), %edx
	movl	4(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_65
# %bb.45:                               # %b4744
	addl	objects+4, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_73
# %bb.46:                               # %b4745
	movl	objects+12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB6_48
# %bb.47:                               # %b3943
	movl	4(%ebx), %edx
	addl	%eax, %edx
	addl	objects+4, %ecx
	cmpl	%ecx, %edx
	jb	.LBB6_87
.LBB6_48:                               # %b3940
	movb	$1, headingTop
	jmp	.LBB6_88
.LBB6_49:                               # %b3369
	leal	1(%eax), %edx
	movl	%ecx, 8(%ebx)
	movl	%edx, 12(%ebx)
	movl	$objects, %ecx
	cmpl	%ebx, %ecx
	je	.LBB6_68
# %bb.50:                               # %b4725
	movl	objects+20, %ecx
	testb	$16, %cl
	je	.LBB6_68
# %bb.51:                               # %b4726
	testb	$2, %cl
	je	.LBB6_68
# %bb.52:                               # %b4727
	movl	objects+8, %ecx
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_68
# %bb.53:                               # %b4728
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_68
# %bb.54:                               # %b4729
	movl	objects+12, %ecx
	movl	12(%ebx), %edx
	movl	4(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_68
# %bb.55:                               # %b4730
	addl	objects+4, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_74
# %bb.56:                               # %b4731
	movl	objects+12, %ecx
	cmpl	%ecx, %eax
	jbe	.LBB6_58
# %bb.57:                               # %b3959
	movl	4(%ebx), %edx
	addl	%eax, %edx
	addl	objects+4, %ecx
	cmpl	%ecx, %edx
	jb	.LBB6_89
.LBB6_58:                               # %b3956
	movb	$1, headingTop
	jmp	.LBB6_90
.LBB6_59:                               # %b6904
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_8
.LBB6_60:                               # %b6906
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
.LBB6_61:                               # %b3124
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3254
	jmp	.LBB6_136
.LBB6_62:                               # %b6870
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_8
.LBB6_63:                               # %b6872
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
.LBB6_64:                               # %b3124
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3292
	jmp	.LBB6_136
.LBB6_65:                               # %b6887
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_8
.LBB6_66:                               # %b6889
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
.LBB6_67:                               # %b3124
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3273
	jmp	.LBB6_136
.LBB6_68:                               # %b6808
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	je	.LBB6_8
.LBB6_69:                               # %b6810
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
.LBB6_70:                               # %b3124
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3311
	jmp	.LBB6_136
.LBB6_71:                               # %b6908
	.cfi_def_cfa_offset 48
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_60
	jmp	.LBB6_75
.LBB6_72:                               # %b6874
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_63
	jmp	.LBB6_75
.LBB6_73:                               # %b6891
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_66
	jmp	.LBB6_75
.LBB6_74:                               # %b6857
	movl	$1, %ecx
	movb	$1, %dl
	testb	%dl, %dl
	jne	.LBB6_69
.LBB6_75:                               # %b3933
	movl	objects+20, %ecx
	xorl	%eax, %eax
	testb	$16, %cl
	je	.LBB6_185
# %bb.76:                               # %b4718
	testb	$1, %cl
	je	.LBB6_185
# %bb.77:                               # %b4719
	movl	$objects, %ecx
	cmpl	%ebx, %ecx
	je	.LBB6_185
# %bb.78:                               # %b4720
	movl	objects+8, %ecx
	movl	8(%ebx), %edx
	movl	(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_185
# %bb.79:                               # %b4721
	addl	objects, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_185
# %bb.80:                               # %b4722
	movl	objects+12, %ecx
	movl	%ebx, %esi
	movl	12(%ebx), %edx
	movl	4(%ebx), %esi
	addl	%edx, %esi
	cmpl	%esi, %ecx
	jae	.LBB6_185
# %bb.81:                               # %b4723
	addl	objects+4, %ecx
	cmpl	%edx, %ecx
	jbe	.LBB6_185
# %bb.82:                               # %b4724
	andb	$-17, objects+20
	decl	bricksLeft
	movl	$1, %eax
	jmp	.LBB6_186
.LBB6_83:                               # %b3936
	movb	$0, headingLeft
.LBB6_84:                               # %b3124
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_61
.LBB6_85:                               # %b3952
	.cfi_def_cfa_offset 48
	movb	$1, headingLeft
.LBB6_86:                               # %b3124
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_64
.LBB6_87:                               # %b3944
	.cfi_def_cfa_offset 48
	movb	$0, headingLeft
.LBB6_88:                               # %b3124
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_67
.LBB6_89:                               # %b3960
	.cfi_def_cfa_offset 48
	movb	$1, headingLeft
.LBB6_90:                               # %b3124
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_70
.LBB6_91:                               # %b6788
	.cfi_def_cfa_offset 48
	incl	%eax
	cmpl	$21, %eax
	jae	.LBB6_100
.LBB6_92:                               # %b6790
	leal	(,%eax,8), %ecx
	movl	objects+20(%ecx,%ecx,2), %edx
	testb	$16, %dl
	je	.LBB6_91
# %bb.93:                               # %b3917
	testb	$1, %dl
	je	.LBB6_91
# %bb.94:                               # %b3918
	leal	objects(%ecx,%ecx,2), %ecx
	cmpl	%ebx, %ecx
	je	.LBB6_91
# %bb.95:                               # %b3920
	movl	8(%ecx), %edx
	movl	8(%ebx), %esi
	movl	(%ebx), %edi
	addl	%esi, %edi
	cmpl	%edi, %edx
	jae	.LBB6_91
# %bb.96:                               # %b3921
	addl	(%ecx), %edx
	cmpl	%esi, %edx
	jbe	.LBB6_91
# %bb.97:                               # %b3922
	movl	12(%ecx), %edx
	movl	12(%ebx), %esi
	movl	4(%ebx), %edi
	addl	%esi, %edi
	cmpl	%edi, %edx
	jae	.LBB6_91
# %bb.98:                               # %b3923
	addl	4(%ecx), %edx
	cmpl	%esi, %edx
	jbe	.LBB6_91
.LBB6_99:                               # %b3924
	andb	$-17, 20(%ecx)
	decl	bricksLeft
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$20
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6784
	jmp	.LBB6_136
.LBB6_100:                              # %b3872
	.cfi_def_cfa_offset 48
	movl	%ebp, 16(%esp)                  # 4-byte Spill
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	xorl	%ebp, %ebp
	testb	$16, objects+20
	je	.LBB6_146
# %bb.101:                              # %b4679
	movl	objects+8, %ebx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB6_103
# %bb.102:                              # %b6311
	cmpl	%esi, %ebx
	jbe	.LBB6_104
	jmp	.LBB6_146
.LBB6_103:                              # %b4680
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebx
	ja	.LBB6_146
.LBB6_104:                              # %b6753
	movl	objects+12, %edx
	movzbl	console, %eax
	movzbl	console+2, %edi
	subl	%eax, %edi
	cmpl	$25, %edi
	jae	.LBB6_108
# %bb.105:                              # %b6951
	cmpl	%edi, %edx
	ja	.LBB6_146
# %bb.106:                              # %b6980
	movl	objects, %eax
	movl	objects+4, %ecx
	movl	objects+16, %ebp
	leal	-1(%ebx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB6_111
# %bb.107:                              # %b6949
	leal	-1(%edx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB6_117
.LBB6_108:                              # %b6952
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	jne	.LBB6_146
# %bb.109:                              # %b6979
	movl	objects, %eax
	movl	objects+4, %ebp
	movl	objects+16, %edi
	leal	-1(%ebx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB6_113
# %bb.110:                              # %b6947
	leal	-1(%edx,%ebp), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6180
	jmp	.LBB6_117
.LBB6_111:                              # %b6950
	.cfi_def_cfa_offset 48
	movl	%ebp, (%esp)                    # 4-byte Spill
	leal	-1(%edx,%ecx), %ebp
	cmpl	%edi, %ebp
	jbe	.LBB6_114
# %bb.112:                              # %b3913
	movzbl	console+1, %ebp
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_115
.LBB6_113:                              # %b6948
	.cfi_def_cfa_offset 48
	movl	%edi, (%esp)                    # 4-byte Spill
	addl	%edx, %ebp
	decl	%ebp
	jne	.LBB6_116
.LBB6_114:                              # %b6273
	movzbl	console+1, %eax
	movl	%eax, 24(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %edi                  # 4-byte Reload
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
.LBB6_115:                              # %b6722
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB6_117
.LBB6_116:                              # %b3907
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
.LBB6_117:                              # %b6722
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movl	$1, %ebp
	jmp	.LBB6_147
.LBB6_146:                              # %b6720
	incl	%ebp
	cmpl	$21, %ebp
	jae	.LBB6_126
.LBB6_147:                              # %b6722
	leal	(,%ebp,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB6_146
# %bb.148:                              # %b3887
	leal	objects(%eax,%eax,2), %edi
	movl	8(%edi), %ebx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB6_150
# %bb.149:                              # %b6269
	cmpl	%esi, %ebx
	ja	.LBB6_146
	jmp	.LBB6_151
.LBB6_150:                              # %b3888
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebx
	ja	.LBB6_146
.LBB6_151:                              # %b6719
	movl	%ebx, %edx
	movl	12(%edi), %ecx
	movzbl	console, %eax
	movzbl	console+2, %ebx
	subl	%eax, %ebx
	cmpl	$25, %ebx
	jae	.LBB6_155
# %bb.152:                              # %b6977
	cmpl	%ebx, %ecx
	ja	.LBB6_146
.LBB6_153:                              # %b6994
	movl	%ecx, 16(%esp)                  # 4-byte Spill
	movl	(%edi), %eax
	movl	4(%edi), %ecx
	movl	16(%edi), %edi
	movl	%edi, 8(%esp)                   # 4-byte Spill
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB6_158
# %bb.154:                              # %b6944
	movl	%edx, %edi
	movl	16(%esp), %edx                  # 4-byte Reload
	leal	-1(%edx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB6_166
.LBB6_155:                              # %b6978
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB6_146
.LBB6_156:                              # %b6993
	movl	(%edi), %eax
	movl	4(%edi), %ebx
	movl	16(%edi), %edi
	movl	%edi, 8(%esp)                   # 4-byte Spill
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB6_160
# %bb.157:                              # %b6942
	movl	%edx, %edi
	movl	%ecx, %edx
	leal	-1(%ecx,%ebx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6180
	jmp	.LBB6_166
.LBB6_158:                              # %b6945
	.cfi_def_cfa_offset 48
	movl	16(%esp), %eax                  # 4-byte Reload
	leal	-1(%eax,%ecx), %edi
	movl	%eax, %ecx
	movl	%edi, (%esp)                    # 4-byte Spill
	cmpl	%ebx, %edi
	ja	.LBB6_163
# %bb.159:
	movl	8(%esp), %eax                   # 4-byte Reload
	jmp	.LBB6_162
.LBB6_160:                              # %b6943
	movl	8(%esp), %eax                   # 4-byte Reload
	addl	%ecx, %ebx
	decl	%ebx
	jne	.LBB6_165
# %bb.161:
	movl	%ebx, (%esp)                    # 4-byte Spill
.LBB6_162:                              # %b6228
	movl	%eax, 8(%esp)                   # 4-byte Spill
	movl	%ecx, 16(%esp)                  # 4-byte Spill
	movzbl	console+1, %edi
	movzbl	console, %ebx
	movl	%ebx, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	movl	%edx, %ebx
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_164
.LBB6_163:                              # %b3900
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, (%esp)                    # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	movl	%edx, 28(%esp)                  # 4-byte Spill
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	4(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
.LBB6_164:                              # %b3124
	pushl	40(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB6_166
.LBB6_165:                              # %b3894
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %ebx
	movl	%ebx, (%esp)                    # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	movl	%edx, %ebx
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%ecx, 48(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	4(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	40(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
.LBB6_166:                              # %b3124
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	pushl	$20
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6713
.LBB6_136:                              # %b3124
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB6_137
.LBB6_118:                              # %b1128
	testb	$15, %al
	je	.LBB6_144
.LBB6_119:                              # %b1384
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
.LBB6_120:                              # %b1761
	.cfi_def_cfa_offset 48
	.cfi_adjust_cfa_offset 8
	pushl	$124
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b865
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$0, dir
	testb	$15, 20(%esp)                   # 1-byte Folded Reload
	jne	.LBB6_119
	jmp	.LBB6_144
.LBB6_121:                              # %b6657
	.cfi_adjust_cfa_offset 8
	pushl	$60
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_143
.LBB6_122:                              # %b6659
	.cfi_def_cfa_offset 48
	leal	-1(%esi), %ebx
	subl	$8, %esp
	cmpl	$45, %ebx
	jg	.LBB6_121
# %bb.123:                              # %b1764
	.cfi_adjust_cfa_offset 8
	pushl	$124
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b865
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$1, dir
	testb	$15, 20(%esp)                   # 1-byte Folded Reload
	jne	.LBB6_119
	jmp	.LBB6_144
.LBB6_124:                              # %b4232
	movb	$0, current
.LBB6_125:                              # %b2552
	movzbl	spinpos, %eax
	movzbl	spinner(%eax), %ecx
	incb	%al
	andb	$3, %al
	movb	%al, spinpos
	movzbl	753823, %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movw	%ax, 753822
	jmp	.LBB6_119
.LBB6_126:                              # %b3876
	movl	8(%esp), %esi                   # 4-byte Reload
	movl	8(%esi), %eax
	movl	16(%esp), %edi                  # 4-byte Reload
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB6_137
# %bb.127:                              # %b3877
	addl	(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB6_137
# %bb.128:                              # %b3878
	movl	12(%esi), %eax
	movl	12(%edi), %ecx
	movl	4(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB6_137
# %bb.129:                              # %b3879
	addl	4(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB6_137
# %bb.130:                              # %b3880
	calll	func_b1244
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB6_133
# %bb.131:                              # %b5195
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str45+1, %esi
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB6_134
# %bb.132:                              # %b5199
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB6_135
.LBB6_133:                              # %b3881
	.cfi_def_cfa_offset 48
	movb	$0, isPlaying
.LBB6_137:                              # %b3124
	movzbl	753819, %esi
	shll	$8, %esi
	movl	20(%esp), %edi                  # 4-byte Reload
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b1638
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	orl	%edi, %eax
	movw	%ax, 753816
	movl	$75, %edi
	movl	$753814, %ebx                   # imm = 0xB8096
	.p2align	4, 0x90
.LBB6_138:                              # %b6667
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
	calll	func_b1638
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	orl	%ebp, %eax
	movw	%ax, (%ebx)
	decl	%edi
	addl	$-2, %ebx
	cmpl	$69, %edi
	jg	.LBB6_138
# %bb.139:                              # %b2556
	movl	20(%esp), %eax                  # 4-byte Reload
	testb	$3, %al
	jne	.LBB6_118
# %bb.140:                              # %b1758
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
	je	.LBB6_122
# %bb.141:                              # %b6664
	leal	1(%esi), %ebx
	subl	$8, %esp
	cmpl	$69, %ebx
	jae	.LBB6_120
# %bb.142:                              # %b6662
	.cfi_adjust_cfa_offset 8
	pushl	$62
	.cfi_adjust_cfa_offset 4
.LBB6_143:                              # %b6662
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b865
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%bl, pos
	testb	$15, 20(%esp)                   # 1-byte Folded Reload
	jne	.LBB6_119
.LBB6_144:                              # %b1126
	movzbl	current, %eax
	incl	%eax
	cmpl	$2, %eax
	jae	.LBB6_124
# %bb.145:                              # %b6652
	andl	$1, %eax
	movb	%al, current
	jmp	.LBB6_125
.LBB6_134:                              # %b5201
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB6_135:                              # %b3124
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b5183
	jmp	.LBB6_136
.LBB6_167:                              # %b3990
	.cfi_def_cfa_offset 48
	movl	%ebp, 16(%esp)                  # 4-byte Spill
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	xorl	%ebp, %ebp
	testb	$16, objects+20
	je	.LBB6_193
# %bb.168:                              # %b4710
	movl	objects+8, %ebx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB6_170
# %bb.169:                              # %b6426
	cmpl	%esi, %ebx
	jbe	.LBB6_171
	jmp	.LBB6_193
.LBB6_170:                              # %b4711
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebx
	ja	.LBB6_193
.LBB6_171:                              # %b6846
	movl	objects+12, %edx
	movzbl	console, %eax
	movzbl	console+2, %edi
	subl	%eax, %edi
	cmpl	$25, %edi
	jae	.LBB6_175
# %bb.172:                              # %b6964
	cmpl	%edi, %edx
	ja	.LBB6_193
# %bb.173:                              # %b6986
	movl	objects, %eax
	movl	objects+4, %ecx
	movl	objects+16, %ebp
	movl	%ebp, (%esp)                    # 4-byte Spill
	leal	-1(%ebx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB6_178
# %bb.174:                              # %b6962
	leal	-1(%edx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB6_184
.LBB6_175:                              # %b6965
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	jne	.LBB6_193
# %bb.176:                              # %b6985
	movl	objects, %eax
	movl	objects+4, %ebp
	movl	objects+16, %ecx
	movl	%ecx, (%esp)                    # 4-byte Spill
	leal	-1(%ebx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB6_180
# %bb.177:                              # %b6960
	leal	-1(%edx,%ebp), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6180
	jmp	.LBB6_184
.LBB6_178:                              # %b6963
	.cfi_def_cfa_offset 48
	leal	-1(%edx,%ecx), %ebp
	cmpl	%edi, %ebp
	jbe	.LBB6_181
# %bb.179:                              # %b4031
	movzbl	console+1, %ecx
	movl	%ecx, 24(%esp)                  # 4-byte Spill
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	movl	%edx, 12(%esp)                  # 4-byte Spill
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	jmp	.LBB6_182
.LBB6_180:                              # %b6961
	.cfi_def_cfa_offset 48
	addl	%edx, %ebp
	decl	%ebp
	jne	.LBB6_183
.LBB6_181:                              # %b6388
	movzbl	console+1, %ecx
	movl	%ecx, 24(%esp)                  # 4-byte Spill
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	movl	%edx, 12(%esp)                  # 4-byte Spill
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %edi                  # 4-byte Reload
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
.LBB6_182:                              # %b6815
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB6_184
.LBB6_183:                              # %b4025
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	movl	%edx, 12(%esp)                  # 4-byte Spill
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebp                  # 4-byte Reload
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	28(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
.LBB6_184:                              # %b6815
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movl	$1, %ebp
	jmp	.LBB6_194
.LBB6_193:                              # %b6813
	incl	%ebp
	cmpl	$21, %ebp
	jae	.LBB6_126
.LBB6_194:                              # %b6815
	leal	(,%ebp,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB6_193
# %bb.195:                              # %b4005
	leal	objects(%eax,%eax,2), %edi
	movl	8(%edi), %ebx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB6_197
# %bb.196:                              # %b6384
	cmpl	%esi, %ebx
	ja	.LBB6_193
	jmp	.LBB6_198
.LBB6_197:                              # %b4006
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebx
	ja	.LBB6_193
.LBB6_198:                              # %b6812
	movl	%ebx, %edx
	movl	12(%edi), %ecx
	movzbl	console, %eax
	movzbl	console+2, %ebx
	subl	%eax, %ebx
	cmpl	$25, %ebx
	jae	.LBB6_200
# %bb.199:                              # %b6983
	cmpl	%ebx, %ecx
	ja	.LBB6_193
	jmp	.LBB6_153
.LBB6_200:                              # %b6984
	testl	%ecx, %ecx
	jne	.LBB6_193
	jmp	.LBB6_156
.LBB6_185:                              # %b6847
	incl	%eax
	cmpl	$21, %eax
	jae	.LBB6_167
.LBB6_186:                              # %b6849
	leal	(,%eax,8), %ecx
	movl	objects+20(%ecx,%ecx,2), %edx
	testb	$16, %dl
	je	.LBB6_185
# %bb.187:                              # %b4035
	testb	$1, %dl
	je	.LBB6_185
# %bb.188:                              # %b4036
	leal	objects(%ecx,%ecx,2), %ecx
	cmpl	%ebx, %ecx
	je	.LBB6_185
# %bb.189:                              # %b4038
	movl	8(%ecx), %edx
	movl	8(%ebx), %esi
	movl	(%ebx), %edi
	addl	%esi, %edi
	cmpl	%edi, %edx
	jae	.LBB6_185
# %bb.190:                              # %b4039
	addl	(%ecx), %edx
	cmpl	%esi, %edx
	jbe	.LBB6_185
# %bb.191:                              # %b4040
	movl	12(%ecx), %edx
	movl	12(%ebx), %esi
	movl	4(%ebx), %edi
	addl	%esi, %edi
	cmpl	%edi, %edx
	jae	.LBB6_185
# %bb.192:                              # %b4041
	addl	4(%ecx), %edx
	cmpl	%esi, %edx
	jbe	.LBB6_185
	jmp	.LBB6_99
.Lfunc_end6:
	.size	timerInterrupt, .Lfunc_end6-timerInterrupt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1244
	.type	func_b1244,@function
func_b1244:                             # @func_b1244
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
.LBB7_1:                                # %b1687
                                        # =>This Inner Loop Header: Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	calll	func_b1685
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
	.size	func_b1244, .Lfunc_end7-func_b1244
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1638
	.type	func_b1638,@function
func_b1638:                             # @func_b1638
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %ecx
	movl	4(%esp), %eax
	cmpl	%ecx, %eax
	ja	.LBB8_2
# %bb.1:                                # %b1165
	addl	$48, %eax
	movzbl	%al, %eax
	retl
.LBB8_2:                                # %b1166
	addl	$87, %eax
	movzbl	%al, %eax
	retl
.Lfunc_end8:
	.size	func_b1638, .Lfunc_end8-func_b1638
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
.Lfunc_end9:
	.size	func_b865, .Lfunc_end9-func_b865
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3254
	.type	func_b3254,@function
func_b3254:                             # @func_b3254
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
	movl	48(%esp), %ecx
	movl	ball, %esi
	movl	gameoverZone, %edx
	movl	%edx, 24(%esp)                  # 4-byte Spill
	movl	$objects, %edx
	movl	%esi, 16(%esp)                  # 4-byte Spill
	subl	%esi, %edx
	jmp	.LBB10_3
.LBB10_1:                               # %b3508
                                        #   in Loop: Header=BB10_3 Depth=1
	movb	$0, headingTop
	.p2align	4, 0x90
.LBB10_2:                               # %b6900
                                        #   in Loop: Header=BB10_3 Depth=1
	incl	%eax
	cmpl	$21, %eax
	jae	.LBB10_14
.LBB10_3:                               # %b3254.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_4 Depth 2
	leal	(,%eax,8), %esi
	leal	(%esi,%esi,2), %esi
.LBB10_4:                               # %b3254
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %edi
	addl	%esi, %edi
	je	.LBB10_2
# %bb.5:                                # %b3512
                                        #   in Loop: Header=BB10_4 Depth=2
	movl	objects+20(%esi), %ebx
	testb	$16, %bl
	je	.LBB10_2
# %bb.6:                                # %b3663
                                        #   in Loop: Header=BB10_4 Depth=2
	testb	$2, %bl
	je	.LBB10_2
# %bb.7:                                # %b3710
                                        #   in Loop: Header=BB10_4 Depth=2
	movl	objects+8(%esi), %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	8(%ebp), %ebx
	movl	(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	jae	.LBB10_2
# %bb.8:                                # %b3725
                                        #   in Loop: Header=BB10_4 Depth=2
	addl	objects(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB10_2
# %bb.9:                                # %b3738
                                        #   in Loop: Header=BB10_4 Depth=2
	movl	objects+12(%esi), %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	12(%ebp), %ebx
	movl	4(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	jae	.LBB10_2
# %bb.10:                               # %b3746
                                        #   in Loop: Header=BB10_4 Depth=2
	addl	objects+4(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB10_2
# %bb.11:                               # %b3754
                                        #   in Loop: Header=BB10_4 Depth=2
	movl	objects+12(%esi), %edi
	cmpl	%edi, %ecx
	jbe	.LBB10_1
# %bb.12:                               # %b3509
                                        #   in Loop: Header=BB10_4 Depth=2
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	4(%ebx), %ebx
	addl	%ecx, %ebx
	addl	objects+4(%esi), %edi
	cmpl	%edi, %ebx
	jae	.LBB10_1
# %bb.13:                               # %b3510
                                        #   in Loop: Header=BB10_4 Depth=2
	movb	$0, headingLeft
	incl	%eax
	addl	$24, %esi
	cmpl	$21, %eax
	jb	.LBB10_4
.LBB10_14:                              # %b2208
	movl	objects+20, %eax
	testb	$16, %al
	movl	16(%esp), %esi                  # 4-byte Reload
	je	.LBB10_22
# %bb.15:                               # %b4703
	testb	$1, %al
	je	.LBB10_22
# %bb.16:                               # %b4704
	movl	$objects, %eax
	cmpl	%esi, %eax
	je	.LBB10_22
# %bb.17:                               # %b4705
	movl	objects+8, %eax
	movl	8(%esi), %ecx
	movl	(%esi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB10_22
# %bb.18:                               # %b4706
	addl	objects, %eax
	cmpl	%ecx, %eax
	jbe	.LBB10_22
# %bb.19:                               # %b4707
	movl	objects+12, %eax
	movl	12(%esi), %ecx
	movl	4(%esi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB10_22
# %bb.20:                               # %b4708
	addl	objects+4, %eax
	cmpl	%ecx, %eax
	jbe	.LBB10_22
# %bb.21:                               # %b4709
	andb	$-17, objects+20
	decl	bricksLeft
.LBB10_22:                              # %b6786.preheader
	movl	$objects, %eax
	subl	%esi, %eax
	addl	$24, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	.LBB10_24
	.p2align	4, 0x90
.LBB10_23:                              # %b6784
                                        #   in Loop: Header=BB10_24 Depth=1
	incl	%ecx
	addl	$24, %edx
	cmpl	$21, %ecx
	jae	.LBB10_32
.LBB10_24:                              # %b6786
                                        # =>This Inner Loop Header: Depth=1
	movl	objects+44(%edx), %ebx
	testb	$16, %bl
	je	.LBB10_23
# %bb.25:                               # %b3230
                                        #   in Loop: Header=BB10_24 Depth=1
	testb	$1, %bl
	je	.LBB10_23
# %bb.26:                               # %b3701
                                        #   in Loop: Header=BB10_24 Depth=1
	movl	%eax, %esi
	addl	%edx, %esi
	je	.LBB10_23
# %bb.27:                               # %b3703
                                        #   in Loop: Header=BB10_24 Depth=1
	movl	objects+32(%edx), %esi
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	8(%ebx), %edi
	movl	(%ebx), %ebx
	addl	%edi, %ebx
	cmpl	%ebx, %esi
	jae	.LBB10_23
# %bb.28:                               # %b3704
                                        #   in Loop: Header=BB10_24 Depth=1
	addl	objects+24(%edx), %esi
	cmpl	%edi, %esi
	jbe	.LBB10_23
# %bb.29:                               # %b3705
                                        #   in Loop: Header=BB10_24 Depth=1
	movl	objects+36(%edx), %esi
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	12(%ebx), %edi
	movl	4(%ebx), %ebx
	addl	%edi, %ebx
	cmpl	%ebx, %esi
	jae	.LBB10_23
# %bb.30:                               # %b3706
                                        #   in Loop: Header=BB10_24 Depth=1
	addl	objects+28(%edx), %esi
	cmpl	%edi, %esi
	jbe	.LBB10_23
# %bb.31:                               # %b3707
                                        #   in Loop: Header=BB10_24 Depth=1
	andb	$-17, objects+44(%edx)
	decl	bricksLeft
	jmp	.LBB10_23
.LBB10_32:                              # %b2720
	testb	$16, objects+20
	je	.LBB10_50
# %bb.33:                               # %b4687
	movl	objects+8, %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB10_35
# %bb.34:                               # %b6356
	cmpl	%esi, %ebp
	jbe	.LBB10_36
	jmp	.LBB10_50
.LBB10_35:                              # %b4688
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebp
	ja	.LBB10_50
.LBB10_36:                              # %b6783
	movl	objects+12, %edx
	movzbl	console, %eax
	movzbl	console+2, %ebx
	subl	%eax, %ebx
	cmpl	$25, %ebx
	jae	.LBB10_40
# %bb.37:                               # %b6957
	cmpl	%ebx, %edx
	ja	.LBB10_50
# %bb.38:                               # %b6982
	movl	objects, %eax
	movl	objects+4, %ecx
	movl	objects+16, %edi
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB10_43
# %bb.39:                               # %b6955
	leal	-1(%edx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB10_49
.LBB10_40:                              # %b6958
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	jne	.LBB10_50
# %bb.41:                               # %b6981
	movl	objects, %eax
	movl	objects+4, %edi
	movl	objects+16, %ebx
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB10_45
# %bb.42:                               # %b6953
	leal	-1(%edx,%edi), %ecx
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
	calll	func_b6180
	jmp	.LBB10_49
.LBB10_43:                              # %b6956
	.cfi_def_cfa_offset 48
	movl	%edi, (%esp)                    # 4-byte Spill
	leal	-1(%edx,%ecx), %edi
	cmpl	%ebx, %edi
	jbe	.LBB10_46
# %bb.44:                               # %b2735
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	jmp	.LBB10_47
.LBB10_45:                              # %b6954
	.cfi_def_cfa_offset 48
	movl	%ebx, (%esp)                    # 4-byte Spill
	addl	%edx, %edi
	decl	%edi
	jne	.LBB10_48
.LBB10_46:                              # %b6318
	movzbl	console+1, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB10_47:                              # %b6715.preheader
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB10_49
.LBB10_48:                              # %b2729
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
.LBB10_49:                              # %b6715.preheader
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
.LBB10_50:                              # %b6715.preheader
	movl	$1, %ebp
	jmp	.LBB10_54
.LBB10_51:                              # %b6971
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%edi), %ecx
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
	calll	func_b6180
.LBB10_52:                              # %b6713
                                        #   in Loop: Header=BB10_54 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB10_53:                              # %b6713
                                        #   in Loop: Header=BB10_54 Depth=1
	incl	%ebp
	cmpl	$21, %ebp
	jae	.LBB10_72
.LBB10_54:                              # %b6715
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%ebp,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB10_53
# %bb.55:                               # %b2715
                                        #   in Loop: Header=BB10_54 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB10_57
# %bb.56:                               # %b6224
                                        #   in Loop: Header=BB10_54 Depth=1
	cmpl	%esi, %edx
	ja	.LBB10_53
	jmp	.LBB10_58
	.p2align	4, 0x90
.LBB10_57:                              # %b2716
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	%edx, %esi
	calll	func_b5219
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB10_53
.LBB10_58:                              # %b6712
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %edi
	subl	%eax, %edi
	cmpl	$25, %edi
	jae	.LBB10_62
# %bb.59:                               # %b6975
                                        #   in Loop: Header=BB10_54 Depth=1
	cmpl	%edi, %ecx
	ja	.LBB10_53
# %bb.60:                               # %b6992
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB10_66
# %bb.61:                               # %b6973
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	(%esp), %esi                    # 4-byte Reload
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
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB10_52
.LBB10_62:                              # %b6976
                                        #   in Loop: Header=BB10_54 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB10_53
# %bb.63:                               # %b6991
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %edi
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB10_51
# %bb.64:                               # %b6972
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	addl	%ecx, %edi
	decl	%edi
	jne	.LBB10_71
# %bb.65:                               #   in Loop: Header=BB10_54 Depth=1
	movl	%edi, 12(%esp)                  # 4-byte Spill
	jmp	.LBB10_68
.LBB10_66:                              # %b6974
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	movl	(%esp), %eax                    # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	cmpl	%edi, %ebx
	ja	.LBB10_69
# %bb.67:                               #   in Loop: Header=BB10_54 Depth=1
	movl	%ebx, 12(%esp)                  # 4-byte Spill
.LBB10_68:                              # %b6175
                                        #   in Loop: Header=BB10_54 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 20(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	20(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB10_70
.LBB10_69:                              # %b3217
                                        #   in Loop: Header=BB10_54 Depth=1
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
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
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
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB10_70:                              # %b6713
                                        #   in Loop: Header=BB10_54 Depth=1
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB10_52
.LBB10_71:                              # %b3211
                                        #   in Loop: Header=BB10_54 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	20(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	movl	%ecx, 32(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
	jmp	.LBB10_52
.LBB10_72:                              # %b2034
	.cfi_def_cfa_offset 48
	movl	16(%esp), %esi                  # 4-byte Reload
	movl	8(%esi), %eax
	movl	24(%esp), %edi                  # 4-byte Reload
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB10_84
# %bb.73:                               # %b2035
	addl	(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB10_84
# %bb.74:                               # %b2036
	movl	12(%esi), %eax
	movl	12(%edi), %ecx
	movl	4(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB10_84
# %bb.75:                               # %b2037
	addl	4(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB10_84
# %bb.76:                               # %b1041
	calll	func_b1244
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB10_83
# %bb.77:                               # %b5218
	movl	$str45+1, %esi
	.p2align	4, 0x90
.LBB10_78:                              # %b5187
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB10_80
# %bb.79:                               # %b5190
                                        #   in Loop: Header=BB10_78 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB10_81
	.p2align	4, 0x90
.LBB10_80:                              # %b5192
                                        #   in Loop: Header=BB10_78 Depth=1
	.cfi_def_cfa_offset 48
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB10_81:                              # %b5183
                                        #   in Loop: Header=BB10_78 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB10_83
# %bb.82:                               # %b5185
                                        #   in Loop: Header=BB10_78 Depth=1
	incl	%esi
	jmp	.LBB10_78
.LBB10_83:                              # %b4261
	movb	$0, isPlaying
.LBB10_84:                              # %b303
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
.Lfunc_end10:
	.size	func_b3254, .Lfunc_end10-func_b3254
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3273
	.type	func_b3273,@function
func_b3273:                             # @func_b3273
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
	movl	48(%esp), %ecx
	movl	ball, %esi
	movl	gameoverZone, %edx
	movl	%edx, 24(%esp)                  # 4-byte Spill
	movl	$objects, %edx
	movl	%esi, 16(%esp)                  # 4-byte Spill
	subl	%esi, %edx
	jmp	.LBB11_3
.LBB11_1:                               # %b3517
                                        #   in Loop: Header=BB11_3 Depth=1
	movb	$1, headingTop
	.p2align	4, 0x90
.LBB11_2:                               # %b6883
                                        #   in Loop: Header=BB11_3 Depth=1
	incl	%eax
	cmpl	$21, %eax
	jae	.LBB11_14
.LBB11_3:                               # %b3273.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_4 Depth 2
	leal	(,%eax,8), %esi
	leal	(%esi,%esi,2), %esi
.LBB11_4:                               # %b3273
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %edi
	addl	%esi, %edi
	je	.LBB11_2
# %bb.5:                                # %b3521
                                        #   in Loop: Header=BB11_4 Depth=2
	movl	objects+20(%esi), %ebx
	testb	$16, %bl
	je	.LBB11_2
# %bb.6:                                # %b3665
                                        #   in Loop: Header=BB11_4 Depth=2
	testb	$2, %bl
	je	.LBB11_2
# %bb.7:                                # %b3712
                                        #   in Loop: Header=BB11_4 Depth=2
	movl	objects+8(%esi), %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	8(%ebp), %ebx
	movl	(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	jae	.LBB11_2
# %bb.8:                                # %b3727
                                        #   in Loop: Header=BB11_4 Depth=2
	addl	objects(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB11_2
# %bb.9:                                # %b3740
                                        #   in Loop: Header=BB11_4 Depth=2
	movl	objects+12(%esi), %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	12(%ebp), %ebx
	movl	4(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	jae	.LBB11_2
# %bb.10:                               # %b3748
                                        #   in Loop: Header=BB11_4 Depth=2
	addl	objects+4(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB11_2
# %bb.11:                               # %b3755
                                        #   in Loop: Header=BB11_4 Depth=2
	movl	objects+12(%esi), %edi
	cmpl	%edi, %ecx
	jbe	.LBB11_1
# %bb.12:                               # %b3518
                                        #   in Loop: Header=BB11_4 Depth=2
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	4(%ebx), %ebx
	addl	%ecx, %ebx
	addl	objects+4(%esi), %edi
	cmpl	%edi, %ebx
	jae	.LBB11_1
# %bb.13:                               # %b3519
                                        #   in Loop: Header=BB11_4 Depth=2
	movb	$0, headingLeft
	incl	%eax
	addl	$24, %esi
	cmpl	$21, %eax
	jb	.LBB11_4
.LBB11_14:                              # %b2208
	movl	objects+20, %eax
	testb	$16, %al
	movl	16(%esp), %esi                  # 4-byte Reload
	je	.LBB11_22
# %bb.15:                               # %b4703
	testb	$1, %al
	je	.LBB11_22
# %bb.16:                               # %b4704
	movl	$objects, %eax
	cmpl	%esi, %eax
	je	.LBB11_22
# %bb.17:                               # %b4705
	movl	objects+8, %eax
	movl	8(%esi), %ecx
	movl	(%esi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB11_22
# %bb.18:                               # %b4706
	addl	objects, %eax
	cmpl	%ecx, %eax
	jbe	.LBB11_22
# %bb.19:                               # %b4707
	movl	objects+12, %eax
	movl	12(%esi), %ecx
	movl	4(%esi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB11_22
# %bb.20:                               # %b4708
	addl	objects+4, %eax
	cmpl	%ecx, %eax
	jbe	.LBB11_22
# %bb.21:                               # %b4709
	andb	$-17, objects+20
	decl	bricksLeft
.LBB11_22:                              # %b6786.preheader
	movl	$objects, %eax
	subl	%esi, %eax
	addl	$24, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	.LBB11_24
	.p2align	4, 0x90
.LBB11_23:                              # %b6784
                                        #   in Loop: Header=BB11_24 Depth=1
	incl	%ecx
	addl	$24, %edx
	cmpl	$21, %ecx
	jae	.LBB11_32
.LBB11_24:                              # %b6786
                                        # =>This Inner Loop Header: Depth=1
	movl	objects+44(%edx), %ebx
	testb	$16, %bl
	je	.LBB11_23
# %bb.25:                               # %b3230
                                        #   in Loop: Header=BB11_24 Depth=1
	testb	$1, %bl
	je	.LBB11_23
# %bb.26:                               # %b3701
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	%eax, %esi
	addl	%edx, %esi
	je	.LBB11_23
# %bb.27:                               # %b3703
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	objects+32(%edx), %esi
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	8(%ebx), %edi
	movl	(%ebx), %ebx
	addl	%edi, %ebx
	cmpl	%ebx, %esi
	jae	.LBB11_23
# %bb.28:                               # %b3704
                                        #   in Loop: Header=BB11_24 Depth=1
	addl	objects+24(%edx), %esi
	cmpl	%edi, %esi
	jbe	.LBB11_23
# %bb.29:                               # %b3705
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	objects+36(%edx), %esi
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	12(%ebx), %edi
	movl	4(%ebx), %ebx
	addl	%edi, %ebx
	cmpl	%ebx, %esi
	jae	.LBB11_23
# %bb.30:                               # %b3706
                                        #   in Loop: Header=BB11_24 Depth=1
	addl	objects+28(%edx), %esi
	cmpl	%edi, %esi
	jbe	.LBB11_23
# %bb.31:                               # %b3707
                                        #   in Loop: Header=BB11_24 Depth=1
	andb	$-17, objects+44(%edx)
	decl	bricksLeft
	jmp	.LBB11_23
.LBB11_32:                              # %b2720
	testb	$16, objects+20
	je	.LBB11_50
# %bb.33:                               # %b4687
	movl	objects+8, %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB11_35
# %bb.34:                               # %b6356
	cmpl	%esi, %ebp
	jbe	.LBB11_36
	jmp	.LBB11_50
.LBB11_35:                              # %b4688
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebp
	ja	.LBB11_50
.LBB11_36:                              # %b6783
	movl	objects+12, %edx
	movzbl	console, %eax
	movzbl	console+2, %ebx
	subl	%eax, %ebx
	cmpl	$25, %ebx
	jae	.LBB11_40
# %bb.37:                               # %b6957
	cmpl	%ebx, %edx
	ja	.LBB11_50
# %bb.38:                               # %b6982
	movl	objects, %eax
	movl	objects+4, %ecx
	movl	objects+16, %edi
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB11_43
# %bb.39:                               # %b6955
	leal	-1(%edx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB11_49
.LBB11_40:                              # %b6958
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	jne	.LBB11_50
# %bb.41:                               # %b6981
	movl	objects, %eax
	movl	objects+4, %edi
	movl	objects+16, %ebx
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB11_45
# %bb.42:                               # %b6953
	leal	-1(%edx,%edi), %ecx
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
	calll	func_b6180
	jmp	.LBB11_49
.LBB11_43:                              # %b6956
	.cfi_def_cfa_offset 48
	movl	%edi, (%esp)                    # 4-byte Spill
	leal	-1(%edx,%ecx), %edi
	cmpl	%ebx, %edi
	jbe	.LBB11_46
# %bb.44:                               # %b2735
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	jmp	.LBB11_47
.LBB11_45:                              # %b6954
	.cfi_def_cfa_offset 48
	movl	%ebx, (%esp)                    # 4-byte Spill
	addl	%edx, %edi
	decl	%edi
	jne	.LBB11_48
.LBB11_46:                              # %b6318
	movzbl	console+1, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB11_47:                              # %b6715.preheader
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB11_49
.LBB11_48:                              # %b2729
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
.LBB11_49:                              # %b6715.preheader
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
.LBB11_50:                              # %b6715.preheader
	movl	$1, %ebp
	jmp	.LBB11_54
.LBB11_51:                              # %b6971
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%edi), %ecx
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
	calll	func_b6180
.LBB11_52:                              # %b6713
                                        #   in Loop: Header=BB11_54 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB11_53:                              # %b6713
                                        #   in Loop: Header=BB11_54 Depth=1
	incl	%ebp
	cmpl	$21, %ebp
	jae	.LBB11_72
.LBB11_54:                              # %b6715
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%ebp,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB11_53
# %bb.55:                               # %b2715
                                        #   in Loop: Header=BB11_54 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB11_57
# %bb.56:                               # %b6224
                                        #   in Loop: Header=BB11_54 Depth=1
	cmpl	%esi, %edx
	ja	.LBB11_53
	jmp	.LBB11_58
	.p2align	4, 0x90
.LBB11_57:                              # %b2716
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	%edx, %esi
	calll	func_b5219
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB11_53
.LBB11_58:                              # %b6712
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %edi
	subl	%eax, %edi
	cmpl	$25, %edi
	jae	.LBB11_62
# %bb.59:                               # %b6975
                                        #   in Loop: Header=BB11_54 Depth=1
	cmpl	%edi, %ecx
	ja	.LBB11_53
# %bb.60:                               # %b6992
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB11_66
# %bb.61:                               # %b6973
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	(%esp), %esi                    # 4-byte Reload
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
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB11_52
.LBB11_62:                              # %b6976
                                        #   in Loop: Header=BB11_54 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB11_53
# %bb.63:                               # %b6991
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %edi
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB11_51
# %bb.64:                               # %b6972
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	addl	%ecx, %edi
	decl	%edi
	jne	.LBB11_71
# %bb.65:                               #   in Loop: Header=BB11_54 Depth=1
	movl	%edi, 12(%esp)                  # 4-byte Spill
	jmp	.LBB11_68
.LBB11_66:                              # %b6974
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	movl	(%esp), %eax                    # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	cmpl	%edi, %ebx
	ja	.LBB11_69
# %bb.67:                               #   in Loop: Header=BB11_54 Depth=1
	movl	%ebx, 12(%esp)                  # 4-byte Spill
.LBB11_68:                              # %b6175
                                        #   in Loop: Header=BB11_54 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 20(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	20(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB11_70
.LBB11_69:                              # %b3217
                                        #   in Loop: Header=BB11_54 Depth=1
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
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
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
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB11_70:                              # %b6713
                                        #   in Loop: Header=BB11_54 Depth=1
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB11_52
.LBB11_71:                              # %b3211
                                        #   in Loop: Header=BB11_54 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	20(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	movl	%ecx, 32(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
	jmp	.LBB11_52
.LBB11_72:                              # %b2034
	.cfi_def_cfa_offset 48
	movl	16(%esp), %esi                  # 4-byte Reload
	movl	8(%esi), %eax
	movl	24(%esp), %edi                  # 4-byte Reload
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB11_84
# %bb.73:                               # %b2035
	addl	(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB11_84
# %bb.74:                               # %b2036
	movl	12(%esi), %eax
	movl	12(%edi), %ecx
	movl	4(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB11_84
# %bb.75:                               # %b2037
	addl	4(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB11_84
# %bb.76:                               # %b1041
	calll	func_b1244
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB11_83
# %bb.77:                               # %b5218
	movl	$str45+1, %esi
	.p2align	4, 0x90
.LBB11_78:                              # %b5187
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB11_80
# %bb.79:                               # %b5190
                                        #   in Loop: Header=BB11_78 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB11_81
	.p2align	4, 0x90
.LBB11_80:                              # %b5192
                                        #   in Loop: Header=BB11_78 Depth=1
	.cfi_def_cfa_offset 48
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB11_81:                              # %b5183
                                        #   in Loop: Header=BB11_78 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB11_83
# %bb.82:                               # %b5185
                                        #   in Loop: Header=BB11_78 Depth=1
	incl	%esi
	jmp	.LBB11_78
.LBB11_83:                              # %b4261
	movb	$0, isPlaying
.LBB11_84:                              # %b303
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
	.size	func_b3273, .Lfunc_end11-func_b3273
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3292
	.type	func_b3292,@function
func_b3292:                             # @func_b3292
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
	movl	48(%esp), %ecx
	movl	ball, %esi
	movl	gameoverZone, %edx
	movl	%edx, 24(%esp)                  # 4-byte Spill
	movl	$objects, %edx
	movl	%esi, 16(%esp)                  # 4-byte Spill
	subl	%esi, %edx
	jmp	.LBB12_3
.LBB12_1:                               # %b3526
                                        #   in Loop: Header=BB12_3 Depth=1
	movb	$0, headingTop
	.p2align	4, 0x90
.LBB12_2:                               # %b6866
                                        #   in Loop: Header=BB12_3 Depth=1
	incl	%eax
	cmpl	$21, %eax
	jae	.LBB12_14
.LBB12_3:                               # %b3292.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	leal	(,%eax,8), %esi
	leal	(%esi,%esi,2), %esi
.LBB12_4:                               # %b3292
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %edi
	addl	%esi, %edi
	je	.LBB12_2
# %bb.5:                                # %b3530
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	objects+20(%esi), %ebx
	testb	$16, %bl
	je	.LBB12_2
# %bb.6:                                # %b3667
                                        #   in Loop: Header=BB12_4 Depth=2
	testb	$2, %bl
	je	.LBB12_2
# %bb.7:                                # %b3714
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	objects+8(%esi), %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	8(%ebp), %ebx
	movl	(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	jae	.LBB12_2
# %bb.8:                                # %b3729
                                        #   in Loop: Header=BB12_4 Depth=2
	addl	objects(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB12_2
# %bb.9:                                # %b3742
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	objects+12(%esi), %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	12(%ebp), %ebx
	movl	4(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	jae	.LBB12_2
# %bb.10:                               # %b3750
                                        #   in Loop: Header=BB12_4 Depth=2
	addl	objects+4(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB12_2
# %bb.11:                               # %b3756
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	objects+12(%esi), %edi
	cmpl	%edi, %ecx
	jbe	.LBB12_1
# %bb.12:                               # %b3527
                                        #   in Loop: Header=BB12_4 Depth=2
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	4(%ebx), %ebx
	addl	%ecx, %ebx
	addl	objects+4(%esi), %edi
	cmpl	%edi, %ebx
	jae	.LBB12_1
# %bb.13:                               # %b3528
                                        #   in Loop: Header=BB12_4 Depth=2
	movb	$1, headingLeft
	incl	%eax
	addl	$24, %esi
	cmpl	$21, %eax
	jb	.LBB12_4
.LBB12_14:                              # %b2208
	movl	objects+20, %eax
	testb	$16, %al
	movl	16(%esp), %esi                  # 4-byte Reload
	je	.LBB12_22
# %bb.15:                               # %b4703
	testb	$1, %al
	je	.LBB12_22
# %bb.16:                               # %b4704
	movl	$objects, %eax
	cmpl	%esi, %eax
	je	.LBB12_22
# %bb.17:                               # %b4705
	movl	objects+8, %eax
	movl	8(%esi), %ecx
	movl	(%esi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB12_22
# %bb.18:                               # %b4706
	addl	objects, %eax
	cmpl	%ecx, %eax
	jbe	.LBB12_22
# %bb.19:                               # %b4707
	movl	objects+12, %eax
	movl	12(%esi), %ecx
	movl	4(%esi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB12_22
# %bb.20:                               # %b4708
	addl	objects+4, %eax
	cmpl	%ecx, %eax
	jbe	.LBB12_22
# %bb.21:                               # %b4709
	andb	$-17, objects+20
	decl	bricksLeft
.LBB12_22:                              # %b6786.preheader
	movl	$objects, %eax
	subl	%esi, %eax
	addl	$24, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	.LBB12_24
	.p2align	4, 0x90
.LBB12_23:                              # %b6784
                                        #   in Loop: Header=BB12_24 Depth=1
	incl	%ecx
	addl	$24, %edx
	cmpl	$21, %ecx
	jae	.LBB12_32
.LBB12_24:                              # %b6786
                                        # =>This Inner Loop Header: Depth=1
	movl	objects+44(%edx), %ebx
	testb	$16, %bl
	je	.LBB12_23
# %bb.25:                               # %b3230
                                        #   in Loop: Header=BB12_24 Depth=1
	testb	$1, %bl
	je	.LBB12_23
# %bb.26:                               # %b3701
                                        #   in Loop: Header=BB12_24 Depth=1
	movl	%eax, %esi
	addl	%edx, %esi
	je	.LBB12_23
# %bb.27:                               # %b3703
                                        #   in Loop: Header=BB12_24 Depth=1
	movl	objects+32(%edx), %esi
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	8(%ebx), %edi
	movl	(%ebx), %ebx
	addl	%edi, %ebx
	cmpl	%ebx, %esi
	jae	.LBB12_23
# %bb.28:                               # %b3704
                                        #   in Loop: Header=BB12_24 Depth=1
	addl	objects+24(%edx), %esi
	cmpl	%edi, %esi
	jbe	.LBB12_23
# %bb.29:                               # %b3705
                                        #   in Loop: Header=BB12_24 Depth=1
	movl	objects+36(%edx), %esi
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	12(%ebx), %edi
	movl	4(%ebx), %ebx
	addl	%edi, %ebx
	cmpl	%ebx, %esi
	jae	.LBB12_23
# %bb.30:                               # %b3706
                                        #   in Loop: Header=BB12_24 Depth=1
	addl	objects+28(%edx), %esi
	cmpl	%edi, %esi
	jbe	.LBB12_23
# %bb.31:                               # %b3707
                                        #   in Loop: Header=BB12_24 Depth=1
	andb	$-17, objects+44(%edx)
	decl	bricksLeft
	jmp	.LBB12_23
.LBB12_32:                              # %b2720
	testb	$16, objects+20
	je	.LBB12_50
# %bb.33:                               # %b4687
	movl	objects+8, %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB12_35
# %bb.34:                               # %b6356
	cmpl	%esi, %ebp
	jbe	.LBB12_36
	jmp	.LBB12_50
.LBB12_35:                              # %b4688
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebp
	ja	.LBB12_50
.LBB12_36:                              # %b6783
	movl	objects+12, %edx
	movzbl	console, %eax
	movzbl	console+2, %ebx
	subl	%eax, %ebx
	cmpl	$25, %ebx
	jae	.LBB12_40
# %bb.37:                               # %b6957
	cmpl	%ebx, %edx
	ja	.LBB12_50
# %bb.38:                               # %b6982
	movl	objects, %eax
	movl	objects+4, %ecx
	movl	objects+16, %edi
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB12_43
# %bb.39:                               # %b6955
	leal	-1(%edx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB12_49
.LBB12_40:                              # %b6958
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	jne	.LBB12_50
# %bb.41:                               # %b6981
	movl	objects, %eax
	movl	objects+4, %edi
	movl	objects+16, %ebx
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB12_45
# %bb.42:                               # %b6953
	leal	-1(%edx,%edi), %ecx
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
	calll	func_b6180
	jmp	.LBB12_49
.LBB12_43:                              # %b6956
	.cfi_def_cfa_offset 48
	movl	%edi, (%esp)                    # 4-byte Spill
	leal	-1(%edx,%ecx), %edi
	cmpl	%ebx, %edi
	jbe	.LBB12_46
# %bb.44:                               # %b2735
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	jmp	.LBB12_47
.LBB12_45:                              # %b6954
	.cfi_def_cfa_offset 48
	movl	%ebx, (%esp)                    # 4-byte Spill
	addl	%edx, %edi
	decl	%edi
	jne	.LBB12_48
.LBB12_46:                              # %b6318
	movzbl	console+1, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB12_47:                              # %b6715.preheader
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB12_49
.LBB12_48:                              # %b2729
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
.LBB12_49:                              # %b6715.preheader
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
.LBB12_50:                              # %b6715.preheader
	movl	$1, %ebp
	jmp	.LBB12_54
.LBB12_51:                              # %b6971
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%edi), %ecx
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
	calll	func_b6180
.LBB12_52:                              # %b6713
                                        #   in Loop: Header=BB12_54 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB12_53:                              # %b6713
                                        #   in Loop: Header=BB12_54 Depth=1
	incl	%ebp
	cmpl	$21, %ebp
	jae	.LBB12_72
.LBB12_54:                              # %b6715
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%ebp,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB12_53
# %bb.55:                               # %b2715
                                        #   in Loop: Header=BB12_54 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB12_57
# %bb.56:                               # %b6224
                                        #   in Loop: Header=BB12_54 Depth=1
	cmpl	%esi, %edx
	ja	.LBB12_53
	jmp	.LBB12_58
	.p2align	4, 0x90
.LBB12_57:                              # %b2716
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	%edx, %esi
	calll	func_b5219
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB12_53
.LBB12_58:                              # %b6712
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %edi
	subl	%eax, %edi
	cmpl	$25, %edi
	jae	.LBB12_62
# %bb.59:                               # %b6975
                                        #   in Loop: Header=BB12_54 Depth=1
	cmpl	%edi, %ecx
	ja	.LBB12_53
# %bb.60:                               # %b6992
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB12_66
# %bb.61:                               # %b6973
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	(%esp), %esi                    # 4-byte Reload
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
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB12_52
.LBB12_62:                              # %b6976
                                        #   in Loop: Header=BB12_54 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB12_53
# %bb.63:                               # %b6991
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %edi
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB12_51
# %bb.64:                               # %b6972
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	addl	%ecx, %edi
	decl	%edi
	jne	.LBB12_71
# %bb.65:                               #   in Loop: Header=BB12_54 Depth=1
	movl	%edi, 12(%esp)                  # 4-byte Spill
	jmp	.LBB12_68
.LBB12_66:                              # %b6974
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	movl	(%esp), %eax                    # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	cmpl	%edi, %ebx
	ja	.LBB12_69
# %bb.67:                               #   in Loop: Header=BB12_54 Depth=1
	movl	%ebx, 12(%esp)                  # 4-byte Spill
.LBB12_68:                              # %b6175
                                        #   in Loop: Header=BB12_54 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 20(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	20(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB12_70
.LBB12_69:                              # %b3217
                                        #   in Loop: Header=BB12_54 Depth=1
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
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
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
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB12_70:                              # %b6713
                                        #   in Loop: Header=BB12_54 Depth=1
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB12_52
.LBB12_71:                              # %b3211
                                        #   in Loop: Header=BB12_54 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	20(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	movl	%ecx, 32(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
	jmp	.LBB12_52
.LBB12_72:                              # %b2034
	.cfi_def_cfa_offset 48
	movl	16(%esp), %esi                  # 4-byte Reload
	movl	8(%esi), %eax
	movl	24(%esp), %edi                  # 4-byte Reload
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB12_84
# %bb.73:                               # %b2035
	addl	(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB12_84
# %bb.74:                               # %b2036
	movl	12(%esi), %eax
	movl	12(%edi), %ecx
	movl	4(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB12_84
# %bb.75:                               # %b2037
	addl	4(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB12_84
# %bb.76:                               # %b1041
	calll	func_b1244
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB12_83
# %bb.77:                               # %b5218
	movl	$str45+1, %esi
	.p2align	4, 0x90
.LBB12_78:                              # %b5187
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB12_80
# %bb.79:                               # %b5190
                                        #   in Loop: Header=BB12_78 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB12_81
	.p2align	4, 0x90
.LBB12_80:                              # %b5192
                                        #   in Loop: Header=BB12_78 Depth=1
	.cfi_def_cfa_offset 48
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB12_81:                              # %b5183
                                        #   in Loop: Header=BB12_78 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB12_83
# %bb.82:                               # %b5185
                                        #   in Loop: Header=BB12_78 Depth=1
	incl	%esi
	jmp	.LBB12_78
.LBB12_83:                              # %b4261
	movb	$0, isPlaying
.LBB12_84:                              # %b303
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
	.size	func_b3292, .Lfunc_end12-func_b3292
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3311
	.type	func_b3311,@function
func_b3311:                             # @func_b3311
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
	movl	48(%esp), %ecx
	movl	ball, %esi
	movl	gameoverZone, %edx
	movl	%edx, 24(%esp)                  # 4-byte Spill
	movl	$objects, %edx
	movl	%esi, 16(%esp)                  # 4-byte Spill
	subl	%esi, %edx
	jmp	.LBB13_3
.LBB13_1:                               # %b3535
                                        #   in Loop: Header=BB13_3 Depth=1
	movb	$1, headingTop
	.p2align	4, 0x90
.LBB13_2:                               # %b6804
                                        #   in Loop: Header=BB13_3 Depth=1
	incl	%eax
	cmpl	$21, %eax
	jae	.LBB13_14
.LBB13_3:                               # %b3311.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
	leal	(,%eax,8), %esi
	leal	(%esi,%esi,2), %esi
.LBB13_4:                               # %b3311
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%edx, %edi
	addl	%esi, %edi
	je	.LBB13_2
# %bb.5:                                # %b3539
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	objects+20(%esi), %ebx
	testb	$16, %bl
	je	.LBB13_2
# %bb.6:                                # %b3669
                                        #   in Loop: Header=BB13_4 Depth=2
	testb	$2, %bl
	je	.LBB13_2
# %bb.7:                                # %b3716
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	objects+8(%esi), %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	8(%ebp), %ebx
	movl	(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	jae	.LBB13_2
# %bb.8:                                # %b3731
                                        #   in Loop: Header=BB13_4 Depth=2
	addl	objects(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB13_2
# %bb.9:                                # %b3744
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	objects+12(%esi), %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	12(%ebp), %ebx
	movl	4(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	jae	.LBB13_2
# %bb.10:                               # %b3752
                                        #   in Loop: Header=BB13_4 Depth=2
	addl	objects+4(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB13_2
# %bb.11:                               # %b3757
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	objects+12(%esi), %edi
	cmpl	%edi, %ecx
	jbe	.LBB13_1
# %bb.12:                               # %b3536
                                        #   in Loop: Header=BB13_4 Depth=2
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	4(%ebx), %ebx
	addl	%ecx, %ebx
	addl	objects+4(%esi), %edi
	cmpl	%edi, %ebx
	jae	.LBB13_1
# %bb.13:                               # %b3537
                                        #   in Loop: Header=BB13_4 Depth=2
	movb	$1, headingLeft
	incl	%eax
	addl	$24, %esi
	cmpl	$21, %eax
	jb	.LBB13_4
.LBB13_14:                              # %b2208
	movl	objects+20, %eax
	testb	$16, %al
	movl	16(%esp), %esi                  # 4-byte Reload
	je	.LBB13_22
# %bb.15:                               # %b4703
	testb	$1, %al
	je	.LBB13_22
# %bb.16:                               # %b4704
	movl	$objects, %eax
	cmpl	%esi, %eax
	je	.LBB13_22
# %bb.17:                               # %b4705
	movl	objects+8, %eax
	movl	8(%esi), %ecx
	movl	(%esi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB13_22
# %bb.18:                               # %b4706
	addl	objects, %eax
	cmpl	%ecx, %eax
	jbe	.LBB13_22
# %bb.19:                               # %b4707
	movl	objects+12, %eax
	movl	12(%esi), %ecx
	movl	4(%esi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB13_22
# %bb.20:                               # %b4708
	addl	objects+4, %eax
	cmpl	%ecx, %eax
	jbe	.LBB13_22
# %bb.21:                               # %b4709
	andb	$-17, objects+20
	decl	bricksLeft
.LBB13_22:                              # %b6786.preheader
	movl	$objects, %eax
	subl	%esi, %eax
	addl	$24, %eax
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	.LBB13_24
	.p2align	4, 0x90
.LBB13_23:                              # %b6784
                                        #   in Loop: Header=BB13_24 Depth=1
	incl	%ecx
	addl	$24, %edx
	cmpl	$21, %ecx
	jae	.LBB13_32
.LBB13_24:                              # %b6786
                                        # =>This Inner Loop Header: Depth=1
	movl	objects+44(%edx), %ebx
	testb	$16, %bl
	je	.LBB13_23
# %bb.25:                               # %b3230
                                        #   in Loop: Header=BB13_24 Depth=1
	testb	$1, %bl
	je	.LBB13_23
# %bb.26:                               # %b3701
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	%eax, %esi
	addl	%edx, %esi
	je	.LBB13_23
# %bb.27:                               # %b3703
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	objects+32(%edx), %esi
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	8(%ebx), %edi
	movl	(%ebx), %ebx
	addl	%edi, %ebx
	cmpl	%ebx, %esi
	jae	.LBB13_23
# %bb.28:                               # %b3704
                                        #   in Loop: Header=BB13_24 Depth=1
	addl	objects+24(%edx), %esi
	cmpl	%edi, %esi
	jbe	.LBB13_23
# %bb.29:                               # %b3705
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	objects+36(%edx), %esi
	movl	16(%esp), %ebx                  # 4-byte Reload
	movl	12(%ebx), %edi
	movl	4(%ebx), %ebx
	addl	%edi, %ebx
	cmpl	%ebx, %esi
	jae	.LBB13_23
# %bb.30:                               # %b3706
                                        #   in Loop: Header=BB13_24 Depth=1
	addl	objects+28(%edx), %esi
	cmpl	%edi, %esi
	jbe	.LBB13_23
# %bb.31:                               # %b3707
                                        #   in Loop: Header=BB13_24 Depth=1
	andb	$-17, objects+44(%edx)
	decl	bricksLeft
	jmp	.LBB13_23
.LBB13_32:                              # %b2720
	testb	$16, objects+20
	je	.LBB13_50
# %bb.33:                               # %b4687
	movl	objects+8, %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB13_35
# %bb.34:                               # %b6356
	cmpl	%esi, %ebp
	jbe	.LBB13_36
	jmp	.LBB13_50
.LBB13_35:                              # %b4688
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebp
	ja	.LBB13_50
.LBB13_36:                              # %b6783
	movl	objects+12, %edx
	movzbl	console, %eax
	movzbl	console+2, %ebx
	subl	%eax, %ebx
	cmpl	$25, %ebx
	jae	.LBB13_40
# %bb.37:                               # %b6957
	cmpl	%ebx, %edx
	ja	.LBB13_50
# %bb.38:                               # %b6982
	movl	objects, %eax
	movl	objects+4, %ecx
	movl	objects+16, %edi
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB13_43
# %bb.39:                               # %b6955
	leal	-1(%edx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB13_49
.LBB13_40:                              # %b6958
	.cfi_def_cfa_offset 48
	testl	%edx, %edx
	jne	.LBB13_50
# %bb.41:                               # %b6981
	movl	objects, %eax
	movl	objects+4, %edi
	movl	objects+16, %ebx
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB13_45
# %bb.42:                               # %b6953
	leal	-1(%edx,%edi), %ecx
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
	calll	func_b6180
	jmp	.LBB13_49
.LBB13_43:                              # %b6956
	.cfi_def_cfa_offset 48
	movl	%edi, (%esp)                    # 4-byte Spill
	leal	-1(%edx,%ecx), %edi
	cmpl	%ebx, %edi
	jbe	.LBB13_46
# %bb.44:                               # %b2735
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	jmp	.LBB13_47
.LBB13_45:                              # %b6954
	.cfi_def_cfa_offset 48
	movl	%ebx, (%esp)                    # 4-byte Spill
	addl	%edx, %edi
	decl	%edi
	jne	.LBB13_48
.LBB13_46:                              # %b6318
	movzbl	console+1, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB13_47:                              # %b6715.preheader
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB13_49
.LBB13_48:                              # %b2729
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	12(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
.LBB13_49:                              # %b6715.preheader
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
.LBB13_50:                              # %b6715.preheader
	movl	$1, %ebp
	jmp	.LBB13_54
.LBB13_51:                              # %b6971
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%edi), %ecx
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
	calll	func_b6180
.LBB13_52:                              # %b6713
                                        #   in Loop: Header=BB13_54 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB13_53:                              # %b6713
                                        #   in Loop: Header=BB13_54 Depth=1
	incl	%ebp
	cmpl	$21, %ebp
	jae	.LBB13_72
.LBB13_54:                              # %b6715
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%ebp,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB13_53
# %bb.55:                               # %b2715
                                        #   in Loop: Header=BB13_54 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB13_57
# %bb.56:                               # %b6224
                                        #   in Loop: Header=BB13_54 Depth=1
	cmpl	%esi, %edx
	ja	.LBB13_53
	jmp	.LBB13_58
	.p2align	4, 0x90
.LBB13_57:                              # %b2716
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	%edx, %esi
	calll	func_b5219
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB13_53
.LBB13_58:                              # %b6712
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %edi
	subl	%eax, %edi
	cmpl	$25, %edi
	jae	.LBB13_62
# %bb.59:                               # %b6975
                                        #   in Loop: Header=BB13_54 Depth=1
	cmpl	%edi, %ecx
	ja	.LBB13_53
# %bb.60:                               # %b6992
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB13_66
# %bb.61:                               # %b6973
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	(%esp), %esi                    # 4-byte Reload
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
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB13_52
.LBB13_62:                              # %b6976
                                        #   in Loop: Header=BB13_54 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB13_53
# %bb.63:                               # %b6991
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %edi
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB13_51
# %bb.64:                               # %b6972
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	addl	%ecx, %edi
	decl	%edi
	jne	.LBB13_71
# %bb.65:                               #   in Loop: Header=BB13_54 Depth=1
	movl	%edi, 12(%esp)                  # 4-byte Spill
	jmp	.LBB13_68
.LBB13_66:                              # %b6974
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	%ebx, 8(%esp)                   # 4-byte Spill
	movl	(%esp), %eax                    # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	cmpl	%edi, %ebx
	ja	.LBB13_69
# %bb.67:                               #   in Loop: Header=BB13_54 Depth=1
	movl	%ebx, 12(%esp)                  # 4-byte Spill
.LBB13_68:                              # %b6175
                                        #   in Loop: Header=BB13_54 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 20(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	20(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB13_70
.LBB13_69:                              # %b3217
                                        #   in Loop: Header=BB13_54 Depth=1
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
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	calll	func_b6700
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
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB13_70:                              # %b6713
                                        #   in Loop: Header=BB13_54 Depth=1
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB13_52
.LBB13_71:                              # %b3211
                                        #   in Loop: Header=BB13_54 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	20(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 36(%esp)                  # 4-byte Spill
	movl	%ecx, 32(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
	jmp	.LBB13_52
.LBB13_72:                              # %b2034
	.cfi_def_cfa_offset 48
	movl	16(%esp), %esi                  # 4-byte Reload
	movl	8(%esi), %eax
	movl	24(%esp), %edi                  # 4-byte Reload
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB13_84
# %bb.73:                               # %b2035
	addl	(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB13_84
# %bb.74:                               # %b2036
	movl	12(%esi), %eax
	movl	12(%edi), %ecx
	movl	4(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB13_84
# %bb.75:                               # %b2037
	addl	4(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB13_84
# %bb.76:                               # %b1041
	calll	func_b1244
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB13_83
# %bb.77:                               # %b5218
	movl	$str45+1, %esi
	.p2align	4, 0x90
.LBB13_78:                              # %b5187
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB13_80
# %bb.79:                               # %b5190
                                        #   in Loop: Header=BB13_78 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB13_81
	.p2align	4, 0x90
.LBB13_80:                              # %b5192
                                        #   in Loop: Header=BB13_78 Depth=1
	.cfi_def_cfa_offset 48
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB13_81:                              # %b5183
                                        #   in Loop: Header=BB13_78 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB13_83
# %bb.82:                               # %b5185
                                        #   in Loop: Header=BB13_78 Depth=1
	incl	%esi
	jmp	.LBB13_78
.LBB13_83:                              # %b4261
	movb	$0, isPlaying
.LBB13_84:                              # %b303
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
	.size	func_b3311, .Lfunc_end13-func_b3311
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5219
	.type	func_b5219,@function
func_b5219:                             # @func_b5219
	.cfi_startproc
# %bb.0:                                # %b5219
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
	je	.LBB14_7
# %bb.1:                                # %b5221
	movl	$str0+1, %esi
	.p2align	4, 0x90
.LBB14_2:                               # %b5208
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_4
# %bb.3:                                # %b5211
                                        #   in Loop: Header=BB14_2 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_5
	.p2align	4, 0x90
.LBB14_4:                               # %b5213
                                        #   in Loop: Header=BB14_2 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_5:                               # %b5213
                                        #   in Loop: Header=BB14_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB14_7
# %bb.6:                                # %b5206
                                        #   in Loop: Header=BB14_2 Depth=1
	incl	%esi
	jmp	.LBB14_2
.LBB14_7:                               # %b1850
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end14:
	.size	func_b5219, .Lfunc_end14-func_b5219
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6201
	.type	func_b6201,@function
func_b6201:                             # @func_b6201
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
	ja	.LBB15_2
# %bb.1:                                # %b6182
	movzbl	console+1, %edi
	movzbl	console, %ebx
	jmp	.LBB15_3
.LBB15_2:                               # %b2240
	movzbl	console+1, %edi
	movzbl	console, %ebx
	movl	%eax, %esi
	.p2align	4, 0x90
.LBB15_3:                               # %b2241
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
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	incl	%ebp
	cmpl	%esi, %ebp
	jbe	.LBB15_3
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
.Lfunc_end15:
	.size	func_b6201, .Lfunc_end15-func_b6201
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6180
	.type	func_b6180,@function
func_b6180:                             # @func_b6180
	.cfi_startproc
# %bb.0:                                # %b6180
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
	ja	.LBB16_3
# %bb.1:                                # %b6182
	movzbl	console+1, %esi
	movzbl	console, %edi
	.p2align	4, 0x90
.LBB16_2:                               # %b2241
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
	calll	func_b6700
	movl	%ebx, %edx
	movl	80(%esp), %ecx
	movl	84(%esp), %eax
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	incl	%ebp
	cmpl	32(%esp), %ebp
	jbe	.LBB16_2
	jmp	.LBB16_5
.LBB16_3:                               # %b2231
	movzbl	console+1, %esi
	movzbl	console, %edi
	.p2align	4, 0x90
.LBB16_4:                               # %b2232
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
	calll	func_b6700
	movl	%ebx, %edx
	movl	80(%esp), %ecx
	movl	84(%esp), %eax
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	incl	%ebp
	je	.LBB16_4
.LBB16_5:                               # %b303
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
	.size	func_b6180, .Lfunc_end16-func_b6180
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6784
	.type	func_b6784,@function
func_b6784:                             # @func_b6784
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
	movl	52(%esp), %eax
	movl	48(%esp), %edx
	movl	ball, %ebp
	movl	gameoverZone, %esi
	movl	%esi, 24(%esp)                  # 4-byte Spill
	movl	%ebp, 16(%esp)                  # 4-byte Spill
	.p2align	4, 0x90
.LBB17_1:                               # %b6784
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	movl	%edx, %eax
	addl	%esi, %eax
	cmpl	%ecx, %eax
	ja	.LBB17_10
# %bb.2:                                # %b6786
                                        #   in Loop: Header=BB17_1 Depth=1
	leal	(,%eax,8), %esi
	movl	objects+20(%esi,%esi,2), %ebx
	movl	$20, %ecx
	movl	$1, %edx
	testb	$16, %bl
	je	.LBB17_1
# %bb.3:                                # %b3230
                                        #   in Loop: Header=BB17_1 Depth=1
	testb	$1, %bl
	je	.LBB17_1
# %bb.4:                                # %b3701
                                        #   in Loop: Header=BB17_1 Depth=1
	leal	objects(%esi,%esi,2), %esi
	cmpl	%ebp, %esi
	je	.LBB17_1
# %bb.5:                                # %b3703
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	8(%esi), %edi
	movl	8(%ebp), %ebx
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	jae	.LBB17_1
# %bb.6:                                # %b3704
                                        #   in Loop: Header=BB17_1 Depth=1
	addl	(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB17_1
# %bb.7:                                # %b3705
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	12(%esi), %edi
	movl	12(%ebp), %ebx
	movl	16(%esp), %ebp                  # 4-byte Reload
	movl	4(%ebp), %ebp
	addl	%ebx, %ebp
	cmpl	%ebp, %edi
	movl	16(%esp), %ebp                  # 4-byte Reload
	jae	.LBB17_1
# %bb.8:                                # %b3706
                                        #   in Loop: Header=BB17_1 Depth=1
	addl	4(%esi), %edi
	cmpl	%ebx, %edi
	jbe	.LBB17_1
# %bb.9:                                # %b3707
                                        #   in Loop: Header=BB17_1 Depth=1
	andb	$-17, 20(%esi)
	decl	bricksLeft
	jmp	.LBB17_1
.LBB17_10:                              # %b2720
	testb	$16, objects+20
	je	.LBB17_30
# %bb.11:                               # %b4687
	movl	objects+8, %ebp
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB17_13
# %bb.12:                               # %b6356
	cmpl	%esi, %ebp
	jbe	.LBB17_14
	jmp	.LBB17_30
.LBB17_13:                              # %b4688
	calll	func_b5219
	movl	%eax, %esi
	cmpl	%eax, %ebp
	ja	.LBB17_30
.LBB17_14:                              # %b6783
	movl	objects+12, %ebx
	movzbl	console, %eax
	movzbl	console+2, %edi
	subl	%eax, %edi
	cmpl	$25, %edi
	jae	.LBB17_18
# %bb.15:                               # %b6957
	cmpl	%edi, %ebx
	ja	.LBB17_30
# %bb.16:                               # %b6982
	movl	objects, %eax
	movl	objects+4, %ecx
	movl	objects+16, %edx
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB17_21
# %bb.17:                               # %b6955
	leal	-1(%ebx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB17_29
.LBB17_18:                              # %b6958
	.cfi_def_cfa_offset 48
	testl	%ebx, %ebx
	jne	.LBB17_30
# %bb.19:                               # %b6981
	movl	objects, %eax
	movl	objects+4, %ecx
	movl	objects+16, %edx
	leal	-1(%ebp,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB17_23
# %bb.20:                               # %b6953
	leal	-1(%ebx,%ecx), %ecx
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6180
	jmp	.LBB17_29
.LBB17_21:                              # %b6956
	.cfi_def_cfa_offset 48
	leal	-1(%ebx,%ecx), %eax
	cmpl	%edi, %eax
	ja	.LBB17_26
# %bb.22:
	movl	%eax, 4(%esp)                   # 4-byte Spill
	jmp	.LBB17_25
.LBB17_23:                              # %b6954
	addl	%ebx, %ecx
	decl	%ecx
	jne	.LBB17_28
# %bb.24:
	movl	%ecx, 4(%esp)                   # 4-byte Spill
.LBB17_25:                              # %b6318
	movl	%edx, (%esp)                    # 4-byte Spill
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 8(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB17_27
.LBB17_26:                              # %b2735
	.cfi_def_cfa_offset 48
	movzbl	console+1, %ecx
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 32(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB17_27:                              # %b6715.preheader
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB17_29
.LBB17_28:                              # %b2729
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 32(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	8(%esp)                         # 4-byte Folded Reload
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
	calll	func_b6701
.LBB17_29:                              # %b6715.preheader
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
.LBB17_30:                              # %b6715.preheader
	movl	$1, %ebp
	jmp	.LBB17_34
.LBB17_31:                              # %b6971
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%edi), %ecx
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
	calll	func_b6180
.LBB17_32:                              # %b6713
                                        #   in Loop: Header=BB17_34 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	.p2align	4, 0x90
.LBB17_33:                              # %b6713
                                        #   in Loop: Header=BB17_34 Depth=1
	incl	%ebp
	cmpl	$21, %ebp
	jae	.LBB17_52
.LBB17_34:                              # %b6715
                                        # =>This Inner Loop Header: Depth=1
	leal	(,%ebp,8), %eax
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB17_33
# %bb.35:                               # %b2715
                                        #   in Loop: Header=BB17_34 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edx
	movzbl	console+1, %eax
	movzbl	console+3, %esi
	subl	%eax, %esi
	cmpl	$80, %esi
	jae	.LBB17_37
# %bb.36:                               # %b6224
                                        #   in Loop: Header=BB17_34 Depth=1
	cmpl	%esi, %edx
	ja	.LBB17_33
	jmp	.LBB17_38
	.p2align	4, 0x90
.LBB17_37:                              # %b2716
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	%edx, %esi
	calll	func_b5219
	movl	%esi, %edx
	movl	%eax, %esi
	cmpl	%eax, %edx
	ja	.LBB17_33
.LBB17_38:                              # %b6712
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	objects+12(%ebx), %ecx
	movzbl	console, %eax
	movzbl	console+2, %edi
	subl	%eax, %edi
	cmpl	$25, %edi
	jae	.LBB17_42
# %bb.39:                               # %b6975
                                        #   in Loop: Header=BB17_34 Depth=1
	cmpl	%edi, %ecx
	ja	.LBB17_33
# %bb.40:                               # %b6992
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %ecx
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB17_46
# %bb.41:                               # %b6973
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	(%esp), %esi                    # 4-byte Reload
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
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	jmp	.LBB17_32
.LBB17_42:                              # %b6976
                                        #   in Loop: Header=BB17_34 Depth=1
	.cfi_def_cfa_offset 48
	testl	%ecx, %ecx
	jne	.LBB17_33
# %bb.43:                               # %b6991
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %edi
	movl	objects+16(%ebx), %ebx
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	jbe	.LBB17_31
# %bb.44:                               # %b6972
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	%ebx, 4(%esp)                   # 4-byte Spill
	addl	%ecx, %edi
	decl	%edi
	jne	.LBB17_51
# %bb.45:                               #   in Loop: Header=BB17_34 Depth=1
	movl	%edi, 12(%esp)                  # 4-byte Spill
	jmp	.LBB17_48
.LBB17_46:                              # %b6974
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	%ebx, 4(%esp)                   # 4-byte Spill
	movl	(%esp), %eax                    # 4-byte Reload
	leal	-1(%eax,%ecx), %ebx
	movl	%eax, %ecx
	cmpl	%edi, %ebx
	ja	.LBB17_49
# %bb.47:                               #   in Loop: Header=BB17_34 Depth=1
	movl	%ebx, 12(%esp)                  # 4-byte Spill
.LBB17_48:                              # %b6175
                                        #   in Loop: Header=BB17_34 Depth=1
	movl	%ecx, (%esp)                    # 4-byte Spill
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 20(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	16(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	jmp	.LBB17_50
.LBB17_49:                              # %b3217
                                        #   in Loop: Header=BB17_34 Depth=1
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
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	12(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
.LBB17_50:                              # %b6713
                                        #   in Loop: Header=BB17_34 Depth=1
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB17_32
.LBB17_51:                              # %b3211
                                        #   in Loop: Header=BB17_34 Depth=1
	.cfi_def_cfa_offset 48
	movzbl	console+1, %edi
	movzbl	console, %eax
	movl	%eax, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	movl	16(%esp), %ebx                  # 4-byte Reload
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	movl	%edx, 40(%esp)                  # 4-byte Spill
	movl	%ecx, 32(%esp)                  # 4-byte Spill
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
	jmp	.LBB17_32
.LBB17_52:                              # %b2034
	.cfi_def_cfa_offset 48
	movl	16(%esp), %esi                  # 4-byte Reload
	movl	8(%esi), %eax
	movl	24(%esp), %edi                  # 4-byte Reload
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB17_64
# %bb.53:                               # %b2035
	addl	(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB17_64
# %bb.54:                               # %b2036
	movl	12(%esi), %eax
	movl	12(%edi), %ecx
	movl	4(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB17_64
# %bb.55:                               # %b2037
	addl	4(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB17_64
# %bb.56:                               # %b1041
	calll	func_b1244
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB17_63
# %bb.57:                               # %b5218
	movl	$str45+1, %esi
	.p2align	4, 0x90
.LBB17_58:                              # %b5187
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB17_60
# %bb.59:                               # %b5190
                                        #   in Loop: Header=BB17_58 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB17_61
	.p2align	4, 0x90
.LBB17_60:                              # %b5192
                                        #   in Loop: Header=BB17_58 Depth=1
	.cfi_def_cfa_offset 48
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB17_61:                              # %b5183
                                        #   in Loop: Header=BB17_58 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB17_63
# %bb.62:                               # %b5185
                                        #   in Loop: Header=BB17_58 Depth=1
	incl	%esi
	jmp	.LBB17_58
.LBB17_63:                              # %b4261
	movb	$0, isPlaying
.LBB17_64:                              # %b303
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
.Lfunc_end17:
	.size	func_b6784, .Lfunc_end17-func_b6784
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6700
	.type	func_b6700,@function
func_b6700:                             # @func_b6700
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
	jmp	.LBB18_1
	.p2align	4, 0x90
.LBB18_4:                               # %b6695
                                        #   in Loop: Header=BB18_1 Depth=1
	incl	%esi
	movl	$79, %ebp
	cmpl	36(%esp), %esi
	ja	.LBB18_6
.LBB18_1:                               # %b6700.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_2 Depth 2
	leal	(%edi,%esi), %ebx
	movl	(%esp), %edx                    # 4-byte Reload
	leal	753664(%edx,%ebx,2), %ebx
	.p2align	4, 0x90
.LBB18_2:                               # %b6700
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%edi,%esi), %edx
	cmpl	%ebp, %edx
	ja	.LBB18_4
# %bb.3:                                # %b6690
                                        #   in Loop: Header=BB18_2 Depth=2
	cmpl	$25, %eax
	jae	.LBB18_4
# %bb.5:                                # %b6688
                                        #   in Loop: Header=BB18_2 Depth=2
	movw	%cx, (%ebx)
	incl	%esi
	addl	$2, %ebx
	movl	$79, %ebp
	cmpl	36(%esp), %esi
	jbe	.LBB18_2
.LBB18_6:                               # %b303
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
.Lfunc_end18:
	.size	func_b6700, .Lfunc_end18-func_b6700
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6709
	.type	func_b6709,@function
func_b6709:                             # @func_b6709
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
.LBB19_1:                               # %b6709
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	movl	%eax, %ebx
	addl	%ecx, %ebx
	cmpl	%edi, %ebx
	ja	.LBB19_3
# %bb.2:                                # %b2241
                                        #   in Loop: Header=BB19_1 Depth=1
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
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movl	$1, %eax
	jmp	.LBB19_1
.LBB19_3:                               # %b303
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
.Lfunc_end19:
	.size	func_b6709, .Lfunc_end19-func_b6709
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6701
	.type	func_b6701,@function
func_b6701:                             # @func_b6701
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
.LBB20_1:                               # %b6701
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB20_3
# %bb.2:                                # %b2232
                                        #   in Loop: Header=BB20_1 Depth=1
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
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB20_1
.LBB20_3:                               # %b303
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
	.size	func_b6701, .Lfunc_end20-func_b6701
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6713
	.type	func_b6713,@function
func_b6713:                             # @func_b6713
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
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	.cfi_offset %esi, -20
	.cfi_offset %edi, -16
	.cfi_offset %ebx, -12
	.cfi_offset %ebp, -8
	movl	72(%esp), %ecx
	movl	68(%esp), %ebp
	movl	64(%esp), %edx
	movl	gameoverZone, %eax
	movl	%eax, 36(%esp)                  # 4-byte Spill
	movl	ball, %eax
	movl	%eax, 40(%esp)                  # 4-byte Spill
	.p2align	4, 0x90
.LBB21_1:                               # %b6713
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movl	%edx, %ebp
	addl	%eax, %ebp
	cmpl	%ecx, %ebp
	ja	.LBB21_9
# %bb.2:                                # %b6715
                                        #   in Loop: Header=BB21_1 Depth=1
	leal	(,%ebp,8), %eax
	movl	$20, %ecx
	movl	$1, %edx
	testb	$16, objects+20(%eax,%eax,2)
	je	.LBB21_1
# %bb.3:                                # %b2715
                                        #   in Loop: Header=BB21_1 Depth=1
	leal	(%eax,%eax,2), %ebx
	movl	objects+8(%ebx), %edi
	movzbl	console+1, %esi
	movzbl	console+3, %eax
	subl	%esi, %eax
	cmpl	$80, %eax
	movl	%edi, 28(%esp)                  # 4-byte Spill
	jb	.LBB21_4
# %bb.12:                               # %b2716
                                        #   in Loop: Header=BB21_1 Depth=1
	calll	func_b5219
	movl	$1, %edx
	movl	$20, %ecx
.LBB21_4:                               # %b6224
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	%eax, %edi
	ja	.LBB21_1
# %bb.5:                                # %b6712
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	%eax, 32(%esp)                  # 4-byte Spill
	movl	objects+12(%ebx), %edi
	movzbl	console, %esi
	movzbl	console+2, %eax
	subl	%esi, %eax
	cmpl	$25, %eax
	jae	.LBB21_17
# %bb.6:                                # %b6975
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	%eax, %edi
	movl	32(%esp), %esi                  # 4-byte Reload
	ja	.LBB21_1
# %bb.7:                                # %b6992
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	%eax, 16(%esp)                  # 4-byte Spill
	movl	%edi, %ecx
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %edi
	movl	objects+16(%ebx), %ebx
	movl	28(%esp), %edx                  # 4-byte Reload
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB21_20
# %bb.8:                                # %b6973
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%edi), %ecx
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
	pushl	40(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	calll	func_b6201
	movl	$1, %edx
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movl	$20, %ecx
	jmp	.LBB21_1
.LBB21_17:                              # %b6976
                                        #   in Loop: Header=BB21_1 Depth=1
	testl	%edi, %edi
	movl	32(%esp), %esi                  # 4-byte Reload
	jne	.LBB21_1
# %bb.18:                               # %b6991
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	%edi, %ecx
	movl	objects(%ebx), %eax
	movl	objects+4(%ebx), %edi
	movl	objects+16(%ebx), %ebx
	movl	28(%esp), %edx                  # 4-byte Reload
	leal	-1(%edx,%eax), %eax
	cmpl	%esi, %eax
	ja	.LBB21_22
# %bb.19:                               # %b6971
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	%ecx, %esi
	leal	-1(%ecx,%edi), %ecx
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
	calll	func_b6180
	movl	$1, %edx
	movl	$20, %ecx
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	jmp	.LBB21_1
.LBB21_20:                              # %b6974
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	%edx, %eax
	movl	%ecx, %edx
	movl	%ecx, 24(%esp)                  # 4-byte Spill
	leal	-1(%ecx,%edi), %edx
	movl	16(%esp), %edi                  # 4-byte Reload
	movl	%edx, 12(%esp)                  # 4-byte Spill
	cmpl	%edi, %edx
	jbe	.LBB21_21
# %bb.27:                               # %b3217
                                        #   in Loop: Header=BB21_1 Depth=1
	movzbl	console+1, %edx
	movl	%edx, 20(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	44(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	jmp	.LBB21_28
.LBB21_22:                              # %b6972
                                        #   in Loop: Header=BB21_1 Depth=1
	.cfi_def_cfa_offset 64
	movl	%edx, %eax
	movl	%edi, %edx
	addl	%ecx, %edx
	decl	%edx
	movl	%edx, 12(%esp)                  # 4-byte Spill
	jne	.LBB21_23
.LBB21_21:                              # %b6175
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	%ebx, 16(%esp)                  # 4-byte Spill
	movzbl	console+1, %edi
	movzbl	console, %edx
	movl	%edx, 20(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	movl	%ecx, 32(%esp)                  # 4-byte Spill
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	movl	%eax, %ebx
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	32(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
.LBB21_28:                              # %b6713
                                        #   in Loop: Header=BB21_1 Depth=1
	pushl	48(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6709
	jmp	.LBB21_29
.LBB21_23:                              # %b3211
                                        #   in Loop: Header=BB21_1 Depth=1
	.cfi_def_cfa_offset 64
	movl	%ecx, %edi
	movzbl	console+1, %edx
	movl	%edx, 20(%esp)                  # 4-byte Spill
	movzbl	console, %ecx
	movl	%ecx, 12(%esp)                  # 4-byte Spill
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$79
	.cfi_adjust_cfa_offset 4
	movl	%ebx, 40(%esp)                  # 4-byte Spill
	movl	%eax, %ebx
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b6700
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	16(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	24(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6701
.LBB21_29:                              # %b6713
                                        #   in Loop: Header=BB21_1 Depth=1
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movl	$20, %ecx
	movl	$1, %edx
	jmp	.LBB21_1
.LBB21_9:                               # %b2034
	movl	40(%esp), %esi                  # 4-byte Reload
	movl	8(%esi), %eax
	movl	36(%esp), %edi                  # 4-byte Reload
	movl	8(%edi), %ecx
	movl	(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB21_11
# %bb.10:                               # %b2035
	addl	(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB21_11
# %bb.13:                               # %b2036
	movl	12(%esi), %eax
	movl	12(%edi), %ecx
	movl	4(%edi), %edx
	addl	%ecx, %edx
	cmpl	%edx, %eax
	jae	.LBB21_11
# %bb.14:                               # %b2037
	addl	4(%esi), %eax
	cmpl	%ecx, %eax
	jbe	.LBB21_11
# %bb.15:                               # %b1041
	calll	func_b1244
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB21_16
# %bb.24:                               # %b5218
	movl	$str45+1, %esi
	.p2align	4, 0x90
.LBB21_25:                              # %b5187
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_30
# %bb.26:                               # %b5190
                                        #   in Loop: Header=BB21_25 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_31
	.p2align	4, 0x90
.LBB21_30:                              # %b5192
                                        #   in Loop: Header=BB21_25 Depth=1
	.cfi_def_cfa_offset 64
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_31:                              # %b5183
                                        #   in Loop: Header=BB21_25 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB21_16
# %bb.32:                               # %b5185
                                        #   in Loop: Header=BB21_25 Depth=1
	incl	%esi
	jmp	.LBB21_25
.LBB21_16:                              # %b4261
	movb	$0, isPlaying
.LBB21_11:                              # %b303
	addl	$44, %esp
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
	.size	func_b6713, .Lfunc_end21-func_b6713
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5183
	.type	func_b5183,@function
func_b5183:                             # @func_b5183
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
	movl	16(%esp), %esi
	jmp	.LBB22_1
	.p2align	4, 0x90
.LBB22_4:                               # %b5192
                                        #   in Loop: Header=BB22_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_5:                               # %b5183
                                        #   in Loop: Header=BB22_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_1:                               # %b5183
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB22_6
# %bb.2:                                # %b5185
                                        #   in Loop: Header=BB22_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%esi
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_4
# %bb.3:                                # %b5190
                                        #   in Loop: Header=BB22_1 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_5
.LBB22_6:                               # %b4261
	.cfi_def_cfa_offset 16
	movb	$0, isPlaying
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end22:
	.size	func_b5183, .Lfunc_end22-func_b5183
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1685
	.type	func_b1685,@function
func_b1685:                             # @func_b1685
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
.LBB23_1:                               # %b1685
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, (%esi)
	incl	%edx
	addl	$2, %esi
	cmpl	%ecx, %edx
	jbe	.LBB23_1
# %bb.2:                                # %b303
	popl	%esi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end23:
	.size	func_b1685, .Lfunc_end23-func_b1685
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
	movzbl	str57, %ebx
	testl	%ebx, %ebx
	je	.LBB24_1
# %bb.4:                                # %b5179
	movl	$str57+1, %esi
	.p2align	4, 0x90
.LBB24_5:                               # %b5171
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_11
# %bb.6:                                # %b5174
                                        #   in Loop: Header=BB24_5 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_12
	.p2align	4, 0x90
.LBB24_11:                              # %b5176
                                        #   in Loop: Header=BB24_5 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_12:                              # %b5167
                                        #   in Loop: Header=BB24_5 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_1
# %bb.13:                               # %b5169
                                        #   in Loop: Header=BB24_5 Depth=1
	incl	%esi
	jmp	.LBB24_5
.LBB24_1:                               # %b1842
	movl	20(%esp), %esi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str58, %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.8:                                # %b5166
	movl	$str58+1, %edi
	.p2align	4, 0x90
.LBB24_9:                               # %b5158
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_14
# %bb.10:                               # %b5161
                                        #   in Loop: Header=BB24_9 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_15
	.p2align	4, 0x90
.LBB24_14:                              # %b5163
                                        #   in Loop: Header=BB24_9 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_15:                              # %b5154
                                        #   in Loop: Header=BB24_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.16:                               # %b5156
                                        #   in Loop: Header=BB24_9 Depth=1
	incl	%edi
	jmp	.LBB24_9
.LBB24_2:                               # %b1838
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str59, %eax
	testl	%eax, %eax
	je	.LBB24_3
# %bb.7:                                # %b5153
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str59+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB24_3:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end24:
	.size	unhandled, .Lfunc_end24-unhandled
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6647
	.type	func_b6647,@function
func_b6647:                             # @func_b6647
	.cfi_startproc
# %bb.0:                                # %b6647
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
	ja	.LBB25_2
# %bb.1:                                # %b6649
	movl	28(%esp), %ebx
	shrl	$4, %ebx
	je	.LBB25_2
	.p2align	4, 0x90
.LBB25_5:                               # %b3196
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
	calll	func_b1638
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%edi)
	leal	1(%edi), %eax
	cmpl	$32, %eax
	jae	.LBB25_7
# %bb.6:                                # %b6644
                                        #   in Loop: Header=BB25_5 Depth=1
	shrl	$4, %ebx
	jne	.LBB25_5
.LBB25_7:                               # %b3197
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6631
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB25_8:                               # %b3194
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%edi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%edi
	jns	.LBB25_8
	jmp	.LBB25_9
.LBB25_2:                               # %b6638
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB25_4
# %bb.3:                                # %b6640
	movl	$1, %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
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
	calll	func_b6631
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_4:                               # %b3433
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_9:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end25:
	.size	func_b6647, .Lfunc_end25-func_b6647
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5150
	.type	func_b5150,@function
func_b5150:                             # @func_b5150
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
.LBB26_1:                               # %b5150
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB26_3
# %bb.2:                                # %b6164
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_4
	.p2align	4, 0x90
.LBB26_3:                               # %b6165
                                        #   in Loop: Header=BB26_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_4:                               # %b5141
                                        #   in Loop: Header=BB26_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB26_5
# %bb.6:                                # %b5143
                                        #   in Loop: Header=BB26_1 Depth=1
	incl	%esi
	jmp	.LBB26_1
.LBB26_5:                               # %b303
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end26:
	.size	func_b5150, .Lfunc_end26-func_b5150
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1997
	.type	func_b1997,@function
func_b1997:                             # @func_b1997
	.cfi_startproc
# %bb.0:                                # %b1997
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_12
# %bb.1:                                # %b1985
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	console+4, %eax
	cmpl	$13, %ebx
	je	.LBB27_2
# %bb.8:                                # %b1993
	cmpl	$10, %ebx
	je	.LBB27_2
# %bb.9:                                # %b1995
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
	ja	.LBB27_2
# %bb.10:                               # %b6622
	movb	%cl, console+5
	jmp	.LBB27_11
.LBB27_12:                              # %c675
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
	jmp	func_b1988                      # TAILCALL
.LBB27_2:                               # %b1990
	.cfi_def_cfa_offset 32
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB27_4
# %bb.3:                                # %b6618
	movb	%al, console+4
	jmp	.LBB27_11
.LBB27_4:                               # %b1992
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB27_6
	.p2align	4, 0x90
.LBB27_5:                               # %b6609
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
	calll	func_b1610
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB27_5
.LBB27_6:                               # %b1608.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB27_7:                               # %b1608
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB27_7
.LBB27_11:                              # %b303
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
.Lfunc_end27:
	.size	func_b1997, .Lfunc_end27-func_b1997
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6631
	.type	func_b6631,@function
func_b6631:                             # @func_b6631
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
.LBB28_1:                               # %b6631
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB28_3
# %bb.2:                                # %b6633
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	%esi, (%esp)
	calll	func_b1997
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB28_1
.LBB28_3:                               # %b303
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end28:
	.size	func_b6631, .Lfunc_end28-func_b6631
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
	movl	$objects+120, gameoverZone
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
	movb	$1, isPlaying
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
	calll	func_b4614
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	$796679213, spinner             # imm = 0x2F7C5C2D
	movb	$0, spinpos
	movb	$55, pos
	movb	$1, dir
	movl	$15, bricksLeft
	movb	$1, headingLeft
	movb	$1, headingTop
	movb	$0, itoaBuf
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$itoaBuf+1
	.cfi_adjust_cfa_offset 4
	calll	func_b4621
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$32, console+6
	calll	func_b1244
	movzbl	str47, %edi
	testl	%edi, %edi
	je	.LBB29_7
# %bb.1:                                # %b6028
	movl	$str47+1, %esi
	.p2align	4, 0x90
.LBB29_2:                               # %b6020
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB29_4
# %bb.3:                                # %b6023
                                        #   in Loop: Header=BB29_2 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_5
	.p2align	4, 0x90
.LBB29_4:                               # %b6025
                                        #   in Loop: Header=BB29_2 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_5:                               # %b6025
                                        #   in Loop: Header=BB29_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB29_7
# %bb.6:                                # %b6018
                                        #   in Loop: Header=BB29_2 Depth=1
	incl	%esi
	jmp	.LBB29_2
.LBB29_7:                               # %b1968
	movl	$756482305, console             # imm = 0x2D170101
	movw	$257, console+4                 # imm = 0x101
	movb	$15, console+6
	calll	func_b1244
	movzbl	str11, %eax
	testl	%eax, %eax
	je	.LBB29_9
# %bb.8:                                # %b6013
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str11+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b6010
	jmp	.LBB29_57
.LBB29_9:                               # %b3065
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
	calll	func_b5339
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str13, %eax
	testl	%eax, %eax
	je	.LBB29_11
# %bb.10:                               # %b5995
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str13+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5992
	jmp	.LBB29_57
.LBB29_11:                              # %b3066
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
	calll	func_b5477
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB29_13
# %bb.12:                               # %b5977
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5974
	jmp	.LBB29_57
.LBB29_13:                              # %b3067
	.cfi_def_cfa_offset 32
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB29_15
# %bb.14:                               # %b5896
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5890
	jmp	.LBB29_33
.LBB29_15:                              # %b5873
	.cfi_def_cfa_offset 32
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB29_17
# %bb.16:                               # %b5875
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_17:                              # %b5861
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB29_20
# %bb.18:                               # %b5872
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB29_27
# %bb.19:                               # %b5867
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_28
.LBB29_20:                              # %b5854
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB29_24
# %bb.21:                               # %b6469
	leal	1(%esi), %edi
.LBB29_22:                              # %b5850
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB29_24
# %bb.23:                               # %b5848
                                        #   in Loop: Header=BB29_22 Depth=1
	incl	%edi
	jmp	.LBB29_22
.LBB29_24:                              # %b5837
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB29_29
# %bb.25:                               # %b5839
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_31
# %bb.26:                               # %b5843
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_32
.LBB29_27:                              # %b5869
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_28:                              # %b5869
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5766
	jmp	.LBB29_33
.LBB29_29:                              # %b3627
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB29_34
# %bb.30:                               # %b5828
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	jmp	.LBB29_33
.LBB29_31:                              # %b5845
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_32:                              # %b5845
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5726
.LBB29_33:                              # %b3628
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_34:                              # %b3628
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB29_37
# %bb.35:                               # %b5893
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB29_42
# %bb.36:                               # %b5820
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_43
.LBB29_37:                              # %b5788
	.cfi_def_cfa_offset 32
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB29_39
# %bb.38:                               # %b5790
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_39:                              # %b5776
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB29_44
# %bb.40:                               # %b5787
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB29_51
# %bb.41:                               # %b5782
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_52
.LBB29_42:                              # %b5822
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_43:                              # %b5822
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5804
	jmp	.LBB29_57
.LBB29_44:                              # %b5753
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB29_48
# %bb.45:                               # %b6468
	leal	1(%esi), %edi
.LBB29_46:                              # %b5749
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB29_48
# %bb.47:                               # %b5747
                                        #   in Loop: Header=BB29_46 Depth=1
	incl	%edi
	jmp	.LBB29_46
.LBB29_48:                              # %b5736
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB29_53
# %bb.49:                               # %b5738
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_55
# %bb.50:                               # %b5742
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_56
.LBB29_51:                              # %b5784
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_52:                              # %b5784
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5766
	jmp	.LBB29_57
.LBB29_53:                              # %b3633
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB29_58
# %bb.54:                               # %b5720
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	jmp	.LBB29_57
.LBB29_55:                              # %b5744
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_56:                              # %b5744
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5726
.LBB29_57:                              # %b5995
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_58:                              # %b5995
	movl	4096, %esi
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	.LBB29_63
# %bb.59:
	addl	$4, %esi
	movl	%ecx, %eax
	negl	%eax
	addl	$12, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB29_60:                              # %b5715
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %ebx
	je	.LBB29_62
# %bb.61:                               # %b5713
                                        #   in Loop: Header=BB29_60 Depth=1
	decl	%ebx
	addl	$12, %esi
	cmpl	%ebx, %eax
	jne	.LBB29_60
	jmp	.LBB29_63
.LBB29_62:                              # %b5650
	movl	$1, %eax
	subl	%ecx, %eax
	cmpl	%ebx, %eax
	jne	.LBB29_70
.LBB29_63:                              # %b5502
	movzbl	str54, %edi
	testl	%edi, %edi
	je	.LBB29_117
# %bb.64:                               # %b5504
	movl	$str54+1, %esi
	.p2align	4, 0x90
.LBB29_65:                              # %b5496
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB29_67
# %bb.66:                               # %b5499
                                        #   in Loop: Header=BB29_65 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_68
	.p2align	4, 0x90
.LBB29_67:                              # %b5501
                                        #   in Loop: Header=BB29_65 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_68:                              # %b5501
                                        #   in Loop: Header=BB29_65 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB29_117
# %bb.69:                               # %b5494
                                        #   in Loop: Header=BB29_65 Depth=1
	incl	%esi
	jmp	.LBB29_65
.LBB29_70:                              # %b5652
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	str49, %edi
	testl	%edi, %edi
	je	.LBB29_77
# %bb.71:                               # %b5704
	movl	$str49+1, %ebp
	.p2align	4, 0x90
.LBB29_72:                              # %b5705
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB29_74
# %bb.73:                               # %b5706
                                        #   in Loop: Header=BB29_72 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_75
	.p2align	4, 0x90
.LBB29_74:                              # %b5712
                                        #   in Loop: Header=BB29_72 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_75:                              # %b5712
                                        #   in Loop: Header=BB29_72 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebp), %edi
	testl	%edi, %edi
	je	.LBB29_77
# %bb.76:                               # %b5711
                                        #   in Loop: Header=BB29_72 Depth=1
	incl	%ebp
	jmp	.LBB29_72
.LBB29_77:                              # %b5658
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-2(%eax,%ebx), %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b5284
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str50, %ebp
	testl	%ebp, %ebp
	je	.LBB29_84
# %bb.78:                               # %b5695
	movl	$str50+1, %ebx
	.p2align	4, 0x90
.LBB29_79:                              # %b5696
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB29_81
# %bb.80:                               # %b5697
                                        #   in Loop: Header=BB29_79 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_82
	.p2align	4, 0x90
.LBB29_81:                              # %b5703
                                        #   in Loop: Header=BB29_79 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_82:                              # %b5703
                                        #   in Loop: Header=BB29_79 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB29_84
# %bb.83:                               # %b5702
                                        #   in Loop: Header=BB29_79 Depth=1
	incl	%ebx
	jmp	.LBB29_79
.LBB29_84:                              # %b5694
	testl	%edi, %edi
	je	.LBB29_101
# %bb.85:                               # %b6467
	leal	12(%esi), %edi
	movzbl	str51, %ebp
	testl	%ebp, %ebp
	je	.LBB29_92
# %bb.86:                               # %b6938
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str51+1, %ebx
	.p2align	4, 0x90
.LBB29_87:                              # %b6938
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB29_89
# %bb.88:                               # %b6988
                                        #   in Loop: Header=BB29_87 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_90
	.p2align	4, 0x90
.LBB29_89:                              # %b6989
                                        #   in Loop: Header=BB29_87 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_90:                              # %b6989
                                        #   in Loop: Header=BB29_87 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB29_92
# %bb.91:                               # %b6996
                                        #   in Loop: Header=BB29_87 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB29_87
.LBB29_92:                              # %b6937
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5284
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str52, %ebp
	testl	%ebp, %ebp
	je	.LBB29_99
# %bb.93:                               # %b6970
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str52+1, %ebx
	.p2align	4, 0x90
.LBB29_94:                              # %b6970
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB29_96
# %bb.95:                               # %b6997
                                        #   in Loop: Header=BB29_94 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_97
	.p2align	4, 0x90
.LBB29_96:                              # %b6998
                                        #   in Loop: Header=BB29_94 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_97:                              # %b6998
                                        #   in Loop: Header=BB29_94 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB29_99
# %bb.98:                               # %b7001
                                        #   in Loop: Header=BB29_94 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB29_94
.LBB29_99:                              # %b6969
	movl	8(%esi), %esi
	movzbl	str55, %eax
	testl	%eax, %eax
	je	.LBB29_108
# %bb.100:                              # %b5577
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str55+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5571
	jmp	.LBB29_110
.LBB29_101:                             # %b5515
	.cfi_def_cfa_offset 32
	movzbl	str53, %edi
	testl	%edi, %edi
	je	.LBB29_117
# %bb.102:                              # %b5517
	movl	$str53+1, %esi
	.p2align	4, 0x90
.LBB29_103:                             # %b5509
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB29_105
# %bb.104:                              # %b5512
                                        #   in Loop: Header=BB29_103 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_106
	.p2align	4, 0x90
.LBB29_105:                             # %b5514
                                        #   in Loop: Header=BB29_103 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_106:                             # %b5514
                                        #   in Loop: Header=BB29_103 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB29_117
# %bb.107:                              # %b5507
                                        #   in Loop: Header=BB29_103 Depth=1
	incl	%esi
	jmp	.LBB29_103
.LBB29_108:                             # %b2873
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %eax
	testl	%eax, %eax
	je	.LBB29_121
# %bb.109:                              # %b6936
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str56+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5522
.LBB29_110:                             # %b6936
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_111:                             # %b6936
	movl	8(%edi), %esi
	movzbl	str55, %eax
	testl	%eax, %eax
	je	.LBB29_113
# %bb.112:                              # %b5574
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str55+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5553
	jmp	.LBB29_115
.LBB29_113:                             # %b2861
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %eax
	testl	%eax, %eax
	je	.LBB29_122
# %bb.114:                              # %b6933
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str56+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5532
.LBB29_115:                             # %b2615
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_116:                             # %b2615
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
.LBB29_117:                             # %b5489
	movzbl	str48, %eax
	testl	%eax, %eax
	je	.LBB29_119
# %bb.118:                              # %b5491
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str48+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB29_120
.LBB29_119:                             # %b303
	.cfi_def_cfa_offset 32
	addl	$12, %esp
	.cfi_def_cfa_offset 20
.LBB29_120:                             # %b303
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.LBB29_121:                             # %b6935
	.cfi_def_cfa_offset 32
	movl	%esi, users+52
	jmp	.LBB29_111
.LBB29_122:                             # %b6932
	movl	%esi, users+124
	jmp	.LBB29_116
.Lfunc_end29:
	.size	kernel, .Lfunc_end29-kernel
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4614
	.type	func_b4614,@function
func_b4614:                             # @func_b4614
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
	movl	$1717986919, %esi               # imm = 0x66666667
	movl	$-858993459, %ebp               # imm = 0xCCCCCCCD
	jmp	.LBB30_1
	.p2align	4, 0x90
.LBB30_3:                               # %b6431
                                        #   in Loop: Header=BB30_1 Depth=1
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
.LBB30_4:                               # %b5107
                                        #   in Loop: Header=BB30_1 Depth=1
	calll	func_b4426
	addl	$64, %esp
	.cfi_adjust_cfa_offset -64
.LBB30_5:                               # %b5107
                                        #   in Loop: Header=BB30_1 Depth=1
	incl	%edi
	addl	$24, %ebx
.LBB30_1:                               # %b4614
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$20, %edi
	ja	.LBB30_19
# %bb.2:                                # %b6070
                                        #   in Loop: Header=BB30_1 Depth=1
	testl	%edi, %edi
	je	.LBB30_3
# %bb.7:                                # %b6432
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$1, %edi
	jne	.LBB30_8
# %bb.6:                                # %b6917
                                        #   in Loop: Header=BB30_1 Depth=1
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
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_8:                               # %b6918
                                        #   in Loop: Header=BB30_1 Depth=1
	.cfi_def_cfa_offset 32
	xorl	%edx, %edx
	movl	$25, %eax
	movl	$1, %ecx
	cmpl	$2, %edi
	je	.LBB30_9
# %bb.10:                               # %b6967
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$44, %edx
	cmpl	$3, %edi
	je	.LBB30_9
# %bb.11:                               # %b6987
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$4, %edi
	jne	.LBB30_13
# %bb.12:                               #   in Loop: Header=BB30_1 Depth=1
	movl	$1, %eax
	movl	$44, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB30_9:                               # %b6966
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	%ecx, (%ebx)
	movl	%eax, 4(%ebx)
	movl	%edx, 8(%ebx)
	movl	$0, 12(%ebx)
	movl	$112, 16(%ebx)
	movl	$18, 20(%ebx)
	jmp	.LBB30_5
.LBB30_13:                              # %b6995
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$5, %edi
	jne	.LBB30_15
# %bb.14:                               # %b6999
                                        #   in Loop: Header=BB30_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$20
	.cfi_adjust_cfa_offset 4
	pushl	$16
	.cfi_adjust_cfa_offset 4
	pushl	$16
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$12
	.cfi_adjust_cfa_offset 4
	pushl	$24
	.cfi_adjust_cfa_offset 4
	pushl	$8
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$4
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	$44
	.cfi_adjust_cfa_offset 4
	jmp	.LBB30_4
.LBB30_15:                              # %b7000
                                        #   in Loop: Header=BB30_1 Depth=1
	.cfi_def_cfa_offset 32
	leal	-6(%edi), %ecx
	movl	%ecx, %eax
	imull	%esi
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
	jne	.LBB30_16
# %bb.17:                               # %b7003
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$192, %esi
	testb	$2, %cl
	jne	.LBB30_16
# %bb.18:                               # %g745
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$208, %esi
.LBB30_16:                              # %b7002
                                        #   in Loop: Header=BB30_1 Depth=1
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
	calll	func_b4426
	addl	$64, %esp
	.cfi_adjust_cfa_offset -64
	movl	$1717986919, %esi               # imm = 0x66666667
	jmp	.LBB30_5
.LBB30_19:                              # %b4096
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
.Lfunc_end30:
	.size	func_b4614, .Lfunc_end30-func_b4614
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4621
	.type	func_b4621,@function
func_b4621:                             # @func_b4621
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	cmpl	$31, %eax
	ja	.LBB31_3
	.p2align	4, 0x90
.LBB31_2:                               # %b4622
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%ecx)
	incl	%eax
	incl	%ecx
	cmpl	$31, %eax
	jbe	.LBB31_2
.LBB31_3:                               # %b4096
	retl
.Lfunc_end31:
	.size	func_b4621, .Lfunc_end31-func_b4621
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5339
	.type	func_b5339,@function
func_b5339:                             # @func_b5339
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
	jmp	.LBB32_1
	.p2align	4, 0x90
.LBB32_3:                               # %b6437
                                        #   in Loop: Header=BB32_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5321
.LBB32_4:                               # %b5339
                                        #   in Loop: Header=BB32_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$12, %edi
.LBB32_1:                               # %b5339
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB32_6
# %bb.2:                                # %b5341
                                        #   in Loop: Header=BB32_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str1, %edx
	testl	%edx, %edx
	je	.LBB32_3
# %bb.5:                                # %b6438
                                        #   in Loop: Header=BB32_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str1+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b5333
	jmp	.LBB32_4
.LBB32_6:                               # %b444
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end32:
	.size	func_b5339, .Lfunc_end32-func_b5339
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6010
	.type	func_b6010,@function
func_b6010:                             # @func_b6010
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
.LBB33_1:                               # %b6010
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB33_3
# %bb.2:                                # %b6453
                                        #   in Loop: Header=BB33_1 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_4
	.p2align	4, 0x90
.LBB33_3:                               # %b6454
                                        #   in Loop: Header=BB33_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_4:                               # %b6454
                                        #   in Loop: Header=BB33_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB33_6
# %bb.5:                                # %b6003
                                        #   in Loop: Header=BB33_1 Depth=1
	incl	%esi
	jmp	.LBB33_1
.LBB33_6:                               # %b1950
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
	calll	func_b5339
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str13, %eax
	testl	%eax, %eax
	je	.LBB33_8
# %bb.7:                                # %b6000
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str13+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5992
	jmp	.LBB33_60
.LBB33_8:                               # %b1948
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
	calll	func_b5477
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB33_10
# %bb.9:                                # %b5982
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5974
	jmp	.LBB33_60
.LBB33_10:                              # %b1946
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB33_12
# %bb.11:                               # %b5962
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5890
	jmp	.LBB33_30
.LBB33_12:                              # %b5952
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB33_14
# %bb.13:                               # %b5954
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB33_14:                              # %b5940
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB33_17
# %bb.15:                               # %b5951
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB33_24
# %bb.16:                               # %b5946
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_25
.LBB33_17:                              # %b5933
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB33_21
# %bb.18:                               # %b6448
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB33_19:                              # %b5929
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB33_21
# %bb.20:                               # %b5927
                                        #   in Loop: Header=BB33_19 Depth=1
	incl	%edi
	jmp	.LBB33_19
.LBB33_21:                              # %b5916
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB33_26
# %bb.22:                               # %b5918
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB33_28
# %bb.23:                               # %b5922
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_29
.LBB33_24:                              # %b5948
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_25:                              # %b5948
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5766
	jmp	.LBB33_30
.LBB33_26:                              # %b3414
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB33_31
# %bb.27:                               # %b5907
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	jmp	.LBB33_30
.LBB33_28:                              # %b5924
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_29:                              # %b5924
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5726
.LBB33_30:                              # %b3170
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB33_31:                              # %b3170
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB33_38
# %bb.32:                               # %b5959
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB33_33:                              # %b5808
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB33_35
# %bb.34:                               # %b5811
                                        #   in Loop: Header=BB33_33 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_36
	.p2align	4, 0x90
.LBB33_35:                              # %b5813
                                        #   in Loop: Header=BB33_33 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_36:                              # %b5804
                                        #   in Loop: Header=BB33_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB33_38
# %bb.37:                               # %b5806
                                        #   in Loop: Header=BB33_33 Depth=1
	incl	%ebx
	jmp	.LBB33_33
.LBB33_38:                              # %b5799
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB33_40
# %bb.39:                               # %b5801
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB33_40:                              # %b5793
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB33_47
# %bb.41:                               # %b5798
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB33_42:                              # %b5770
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB33_44
# %bb.43:                               # %b5773
                                        #   in Loop: Header=BB33_42 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_45
	.p2align	4, 0x90
.LBB33_44:                              # %b5775
                                        #   in Loop: Header=BB33_42 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_45:                              # %b5766
                                        #   in Loop: Header=BB33_42 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB33_47
# %bb.46:                               # %b5768
                                        #   in Loop: Header=BB33_42 Depth=1
	incl	%ebx
	jmp	.LBB33_42
.LBB33_47:                              # %b5765
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB33_51
# %bb.48:                               # %b6445
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB33_49:                              # %b5761
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB33_51
# %bb.50:                               # %b5759
                                        #   in Loop: Header=BB33_49 Depth=1
	incl	%edi
	jmp	.LBB33_49
.LBB33_51:                              # %b5754
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB33_58
# %bb.52:                               # %b5756
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB33_53:                              # %b5730
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB33_55
# %bb.54:                               # %b5733
                                        #   in Loop: Header=BB33_53 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_56
	.p2align	4, 0x90
.LBB33_55:                              # %b5735
                                        #   in Loop: Header=BB33_53 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_56:                              # %b5726
                                        #   in Loop: Header=BB33_53 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB33_58
# %bb.57:                               # %b5728
                                        #   in Loop: Header=BB33_53 Depth=1
	incl	%edi
	jmp	.LBB33_53
.LBB33_58:                              # %b1940
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB33_61
# %bb.59:                               # %b5725
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
.LBB33_60:                              # %b303
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB33_61:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end33:
	.size	func_b6010, .Lfunc_end33-func_b6010
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5477
	.type	func_b5477,@function
func_b5477:                             # @func_b5477
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
.LBB34_3:                               # %b6443
                                        #   in Loop: Header=BB34_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5459
.LBB34_4:                               # %b5477
                                        #   in Loop: Header=BB34_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$8, %edi
.LBB34_1:                               # %b5477
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB34_6
# %bb.2:                                # %b5479
                                        #   in Loop: Header=BB34_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str1, %edx
	testl	%edx, %edx
	je	.LBB34_3
# %bb.5:                                # %b6444
                                        #   in Loop: Header=BB34_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str1+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b5471
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
	.size	func_b5477, .Lfunc_end34-func_b5477
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5992
	.type	func_b5992,@function
func_b5992:                             # @func_b5992
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
.LBB35_1:                               # %b5992
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB35_3
# %bb.2:                                # %b6451
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_4
	.p2align	4, 0x90
.LBB35_3:                               # %b6452
                                        #   in Loop: Header=BB35_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_4:                               # %b6452
                                        #   in Loop: Header=BB35_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB35_6
# %bb.5:                                # %b5985
                                        #   in Loop: Header=BB35_1 Depth=1
	incl	%esi
	jmp	.LBB35_1
.LBB35_6:                               # %b1948
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
	calll	func_b5477
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB35_8
# %bb.7:                                # %b5982
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5974
	jmp	.LBB35_58
.LBB35_8:                               # %b1946
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB35_10
# %bb.9:                                # %b5962
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5890
	jmp	.LBB35_28
.LBB35_10:                              # %b5952
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB35_12
# %bb.11:                               # %b5954
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_12:                              # %b5940
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB35_15
# %bb.13:                               # %b5951
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB35_22
# %bb.14:                               # %b5946
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_23
.LBB35_15:                              # %b5933
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB35_19
# %bb.16:                               # %b6448
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB35_17:                              # %b5929
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB35_19
# %bb.18:                               # %b5927
                                        #   in Loop: Header=BB35_17 Depth=1
	incl	%edi
	jmp	.LBB35_17
.LBB35_19:                              # %b5916
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB35_24
# %bb.20:                               # %b5918
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_26
# %bb.21:                               # %b5922
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_27
.LBB35_22:                              # %b5948
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_23:                              # %b5948
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5766
	jmp	.LBB35_28
.LBB35_24:                              # %b3414
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB35_29
# %bb.25:                               # %b5907
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	jmp	.LBB35_28
.LBB35_26:                              # %b5924
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_27:                              # %b5924
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5726
.LBB35_28:                              # %b3170
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_29:                              # %b3170
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB35_36
# %bb.30:                               # %b5959
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB35_31:                              # %b5808
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB35_33
# %bb.32:                               # %b5811
                                        #   in Loop: Header=BB35_31 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_34
	.p2align	4, 0x90
.LBB35_33:                              # %b5813
                                        #   in Loop: Header=BB35_31 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_34:                              # %b5804
                                        #   in Loop: Header=BB35_31 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB35_36
# %bb.35:                               # %b5806
                                        #   in Loop: Header=BB35_31 Depth=1
	incl	%ebx
	jmp	.LBB35_31
.LBB35_36:                              # %b5799
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB35_38
# %bb.37:                               # %b5801
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_38:                              # %b5793
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB35_45
# %bb.39:                               # %b5798
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB35_40:                              # %b5770
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB35_42
# %bb.41:                               # %b5773
                                        #   in Loop: Header=BB35_40 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_43
	.p2align	4, 0x90
.LBB35_42:                              # %b5775
                                        #   in Loop: Header=BB35_40 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_43:                              # %b5766
                                        #   in Loop: Header=BB35_40 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB35_45
# %bb.44:                               # %b5768
                                        #   in Loop: Header=BB35_40 Depth=1
	incl	%ebx
	jmp	.LBB35_40
.LBB35_45:                              # %b5765
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB35_49
# %bb.46:                               # %b6445
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB35_47:                              # %b5761
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB35_49
# %bb.48:                               # %b5759
                                        #   in Loop: Header=BB35_47 Depth=1
	incl	%edi
	jmp	.LBB35_47
.LBB35_49:                              # %b5754
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB35_56
# %bb.50:                               # %b5756
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB35_51:                              # %b5730
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_53
# %bb.52:                               # %b5733
                                        #   in Loop: Header=BB35_51 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_54
	.p2align	4, 0x90
.LBB35_53:                              # %b5735
                                        #   in Loop: Header=BB35_51 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_54:                              # %b5726
                                        #   in Loop: Header=BB35_51 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_56
# %bb.55:                               # %b5728
                                        #   in Loop: Header=BB35_51 Depth=1
	incl	%edi
	jmp	.LBB35_51
.LBB35_56:                              # %b1940
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB35_59
# %bb.57:                               # %b5725
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
.LBB35_58:                              # %b303
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_59:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end35:
	.size	func_b5992, .Lfunc_end35-func_b5992
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5974
	.type	func_b5974,@function
func_b5974:                             # @func_b5974
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
.LBB36_1:                               # %b5974
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB36_3
# %bb.2:                                # %b6449
                                        #   in Loop: Header=BB36_1 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_4
	.p2align	4, 0x90
.LBB36_3:                               # %b6450
                                        #   in Loop: Header=BB36_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_4:                               # %b6450
                                        #   in Loop: Header=BB36_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB36_6
# %bb.5:                                # %b5967
                                        #   in Loop: Header=BB36_1 Depth=1
	incl	%esi
	jmp	.LBB36_1
.LBB36_6:                               # %b1946
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB36_8
# %bb.7:                                # %b5962
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5890
	jmp	.LBB36_26
.LBB36_8:                               # %b5952
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB36_10
# %bb.9:                                # %b5954
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_10:                              # %b5940
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB36_13
# %bb.11:                               # %b5951
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB36_20
# %bb.12:                               # %b5946
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_21
.LBB36_13:                              # %b5933
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB36_17
# %bb.14:                               # %b6448
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB36_15:                              # %b5929
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB36_17
# %bb.16:                               # %b5927
                                        #   in Loop: Header=BB36_15 Depth=1
	incl	%edi
	jmp	.LBB36_15
.LBB36_17:                              # %b5916
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB36_22
# %bb.18:                               # %b5918
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB36_24
# %bb.19:                               # %b5922
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_25
.LBB36_20:                              # %b5948
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_21:                              # %b5948
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5766
	jmp	.LBB36_26
.LBB36_22:                              # %b3414
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB36_27
# %bb.23:                               # %b5907
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	jmp	.LBB36_26
.LBB36_24:                              # %b5924
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_25:                              # %b5924
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5726
.LBB36_26:                              # %b3170
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_27:                              # %b3170
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB36_34
# %bb.28:                               # %b5959
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB36_29:                              # %b5808
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB36_31
# %bb.30:                               # %b5811
                                        #   in Loop: Header=BB36_29 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_32
	.p2align	4, 0x90
.LBB36_31:                              # %b5813
                                        #   in Loop: Header=BB36_29 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_32:                              # %b5804
                                        #   in Loop: Header=BB36_29 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB36_34
# %bb.33:                               # %b5806
                                        #   in Loop: Header=BB36_29 Depth=1
	incl	%ebx
	jmp	.LBB36_29
.LBB36_34:                              # %b5799
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB36_36
# %bb.35:                               # %b5801
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_36:                              # %b5793
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB36_43
# %bb.37:                               # %b5798
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB36_38:                              # %b5770
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB36_40
# %bb.39:                               # %b5773
                                        #   in Loop: Header=BB36_38 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_41
	.p2align	4, 0x90
.LBB36_40:                              # %b5775
                                        #   in Loop: Header=BB36_38 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_41:                              # %b5766
                                        #   in Loop: Header=BB36_38 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB36_43
# %bb.42:                               # %b5768
                                        #   in Loop: Header=BB36_38 Depth=1
	incl	%ebx
	jmp	.LBB36_38
.LBB36_43:                              # %b5765
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB36_47
# %bb.44:                               # %b6445
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB36_45:                              # %b5761
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB36_47
# %bb.46:                               # %b5759
                                        #   in Loop: Header=BB36_45 Depth=1
	incl	%edi
	jmp	.LBB36_45
.LBB36_47:                              # %b5754
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB36_54
# %bb.48:                               # %b5756
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB36_49:                              # %b5730
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB36_51
# %bb.50:                               # %b5733
                                        #   in Loop: Header=BB36_49 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_52
	.p2align	4, 0x90
.LBB36_51:                              # %b5735
                                        #   in Loop: Header=BB36_49 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_52:                              # %b5726
                                        #   in Loop: Header=BB36_49 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB36_54
# %bb.53:                               # %b5728
                                        #   in Loop: Header=BB36_49 Depth=1
	incl	%edi
	jmp	.LBB36_49
.LBB36_54:                              # %b1940
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB36_56
# %bb.55:                               # %b5725
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_56:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end36:
	.size	func_b5974, .Lfunc_end36-func_b5974
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5890
	.type	func_b5890,@function
func_b5890:                             # @func_b5890
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
.LBB37_1:                               # %b5890
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_3
# %bb.2:                                # %b6446
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_4
	.p2align	4, 0x90
.LBB37_3:                               # %b6447
                                        #   in Loop: Header=BB37_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_4:                               # %b5881
                                        #   in Loop: Header=BB37_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_5
# %bb.28:                               # %b5883
                                        #   in Loop: Header=BB37_1 Depth=1
	incl	%edi
	jmp	.LBB37_1
.LBB37_5:                               # %b5878
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB37_7
# %bb.6:                                # %b5880
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB37_7:                               # %b5880
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB37_8
# %bb.12:                               # %b5798
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB37_13:                              # %b5770
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB37_18
# %bb.14:                               # %b5773
                                        #   in Loop: Header=BB37_13 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_19
	.p2align	4, 0x90
.LBB37_18:                              # %b5775
                                        #   in Loop: Header=BB37_13 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_19:                              # %b5766
                                        #   in Loop: Header=BB37_13 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB37_8
# %bb.20:                               # %b5768
                                        #   in Loop: Header=BB37_13 Depth=1
	incl	%ebx
	jmp	.LBB37_13
.LBB37_8:                               # %b5765
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB37_9
# %bb.15:                               # %b6445
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB37_16:                              # %b5761
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB37_9
# %bb.17:                               # %b5759
                                        #   in Loop: Header=BB37_16 Depth=1
	incl	%edi
	jmp	.LBB37_16
.LBB37_9:                               # %b5754
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB37_10
# %bb.22:                               # %b5756
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB37_23:                              # %b5730
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_25
# %bb.24:                               # %b5733
                                        #   in Loop: Header=BB37_23 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_26
	.p2align	4, 0x90
.LBB37_25:                              # %b5735
                                        #   in Loop: Header=BB37_23 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_26:                              # %b5726
                                        #   in Loop: Header=BB37_23 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_10
# %bb.27:                               # %b5728
                                        #   in Loop: Header=BB37_23 Depth=1
	incl	%edi
	jmp	.LBB37_23
.LBB37_10:                              # %b1940
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB37_11
# %bb.21:                               # %b5725
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB37_11:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end37:
	.size	func_b5890, .Lfunc_end37-func_b5890
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5284
	.type	func_b5284,@function
func_b5284:                             # @func_b5284
	.cfi_startproc
# %bb.0:                                # %b5284
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
	je	.LBB38_1
# %bb.10:                               # %b5286
	movl	$str5+1, %edi
	.p2align	4, 0x90
.LBB38_11:                              # %b5268
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB38_16
# %bb.12:                               # %b5271
                                        #   in Loop: Header=BB38_11 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_17
	.p2align	4, 0x90
.LBB38_16:                              # %b5273
                                        #   in Loop: Header=BB38_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_17:                              # %b5264
                                        #   in Loop: Header=BB38_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB38_1
# %bb.18:                               # %b5266
                                        #   in Loop: Header=BB38_11 Depth=1
	incl	%edi
	jmp	.LBB38_11
.LBB38_1:                               # %b1922
	movl	(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str6, %ebx
	testl	%ebx, %ebx
	je	.LBB38_2
# %bb.13:                               # %b5263
	movl	$str6+1, %edi
	.p2align	4, 0x90
.LBB38_14:                              # %b5255
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB38_22
# %bb.15:                               # %b5258
                                        #   in Loop: Header=BB38_14 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_23
	.p2align	4, 0x90
.LBB38_22:                              # %b5260
                                        #   in Loop: Header=BB38_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_23:                              # %b5251
                                        #   in Loop: Header=BB38_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB38_2
# %bb.24:                               # %b5253
                                        #   in Loop: Header=BB38_14 Depth=1
	incl	%edi
	jmp	.LBB38_14
.LBB38_2:                               # %b1920
	movl	4(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str7, %ebx
	testl	%ebx, %ebx
	je	.LBB38_3
# %bb.19:                               # %b5250
	movl	$str7+1, %edi
	.p2align	4, 0x90
.LBB38_20:                              # %b5242
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB38_28
# %bb.21:                               # %b5245
                                        #   in Loop: Header=BB38_20 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_29
	.p2align	4, 0x90
.LBB38_28:                              # %b5247
                                        #   in Loop: Header=BB38_20 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_29:                              # %b5238
                                        #   in Loop: Header=BB38_20 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB38_3
# %bb.30:                               # %b5240
                                        #   in Loop: Header=BB38_20 Depth=1
	incl	%edi
	jmp	.LBB38_20
.LBB38_3:                               # %b1918
	movl	8(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	shrl	$4, %edi
	je	.LBB38_25
# %bb.4:                                # %b3196.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB38_5:                               # %b3196
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
	calll	func_b1638
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%esi)
	leal	1(%esi), %eax
	cmpl	$32, %eax
	jae	.LBB38_7
# %bb.6:                                # %b6644
                                        #   in Loop: Header=BB38_5 Depth=1
	shrl	$4, %edi
	jne	.LBB38_5
.LBB38_7:                               # %b3197
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6631
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB38_8:                               # %b3194
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB38_8
	jmp	.LBB38_9
.LBB38_25:                              # %b6638
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB38_27
# %bb.26:                               # %b6640
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
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
	calll	func_b6631
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB38_27:                              # %b3433
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB38_9:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end38:
	.size	func_b5284, .Lfunc_end38-func_b5284
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5804
	.type	func_b5804,@function
func_b5804:                             # @func_b5804
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
	jmp	.LBB39_1
	.p2align	4, 0x90
.LBB39_11:                              # %b5813
                                        #   in Loop: Header=BB39_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB39_12:                              # %b5804
                                        #   in Loop: Header=BB39_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB39_1:                               # %b5804
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB39_2
# %bb.10:                               # %b5806
                                        #   in Loop: Header=BB39_1 Depth=1
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB39_11
# %bb.9:                                # %b5811
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB39_12
.LBB39_2:                               # %b5799
	.cfi_def_cfa_offset 16
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB39_4
# %bb.3:                                # %b5801
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB39_4:                               # %b5801
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB39_5
# %bb.13:                               # %b5798
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB39_14:                              # %b5770
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB39_19
# %bb.15:                               # %b5773
                                        #   in Loop: Header=BB39_14 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB39_20
	.p2align	4, 0x90
.LBB39_19:                              # %b5775
                                        #   in Loop: Header=BB39_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB39_20:                              # %b5766
                                        #   in Loop: Header=BB39_14 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB39_5
# %bb.21:                               # %b5768
                                        #   in Loop: Header=BB39_14 Depth=1
	incl	%ebx
	jmp	.LBB39_14
.LBB39_5:                               # %b5765
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB39_6
# %bb.16:                               # %b6445
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB39_17:                              # %b5761
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB39_6
# %bb.18:                               # %b5759
                                        #   in Loop: Header=BB39_17 Depth=1
	incl	%edi
	jmp	.LBB39_17
.LBB39_6:                               # %b5754
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB39_7
# %bb.23:                               # %b5756
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB39_24:                              # %b5730
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB39_26
# %bb.25:                               # %b5733
                                        #   in Loop: Header=BB39_24 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB39_27
	.p2align	4, 0x90
.LBB39_26:                              # %b5735
                                        #   in Loop: Header=BB39_24 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB39_27:                              # %b5726
                                        #   in Loop: Header=BB39_24 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB39_7
# %bb.28:                               # %b5728
                                        #   in Loop: Header=BB39_24 Depth=1
	incl	%edi
	jmp	.LBB39_24
.LBB39_7:                               # %b1940
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB39_8
# %bb.22:                               # %b5725
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB39_8:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end39:
	.size	func_b5804, .Lfunc_end39-func_b5804
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5766
	.type	func_b5766,@function
func_b5766:                             # @func_b5766
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
	jmp	.LBB40_1
	.p2align	4, 0x90
.LBB40_11:                              # %b5775
                                        #   in Loop: Header=BB40_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB40_12:                              # %b5766
                                        #   in Loop: Header=BB40_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB40_1:                               # %b5766
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB40_2
# %bb.10:                               # %b5768
                                        #   in Loop: Header=BB40_1 Depth=1
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB40_11
# %bb.9:                                # %b5773
                                        #   in Loop: Header=BB40_1 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB40_12
.LBB40_2:                               # %b5765
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB40_3
# %bb.6:                                # %b6445
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB40_7:                               # %b5761
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB40_3
# %bb.8:                                # %b5759
                                        #   in Loop: Header=BB40_7 Depth=1
	incl	%edi
	jmp	.LBB40_7
.LBB40_3:                               # %b5754
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB40_4
# %bb.14:                               # %b5756
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB40_15:                              # %b5730
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB40_17
# %bb.16:                               # %b5733
                                        #   in Loop: Header=BB40_15 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB40_18
	.p2align	4, 0x90
.LBB40_17:                              # %b5735
                                        #   in Loop: Header=BB40_15 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB40_18:                              # %b5726
                                        #   in Loop: Header=BB40_15 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB40_4
# %bb.19:                               # %b5728
                                        #   in Loop: Header=BB40_15 Depth=1
	incl	%edi
	jmp	.LBB40_15
.LBB40_4:                               # %b1940
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB40_5
# %bb.13:                               # %b5725
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB40_5:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end40:
	.size	func_b5766, .Lfunc_end40-func_b5766
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5726
	.type	func_b5726,@function
func_b5726:                             # @func_b5726
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
.LBB41_7:                               # %b5735
                                        #   in Loop: Header=BB41_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB41_8:                               # %b5726
                                        #   in Loop: Header=BB41_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB41_1:                               # %b5726
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB41_2
# %bb.6:                                # %b5728
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB41_7
# %bb.5:                                # %b5733
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB41_8
.LBB41_2:                               # %b1940
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB41_4
# %bb.3:                                # %b5725
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB41_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end41:
	.size	func_b5726, .Lfunc_end41-func_b5726
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5571
	.type	func_b5571,@function
func_b5571:                             # @func_b5571
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
.LBB42_1:                               # %b5571
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB42_3
# %bb.2:                                # %b6455
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB42_4
	.p2align	4, 0x90
.LBB42_3:                               # %b6456
                                        #   in Loop: Header=BB42_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB42_4:                               # %b5562
                                        #   in Loop: Header=BB42_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB42_5
# %bb.9:                                # %b5564
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%edi
	jmp	.LBB42_1
.LBB42_5:                               # %b2392
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %eax
	testl	%eax, %eax
	je	.LBB42_6
# %bb.8:                                # %b5556
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str56+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5522
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB42_7
.LBB42_6:                               # %b2396
	movl	%esi, users+52
.LBB42_7:                               # %b2396
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end42:
	.size	func_b5571, .Lfunc_end42-func_b5571
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5522
	.type	func_b5522,@function
func_b5522:                             # @func_b5522
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
.LBB43_1:                               # %b5522
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB43_3
# %bb.2:                                # %b5525
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB43_4
	.p2align	4, 0x90
.LBB43_3:                               # %b5527
                                        #   in Loop: Header=BB43_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB43_4:                               # %b5518
                                        #   in Loop: Header=BB43_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB43_5
# %bb.6:                                # %b5520
                                        #   in Loop: Header=BB43_1 Depth=1
	incl	%edi
	jmp	.LBB43_1
.LBB43_5:                               # %b2396
	movl	%esi, users+52
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end43:
	.size	func_b5522, .Lfunc_end43-func_b5522
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5553
	.type	func_b5553,@function
func_b5553:                             # @func_b5553
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
.LBB44_1:                               # %b5553
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB44_3
# %bb.2:                                # %b6457
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB44_4
	.p2align	4, 0x90
.LBB44_3:                               # %b6458
                                        #   in Loop: Header=BB44_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB44_4:                               # %b5544
                                        #   in Loop: Header=BB44_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB44_5
# %bb.9:                                # %b5546
                                        #   in Loop: Header=BB44_1 Depth=1
	incl	%edi
	jmp	.LBB44_1
.LBB44_5:                               # %b2403
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %eax
	testl	%eax, %eax
	je	.LBB44_6
# %bb.8:                                # %b5543
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str56+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5532
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB44_7
.LBB44_6:                               # %b2407
	movl	%esi, users+124
.LBB44_7:                               # %b2407
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end44:
	.size	func_b5553, .Lfunc_end44-func_b5553
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5532
	.type	func_b5532,@function
func_b5532:                             # @func_b5532
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
.LBB45_1:                               # %b5532
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB45_3
# %bb.2:                                # %b5535
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB45_4
	.p2align	4, 0x90
.LBB45_3:                               # %b5537
                                        #   in Loop: Header=BB45_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB45_4:                               # %b5528
                                        #   in Loop: Header=BB45_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB45_5
# %bb.6:                                # %b5530
                                        #   in Loop: Header=BB45_1 Depth=1
	incl	%edi
	jmp	.LBB45_1
.LBB45_5:                               # %b2407
	movl	%esi, users+124
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end45:
	.size	func_b5532, .Lfunc_end45-func_b5532
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5459
	.type	func_b5459,@function
func_b5459:                             # @func_b5459
	.cfi_startproc
# %bb.0:                                # %b5459
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
	je	.LBB46_1
# %bb.7:                                # %b5461
	movl	$str14+1, %esi
	.p2align	4, 0x90
.LBB46_8:                               # %b5458
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB46_1
# %bb.9:                                # %b5456
                                        #   in Loop: Header=BB46_8 Depth=1
	incl	%esi
	jmp	.LBB46_8
.LBB46_1:                               # %b5451
	movl	32(%esp), %esi
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB46_2
# %bb.10:                               # %b5453
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB46_11:                              # %b5445
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB46_16
# %bb.12:                               # %b5448
                                        #   in Loop: Header=BB46_11 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB46_17
	.p2align	4, 0x90
.LBB46_16:                              # %b5450
                                        #   in Loop: Header=BB46_11 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB46_17:                              # %b5441
                                        #   in Loop: Header=BB46_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB46_2
# %bb.18:                               # %b5443
                                        #   in Loop: Header=BB46_11 Depth=1
	incl	%edi
	jmp	.LBB46_11
.LBB46_2:                               # %b2994
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
	calll	func_b1638
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
	calll	func_b6927
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str3, %ebx
	testl	%ebx, %ebx
	je	.LBB46_3
# %bb.13:                               # %b5440
	movl	$str3+1, %edi
	.p2align	4, 0x90
.LBB46_14:                              # %b5432
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB46_23
# %bb.15:                               # %b5435
                                        #   in Loop: Header=BB46_14 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB46_24
	.p2align	4, 0x90
.LBB46_23:                              # %b5437
                                        #   in Loop: Header=BB46_14 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB46_24:                              # %b5428
                                        #   in Loop: Header=BB46_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB46_3
# %bb.25:                               # %b5430
                                        #   in Loop: Header=BB46_14 Depth=1
	incl	%edi
	jmp	.LBB46_14
.LBB46_3:                               # %b5419
	movl	36(%esp), %edi
	movzbl	str8, %ebp
	testl	%ebp, %ebp
	je	.LBB46_4
# %bb.20:                               # %b5421
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB46_21
# %bb.19:                               # %b5425
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB46_22
.LBB46_4:                               # %b3604
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
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %ebp
	testl	%ebp, %ebp
	je	.LBB46_5
# %bb.27:                               # %b5393
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB46_28
# %bb.26:                               # %b5397
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB46_29
.LBB46_21:                              # %b5427
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB46_22:                              # %b5427
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5403
	jmp	.LBB46_30
.LBB46_5:                               # %b3605
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
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB46_31
# %bb.6:                                # %b5369
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	jmp	.LBB46_30
.LBB46_28:                              # %b5399
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB46_29:                              # %b5399
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b5375
.LBB46_30:                              # %b5399
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB46_31:                              # %b5399
	movzbl	str4, %edi
	testl	%edi, %edi
	je	.LBB46_38
# %bb.32:                               # %b5415
	movl	$str4+1, %ebx
	.p2align	4, 0x90
.LBB46_33:                              # %b5355
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB46_35
# %bb.34:                               # %b5358
                                        #   in Loop: Header=BB46_33 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB46_36
	.p2align	4, 0x90
.LBB46_35:                              # %b5360
                                        #   in Loop: Header=BB46_33 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB46_36:                              # %b5351
                                        #   in Loop: Header=BB46_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB46_38
# %bb.37:                               # %b5353
                                        #   in Loop: Header=BB46_33 Depth=1
	incl	%ebx
	jmp	.LBB46_33
.LBB46_38:                              # %b1924
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
.Lfunc_end46:
	.size	func_b5459, .Lfunc_end46-func_b5459
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5471
	.type	func_b5471,@function
func_b5471:                             # @func_b5471
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
.LBB47_1:                               # %b5471
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB47_3
# %bb.2:                                # %b6439
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB47_4
	.p2align	4, 0x90
.LBB47_3:                               # %b6440
                                        #   in Loop: Header=BB47_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB47_4:                               # %b5462
                                        #   in Loop: Header=BB47_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB47_5
# %bb.6:                                # %b5464
                                        #   in Loop: Header=BB47_1 Depth=1
	incl	%ebx
	jmp	.LBB47_1
.LBB47_5:                               # %c900
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b5459
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
.Lfunc_end47:
	.size	func_b5471, .Lfunc_end47-func_b5471
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b6927
	.type	func_b6927,@function
func_b6927:                             # @func_b6927
	.cfi_startproc
# %bb.0:                                # %b6927
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
	ja	.LBB48_2
# %bb.1:                                # %b6929
	movl	44(%esp), %eax
	movl	$-858993459, %ebp               # imm = 0xCCCCCCCD
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	je	.LBB48_2
	.p2align	4, 0x90
.LBB48_5:                               # %b3382
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
	calll	func_b1638
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%ebx)
	leal	1(%ebx), %ecx
	cmpl	$32, %ecx
	jae	.LBB48_7
# %bb.6:                                # %b6921
                                        #   in Loop: Header=BB48_5 Depth=1
	movl	%esi, %eax
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	jne	.LBB48_5
.LBB48_7:                               # %b3197
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b6631
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB48_8:                               # %b3194
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%ebx), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%ebx
	jns	.LBB48_8
# %bb.9:                                # %b303
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	jmp	.LBB48_10
.LBB48_2:                               # %b6638
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB48_4
# %bb.3:                                # %b6640
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
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
	calll	func_b6631
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB48_4:                               # %b3433
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
.LBB48_10:                              # %b303
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
	.size	func_b6927, .Lfunc_end48-func_b6927
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5403
	.type	func_b5403,@function
func_b5403:                             # @func_b5403
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
	jmp	.LBB49_1
	.p2align	4, 0x90
.LBB49_7:                               # %b5412
                                        #   in Loop: Header=BB49_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB49_8:                               # %b5403
                                        #   in Loop: Header=BB49_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB49_1:                               # %b5403
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB49_2
# %bb.6:                                # %b5405
                                        #   in Loop: Header=BB49_1 Depth=1
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB49_7
# %bb.5:                                # %b5410
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB49_8
.LBB49_2:                               # %b1934
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
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %ebx
	testl	%ebx, %ebx
	je	.LBB49_3
# %bb.10:                               # %b5402
	movl	$str9+1, %edi
	.p2align	4, 0x90
.LBB49_11:                              # %b5379
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB49_13
# %bb.12:                               # %b5382
                                        #   in Loop: Header=BB49_11 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB49_14
	.p2align	4, 0x90
.LBB49_13:                              # %b5384
                                        #   in Loop: Header=BB49_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB49_14:                              # %b5375
                                        #   in Loop: Header=BB49_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB49_3
# %bb.15:                               # %b5377
                                        #   in Loop: Header=BB49_11 Depth=1
	incl	%edi
	jmp	.LBB49_11
.LBB49_3:                               # %b1932
	movl	4(%esi), %esi
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB49_4
# %bb.9:                                # %b5374
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB49_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end49:
	.size	func_b5403, .Lfunc_end49-func_b5403
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5375
	.type	func_b5375,@function
func_b5375:                             # @func_b5375
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
	jmp	.LBB50_1
	.p2align	4, 0x90
.LBB50_7:                               # %b5384
                                        #   in Loop: Header=BB50_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB50_8:                               # %b5375
                                        #   in Loop: Header=BB50_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB50_1:                               # %b5375
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB50_2
# %bb.6:                                # %b5377
                                        #   in Loop: Header=BB50_1 Depth=1
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB50_7
# %bb.5:                                # %b5382
                                        #   in Loop: Header=BB50_1 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB50_8
.LBB50_2:                               # %b1932
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
	calll	func_b1638
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
	calll	func_b6647
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB50_4
# %bb.3:                                # %b5374
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b5150
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB50_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end50:
	.size	func_b5375, .Lfunc_end50-func_b5375
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5321
	.type	func_b5321,@function
func_b5321:                             # @func_b5321
	.cfi_startproc
# %bb.0:                                # %b5321
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
	je	.LBB51_1
# %bb.5:                                # %b5323
	movl	$str12+1, %esi
	.p2align	4, 0x90
.LBB51_6:                               # %b5320
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1997
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB51_1
# %bb.7:                                # %b5318
                                        #   in Loop: Header=BB51_6 Depth=1
	incl	%esi
	jmp	.LBB51_6
.LBB51_1:                               # %b5313
	movl	32(%esp), %esi
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB51_2
# %bb.8:                                # %b5315
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB51_9:                               # %b5307
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB51_14
# %bb.10:                               # %b5310
                                        #   in Loop: Header=BB51_9 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB51_15
	.p2align	4, 0x90
.LBB51_14:                              # %b5312
                                        #   in Loop: Header=BB51_9 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB51_15:                              # %b5303
                                        #   in Loop: Header=BB51_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB51_2
# %bb.16:                               # %b5305
                                        #   in Loop: Header=BB51_9 Depth=1
	incl	%edi
	jmp	.LBB51_9
.LBB51_2:                               # %b2930
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
	calll	func_b1638
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
	calll	func_b6927
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str3, %ebp
	testl	%ebp, %ebp
	je	.LBB51_3
# %bb.11:                               # %b5302
	movl	$str3+1, %ebx
	.p2align	4, 0x90
.LBB51_12:                              # %b5294
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB51_20
# %bb.13:                               # %b5297
                                        #   in Loop: Header=BB51_12 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB51_21
	.p2align	4, 0x90
.LBB51_20:                              # %b5299
                                        #   in Loop: Header=BB51_12 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB51_21:                              # %b5290
                                        #   in Loop: Header=BB51_12 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB51_3
# %bb.22:                               # %b5292
                                        #   in Loop: Header=BB51_12 Depth=1
	incl	%ebx
	jmp	.LBB51_12
.LBB51_3:                               # %b2931
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b5284
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str4, %ebx
	testl	%ebx, %ebx
	je	.LBB51_4
# %bb.17:                               # %b5289
	movl	$str4+1, %edi
	.p2align	4, 0x90
.LBB51_18:                              # %b5278
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB51_23
# %bb.19:                               # %b5281
                                        #   in Loop: Header=BB51_18 Depth=1
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB51_24
	.p2align	4, 0x90
.LBB51_23:                              # %b5283
                                        #   in Loop: Header=BB51_18 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB51_24:                              # %b5274
                                        #   in Loop: Header=BB51_18 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB51_4
# %bb.25:                               # %b5276
                                        #   in Loop: Header=BB51_18 Depth=1
	incl	%edi
	jmp	.LBB51_18
.LBB51_4:                               # %b1924
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
.Lfunc_end51:
	.size	func_b5321, .Lfunc_end51-func_b5321
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b5333
	.type	func_b5333,@function
func_b5333:                             # @func_b5333
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
.LBB52_1:                               # %b5333
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
	calll	func_b1602
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB52_3
# %bb.2:                                # %b6433
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
	calll	func_b1602
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB52_4
	.p2align	4, 0x90
.LBB52_3:                               # %b6434
                                        #   in Loop: Header=BB52_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB52_4:                               # %b5324
                                        #   in Loop: Header=BB52_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1988
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB52_5
# %bb.6:                                # %b5326
                                        #   in Loop: Header=BB52_1 Depth=1
	incl	%ebx
	jmp	.LBB52_1
.LBB52_5:                               # %c824
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b5321
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
.Lfunc_end52:
	.size	func_b5333, .Lfunc_end52-func_b5333
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4426
	.type	func_b4426,@function
func_b4426:                             # @func_b4426
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
.Lfunc_end53:
	.size	func_b4426, .Lfunc_end53-func_b4426
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
	.type	gameoverZone,@object            # @gameoverZone
	.local	gameoverZone
	.comm	gameoverZone,4,4
	.type	.Lstr.12,@object                # @str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.12:
	.asciz	"Game Over"
	.size	.Lstr.12, 10

	.type	raw.14,@object                  # @raw.14
	.local	raw.14
	.comm	raw.14,4,4
	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"nothing\n"
	.size	.Lstr.13, 9

	.type	raw.7,@object                   # @raw.7
	.local	raw.7
	.comm	raw.7,4,1
	.type	raw.8,@object                   # @raw.8
	.local	raw.8
	.comm	raw.8,1,1
	.type	raw.10,@object                  # @raw.10
	.local	raw.10
	.comm	raw.10,1,1
	.type	raw.9,@object                   # @raw.9
	.local	raw.9
	.comm	raw.9,1,1
	.type	raw.16,@object                  # @raw.16
	.local	raw.16
	.comm	raw.16,1,1
	.type	raw.15,@object                  # @raw.15
	.local	raw.15
	.comm	raw.15,1,1
	.type	raw.11,@object                  # @raw.11
	.local	raw.11
	.comm	raw.11,504,4
	.type	raw.6,@object                   # @raw.6
	.local	raw.6
	.comm	raw.6,1,1
	.type	raw.5,@object                   # @raw.5
	.local	raw.5
	.comm	raw.5,4,4
	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"\n"
	.size	.Lstr.20, 2

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	", frame=0x"
	.size	.Lstr.19, 11

	.type	raw.18,@object                  # @raw.18
	.local	raw.18
	.comm	raw.18,32,1
	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"Exception 0x"
	.size	.Lstr.17, 13

	.type	.Lstr.50,@object                # @str.50
.Lstr.50:
	.asciz	"\n"
	.size	.Lstr.50, 2

	.type	.Lstr.49,@object                # @str.49
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.49:
	.asciz	"user code is at 0x"
	.size	.Lstr.49, 19

	.type	.Lstr.48,@object                # @str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.48:
	.asciz	"\n"
	.size	.Lstr.48, 2

	.type	.Lstr.41,@object                # @str.41
.Lstr.41:
	.asciz	"]\n"
	.size	.Lstr.41, 3

	.type	.Lstr.47,@object                # @str.47
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.47:
	.asciz	"Found header for second user program:\n"
	.size	.Lstr.47, 39

	.type	.Lstr.51,@object                # @str.51
	.p2align	4
.Lstr.51:
	.asciz	"Did not find second user program\n"
	.size	.Lstr.51, 34

	.type	.Lstr.40,@object                # @str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.40:
	.asciz	" ["
	.size	.Lstr.40, 3

	.type	.Lstr.46,@object                # @str.46
.Lstr.46:
	.asciz	"\n"
	.size	.Lstr.46, 2

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"], entry 0x"
	.size	.Lstr.29, 12

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"-0x"
	.size	.Lstr.28, 4

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"[0x"
	.size	.Lstr.27, 4

	.type	.Lstr.42,@object                # @str.42
.Lstr.42:
	.asciz	"imgline"
	.size	.Lstr.42, 8

	.type	.Lstr.39,@object                # @str.39
.Lstr.39:
	.asciz	": "
	.size	.Lstr.39, 3

	.type	.Lstr.45,@object                # @str.45
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.45:
	.asciz	"Found header for first user program:\n"
	.size	.Lstr.45, 38

	.type	.Lstr.38,@object                # @str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.38:
	.asciz	"cmdline"
	.size	.Lstr.38, 8

	.type	.Lstr.44,@object                # @str.44
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.44:
	.asciz	"\nHalting kernel, returning to mimgload\n"
	.size	.Lstr.44, 40

	.type	.Lstr.37,@object                # @str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.37:
	.asciz	" "
	.size	.Lstr.37, 2

	.type	.Lstr.43,@object                # @str.43
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.43:
	.asciz	"Did not find first user program\n"
	.size	.Lstr.43, 33

	.type	.Lstr.36,@object                # @str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.36:
	.asciz	"Strings:\n"
	.size	.Lstr.36, 10

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"\n"
	.size	.Lstr.30, 2

	.type	.Lstr.35,@object                # @str.35
.Lstr.35:
	.asciz	"]"
	.size	.Lstr.35, 2

	.type	.Lstr.34,@object                # @str.34
.Lstr.34:
	.asciz	"-0x"
	.size	.Lstr.34, 4

	.type	.Lstr.33,@object                # @str.33
.Lstr.33:
	.asciz	"[0x"
	.size	.Lstr.33, 4

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"]: "
	.size	.Lstr.26, 4

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"["
	.size	.Lstr.25, 2

	.type	.Lstr.32,@object                # @str.32
.Lstr.32:
	.asciz	"mmap"
	.size	.Lstr.32, 5

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	" "
	.size	.Lstr.23, 2

	.type	.Lstr.31,@object                # @str.31
.Lstr.31:
	.asciz	"Memory map:\n"
	.size	.Lstr.31, 13

	.type	.Lstr.24,@object                # @str.24
.Lstr.24:
	.asciz	"header"
	.size	.Lstr.24, 7

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"Headers:\n"
	.size	.Lstr.22, 10

	.type	.Lstr.21,@object                # @str.21
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.21:
	.asciz	" Last key pressed:"
	.size	.Lstr.21, 19

.set current, raw.0
.set users, raw.1
.set console, raw.2
.set keyDown, raw.4
.set keyUp, raw.3
.set ticks, raw.5
.set isPlaying, raw.6
.set objects, raw.11
.set headingLeft, raw.15
.set headingTop, raw.16
.set pos, raw.9
.set dir, raw.10
.set spinpos, raw.8
.set spinner, raw.7
.set bricksLeft, raw.14
.set str45, .Lstr.12
	.size	str45, 1
.set str0, .Lstr.13
	.size	str0, 1
.set str57, .Lstr.17
	.size	str57, 1
.set itoaBuf, raw.18
.set str58, .Lstr.19
	.size	str58, 1
.set str59, .Lstr.20
	.size	str59, 1
.set str47, .Lstr.21
	.size	str47, 1
.set str11, .Lstr.22
	.size	str11, 1
.set str13, .Lstr.31
	.size	str13, 1
.set str15, .Lstr.36
	.size	str15, 1
.set str54, .Lstr.43
	.size	str54, 1
.set str18, .Lstr.37
	.size	str18, 1
.set str48, .Lstr.44
	.size	str48, 1
.set str16, .Lstr.38
	.size	str16, 1
.set str49, .Lstr.45
	.size	str49, 1
.set str19, .Lstr.39
	.size	str19, 1
.set str17, .Lstr.42
	.size	str17, 1
.set str50, .Lstr.46
	.size	str50, 1
.set str20, .Lstr.40
	.size	str20, 1
.set str53, .Lstr.51
	.size	str53, 1
.set str51, .Lstr.47
	.size	str51, 1
.set str21, .Lstr.41
	.size	str21, 1
.set str52, .Lstr.48
	.size	str52, 1
.set str55, .Lstr.49
	.size	str55, 1
.set str56, .Lstr.50
	.size	str56, 1
.set str5, .Lstr.27
	.size	str5, 1
.set str6, .Lstr.28
	.size	str6, 1
.set str7, .Lstr.29
	.size	str7, 1
.set str1, .Lstr.23
	.size	str1, 1
.set str14, .Lstr.32
	.size	str14, 1
.set str2, .Lstr.25
	.size	str2, 1
.set str3, .Lstr.26
	.size	str3, 1
.set str8, .Lstr.33
	.size	str8, 1
.set str9, .Lstr.34
	.size	str9, 1
.set str10, .Lstr.35
	.size	str10, 1
.set str4, .Lstr.30
	.size	str4, 1
.set str12, .Lstr.24
	.size	str12, 1
	.section	".note.GNU-stack","",@progbits
