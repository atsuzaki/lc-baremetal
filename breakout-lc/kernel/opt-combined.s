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
	calll	func_b1206
	cmpl	$10, %edi
	jne	.LBB1_2
# %bb.1:                                # %b1729
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b1206
.LBB1_2:                                # %b1730
	movl	%edi, (%esp)
	calll	func_b1427
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
	.p2align	4, 0x90                         # -- Begin function func_b1206
	.type	func_b1206,@function
func_b1206:                             # @func_b1206
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
.LBB2_3:                                # %b2569
	movw	$1016, %dx                      # imm = 0x3F8
	movl	%ecx, %eax
	#APP
	outb	%al, %dx
	#NO_APP
	retl
.Lfunc_end2:
	.size	func_b1206, .Lfunc_end2-func_b1206
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1427
	.type	func_b1427,@function
func_b1427:                             # @func_b1427
	.cfi_startproc
# %bb.0:                                # %b1427
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
# %bb.7:                                # %b1432
	cmpl	$10, %edx
	je	.LBB3_1
# %bb.8:                                # %b1434
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
# %bb.9:                                # %b3909
	movb	%cl, console+5
	jmp	.LBB3_10
.LBB3_1:                                # %b1429
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB3_3
# %bb.2:                                # %b3905
	movb	%al, console+4
	jmp	.LBB3_10
.LBB3_3:                                # %b1431
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
.LBB3_4:                                # %b3896
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
	calll	func_b1214
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB3_4
.LBB3_5:                                # %b1212.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB3_6:                                # %b1212
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB3_6
.LBB3_10:                               # %b295
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
	.size	func_b1427, .Lfunc_end3-func_b1427
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1214
	.type	func_b1214,@function
func_b1214:                             # @func_b1214
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
.LBB4_1:                                # %b1214
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%esi), %edi
	movw	%di, (%edx)
	incl	%ecx
	addl	$2, %edx
	addl	$2, %esi
	cmpl	%eax, %ecx
	jbe	.LBB4_1
# %bb.2:                                # %b295
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end4:
	.size	func_b1214, .Lfunc_end4-func_b1214
	.cfi_endproc
                                        # -- End function
	.globl	keyboardInterrupt               # -- Begin function keyboardInterrupt
	.p2align	4, 0x90
	.type	keyboardInterrupt,@function
keyboardInterrupt:                      # @keyboardInterrupt
	.cfi_startproc
# %bb.0:
	subl	$12, %esp
	.cfi_def_cfa_offset 16
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
# %bb.1:                                # %b888
	andl	$127, %eax
	movzbl	(%ecx,%eax), %eax
	movzbl	753703, %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movw	%cx, 753702
	movb	%al, keyDown
.LBB5_2:                                # %b1011
	movzbl	current, %eax
	leal	(%eax,%eax,8), %eax
	leal	users(,%eax,8), %eax
	movl	%eax, (%esp)
	calll	returnTo
	addl	$12, %esp
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
	movl	ticks, %edi
	leal	1(%edi), %eax
	movl	%eax, ticks
	movzbl	753819, %esi
	shll	$8, %esi
	movl	%edi, %eax
	andl	$15, %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	func_b1242
	orl	%esi, %eax
	movw	%ax, 753818
	movl	%edi, 8(%esp)                   # 4-byte Spill
	movl	%edi, %esi
	shrl	$4, %esi
	movzbl	753817, %edi
	shll	$8, %edi
	movl	%esi, %eax
	andl	$15, %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	func_b1242
	orl	%edi, %eax
	movw	%ax, 753816
	movl	$75, %edi
	movl	$753814, %ebp                   # imm = 0xB8096
	.p2align	4, 0x90
.LBB6_1:                                # %b3954
                                        # =>This Inner Loop Header: Depth=1
	shrl	$4, %esi
	movzbl	1(%ebp), %ebx
	shll	$8, %ebx
	movl	%esi, %eax
	andl	$15, %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	func_b1242
	orl	%ebx, %eax
	movw	%ax, (%ebp)
	decl	%edi
	addl	$-2, %ebp
	cmpl	$69, %edi
	jg	.LBB6_1
# %bb.2:                                # %b1608
	movl	8(%esp), %ebx                   # 4-byte Reload
	testb	$3, %bl
	jne	.LBB6_11
# %bb.3:                                # %b1266
	movzbl	pos, %esi
	movl	%esi, (%esp)
	movl	$32, 4(%esp)
	calll	func_b829
	cmpb	$0, dir
	je	.LBB6_9
# %bb.4:                                # %b3951
	leal	1(%esi), %eax
	cmpl	$69, %eax
	jae	.LBB6_7
# %bb.5:                                # %b3949
	movl	%eax, (%esp)
	movl	$62, 4(%esp)
	jmp	.LBB6_6
.LBB6_9:                                # %b3946
	leal	-1(%esi), %eax
	cmpl	$45, %eax
	jle	.LBB6_10
# %bb.8:                                # %b3944
	movl	%eax, (%esp)
	movl	$60, 4(%esp)
.LBB6_6:                                # %b3949
	movl	%eax, %esi
	calll	func_b829
	movl	%esi, %eax
	movb	%al, pos
	testb	$15, %bl
	jne	.LBB6_16
	jmp	.LBB6_12
.LBB6_7:                                # %b1269
	movl	%esi, (%esp)
	movl	$124, 4(%esp)
	calll	func_b829
	movb	$0, dir
.LBB6_11:                               # %b882
	testb	$15, %bl
	jne	.LBB6_16
.LBB6_12:                               # %b880
	movzbl	current, %eax
	incl	%eax
	cmpl	$2, %eax
	jae	.LBB6_14
# %bb.13:                               # %b3939
	andl	$1, %eax
	movb	%al, current
	jmp	.LBB6_15
.LBB6_14:                               # %b2290
	movb	$0, current
.LBB6_15:                               # %b1604
	movzbl	spinpos, %eax
	movzbl	spinner(%eax), %ecx
	incb	%al
	andb	$3, %al
	movb	%al, spinpos
	movzbl	753823, %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movw	%ax, 753822
.LBB6_16:                               # %b1011
	movzbl	current, %eax
	leal	(%eax,%eax,8), %eax
	leal	users(,%eax,8), %eax
	movl	%eax, (%esp)
	calll	returnTo
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
.LBB6_10:                               # %b1272
	.cfi_def_cfa_offset 32
	movl	%esi, (%esp)
	movl	$124, 4(%esp)
	calll	func_b829
	movb	$1, dir
	testb	$15, %bl
	jne	.LBB6_16
	jmp	.LBB6_12
.Lfunc_end6:
	.size	timerInterrupt, .Lfunc_end6-timerInterrupt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1242
	.type	func_b1242,@function
func_b1242:                             # @func_b1242
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %ecx
	movl	4(%esp), %eax
	cmpl	%ecx, %eax
	ja	.LBB7_2
# %bb.1:                                # %b917
	addl	$48, %eax
	movzbl	%al, %eax
	retl
.LBB7_2:                                # %b918
	addl	$87, %eax
	movzbl	%al, %eax
	retl
.Lfunc_end7:
	.size	func_b1242, .Lfunc_end7-func_b1242
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b829
	.type	func_b829,@function
func_b829:                              # @func_b829
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
.Lfunc_end8:
	.size	func_b829, .Lfunc_end8-func_b829
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
	movzbl	str54, %ebx
	testl	%ebx, %ebx
	je	.LBB9_1
# %bb.4:                                # %b2944
	movl	$str54+1, %esi
	.p2align	4, 0x90
.LBB9_5:                                # %b2936
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB9_11
# %bb.6:                                # %b2939
                                        #   in Loop: Header=BB9_5 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB9_12
	.p2align	4, 0x90
.LBB9_11:                               # %b2941
                                        #   in Loop: Header=BB9_5 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB9_12:                               # %b2932
                                        #   in Loop: Header=BB9_5 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.LBB9_1
# %bb.13:                               # %b2934
                                        #   in Loop: Header=BB9_5 Depth=1
	incl	%esi
	jmp	.LBB9_5
.LBB9_1:                                # %b1350
	movl	20(%esp), %esi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str55, %ebx
	testl	%ebx, %ebx
	je	.LBB9_2
# %bb.8:                                # %b2931
	movl	$str55+1, %edi
	.p2align	4, 0x90
.LBB9_9:                                # %b2923
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB9_14
# %bb.10:                               # %b2926
                                        #   in Loop: Header=BB9_9 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB9_15
	.p2align	4, 0x90
.LBB9_14:                               # %b2928
                                        #   in Loop: Header=BB9_9 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB9_15:                               # %b2919
                                        #   in Loop: Header=BB9_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB9_2
# %bb.16:                               # %b2921
                                        #   in Loop: Header=BB9_9 Depth=1
	incl	%edi
	jmp	.LBB9_9
.LBB9_2:                                # %b1346
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %eax
	testl	%eax, %eax
	je	.LBB9_3
# %bb.7:                                # %b2918
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str56+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB9_3:                                # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end9:
	.size	unhandled, .Lfunc_end9-unhandled
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3934
	.type	func_b3934,@function
func_b3934:                             # @func_b3934
	.cfi_startproc
# %bb.0:                                # %b3934
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
	ja	.LBB10_2
# %bb.1:                                # %b3936
	movl	28(%esp), %ebx
	shrl	$4, %ebx
	je	.LBB10_2
	.p2align	4, 0x90
.LBB10_5:                               # %b2003
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
	calll	func_b1242
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%edi)
	leal	1(%edi), %eax
	cmpl	$32, %eax
	jae	.LBB10_7
# %bb.6:                                # %b3931
                                        #   in Loop: Header=BB10_5 Depth=1
	shrl	$4, %ebx
	jne	.LBB10_5
.LBB10_7:                               # %b2004
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3918
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB10_8:                               # %b2001
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%edi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%edi
	jns	.LBB10_8
	jmp	.LBB10_9
.LBB10_2:                               # %b3925
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB10_4
# %bb.3:                                # %b3927
	movl	$1, %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
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
	calll	func_b3918
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB10_4:                               # %b2061
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB10_9:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end10:
	.size	func_b3934, .Lfunc_end10-func_b3934
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2915
	.type	func_b2915,@function
func_b2915:                             # @func_b2915
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
.LBB11_1:                               # %b2915
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB11_3
# %bb.2:                                # %b3780
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB11_4
	.p2align	4, 0x90
.LBB11_3:                               # %b3781
                                        #   in Loop: Header=BB11_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB11_4:                               # %b2906
                                        #   in Loop: Header=BB11_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB11_5
# %bb.6:                                # %b2908
                                        #   in Loop: Header=BB11_1 Depth=1
	incl	%esi
	jmp	.LBB11_1
.LBB11_5:                               # %b295
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end11:
	.size	func_b2915, .Lfunc_end11-func_b2915
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1436
	.type	func_b1436,@function
func_b1436:                             # @func_b1436
	.cfi_startproc
# %bb.0:                                # %b1436
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB12_12
# %bb.1:                                # %b1424
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	console+4, %eax
	cmpl	$13, %ebx
	je	.LBB12_2
# %bb.8:                                # %b1432
	cmpl	$10, %ebx
	je	.LBB12_2
# %bb.9:                                # %b1434
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
	ja	.LBB12_2
# %bb.10:                               # %b3909
	movb	%cl, console+5
	jmp	.LBB12_11
.LBB12_12:                              # %c55
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
	jmp	func_b1427                      # TAILCALL
.LBB12_2:                               # %b1429
	.cfi_def_cfa_offset 32
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB12_4
# %bb.3:                                # %b3905
	movb	%al, console+4
	jmp	.LBB12_11
.LBB12_4:                               # %b1431
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB12_6
	.p2align	4, 0x90
.LBB12_5:                               # %b3896
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
	calll	func_b1214
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB12_5
.LBB12_6:                               # %b1212.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB12_7:                               # %b1212
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB12_7
.LBB12_11:                              # %b295
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
.Lfunc_end12:
	.size	func_b1436, .Lfunc_end12-func_b1436
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3918
	.type	func_b3918,@function
func_b3918:                             # @func_b3918
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
.LBB13_1:                               # %b3918
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB13_3
# %bb.2:                                # %b3920
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	%esi, (%esp)
	calll	func_b1436
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB13_1
.LBB13_3:                               # %b295
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end13:
	.size	func_b3918, .Lfunc_end13-func_b3918
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
	movb	$0, keyDown
	movl	$1, ticks
	movl	$796679213, spinner             # imm = 0x2F7C5C2D
	movb	$0, spinpos
	movb	$55, pos
	movb	$1, dir
	movb	$0, itoaBuf
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$itoaBuf+1
	.cfi_adjust_cfa_offset 4
	calll	func_b2553
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$32, console+6
	movzbl	console, %eax
	movzbl	console+1, %ebx
	movb	%al, console+4
	movb	%bl, console+5
	movzbl	console+2, %esi
	movzbl	console+3, %edi
	pushl	%eax
	movl	%eax, %ebp
	.cfi_adjust_cfa_offset 4
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1280
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3972
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str44, %edi
	testl	%edi, %edi
	je	.LBB14_7
# %bb.1:                                # %b3738
	movl	$str44+1, %esi
	.p2align	4, 0x90
.LBB14_2:                               # %b3730
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_4
# %bb.3:                                # %b3733
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_5
	.p2align	4, 0x90
.LBB14_4:                               # %b3735
                                        #   in Loop: Header=BB14_2 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_5:                               # %b3735
                                        #   in Loop: Header=BB14_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB14_7
# %bb.6:                                # %b3728
                                        #   in Loop: Header=BB14_2 Depth=1
	incl	%esi
	jmp	.LBB14_2
.LBB14_7:                               # %b1407
	movl	$756482305, console             # imm = 0x2D170101
	movw	$257, console+4                 # imm = 0x101
	movb	$15, console+6
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$15
	.cfi_adjust_cfa_offset 4
	pushl	$45
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b1280
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	$15
	.cfi_adjust_cfa_offset 4
	pushl	$45
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$23
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3972
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB14_9
# %bb.8:                                # %b3723
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3720
	jmp	.LBB14_57
.LBB14_9:                               # %b1967
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
	calll	func_b3049
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB14_11
# %bb.10:                               # %b3705
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str12+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3702
	jmp	.LBB14_57
.LBB14_11:                              # %b1968
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
	calll	func_b3187
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB14_13
# %bb.12:                               # %b3687
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3684
	jmp	.LBB14_57
.LBB14_13:                              # %b1969
	.cfi_def_cfa_offset 32
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB14_15
# %bb.14:                               # %b3606
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3600
	jmp	.LBB14_33
.LBB14_15:                              # %b3583
	.cfi_def_cfa_offset 32
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB14_17
# %bb.16:                               # %b3585
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_17:                              # %b3571
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB14_20
# %bb.18:                               # %b3582
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_27
# %bb.19:                               # %b3577
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_28
.LBB14_20:                              # %b3564
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB14_24
# %bb.21:                               # %b3823
	leal	1(%esi), %edi
.LBB14_22:                              # %b3560
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB14_24
# %bb.23:                               # %b3558
                                        #   in Loop: Header=BB14_22 Depth=1
	incl	%edi
	jmp	.LBB14_22
.LBB14_24:                              # %b3547
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB14_29
# %bb.25:                               # %b3549
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB14_31
# %bb.26:                               # %b3553
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_32
.LBB14_27:                              # %b3579
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_28:                              # %b3579
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3476
	jmp	.LBB14_33
.LBB14_29:                              # %b2137
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB14_34
# %bb.30:                               # %b3538
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	jmp	.LBB14_33
.LBB14_31:                              # %b3555
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_32:                              # %b3555
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3436
.LBB14_33:                              # %b2138
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_34:                              # %b2138
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB14_37
# %bb.35:                               # %b3603
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_42
# %bb.36:                               # %b3530
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_43
.LBB14_37:                              # %b3498
	.cfi_def_cfa_offset 32
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB14_39
# %bb.38:                               # %b3500
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_39:                              # %b3486
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB14_44
# %bb.40:                               # %b3497
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_51
# %bb.41:                               # %b3492
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_52
.LBB14_42:                              # %b3532
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_43:                              # %b3532
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3514
	jmp	.LBB14_57
.LBB14_44:                              # %b3463
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB14_48
# %bb.45:                               # %b3822
	leal	1(%esi), %edi
.LBB14_46:                              # %b3459
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB14_48
# %bb.47:                               # %b3457
                                        #   in Loop: Header=BB14_46 Depth=1
	incl	%edi
	jmp	.LBB14_46
.LBB14_48:                              # %b3446
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB14_53
# %bb.49:                               # %b3448
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB14_55
# %bb.50:                               # %b3452
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_56
.LBB14_51:                              # %b3494
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_52:                              # %b3494
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3476
	jmp	.LBB14_57
.LBB14_53:                              # %b2143
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB14_58
# %bb.54:                               # %b3430
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	jmp	.LBB14_57
.LBB14_55:                              # %b3454
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_56:                              # %b3454
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3436
.LBB14_57:                              # %b3705
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_58:                              # %b3705
	movl	4096, %esi
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	.LBB14_63
# %bb.59:
	addl	$4, %esi
	movl	%ecx, %eax
	negl	%eax
	addl	$12, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB14_60:                              # %b3425
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %ebx
	je	.LBB14_62
# %bb.61:                               # %b3423
                                        #   in Loop: Header=BB14_60 Depth=1
	decl	%ebx
	addl	$12, %esi
	cmpl	%ebx, %eax
	jne	.LBB14_60
	jmp	.LBB14_63
.LBB14_62:                              # %b3360
	movl	$1, %eax
	subl	%ecx, %eax
	cmpl	%ebx, %eax
	jne	.LBB14_70
.LBB14_63:                              # %b3212
	movzbl	str51, %edi
	testl	%edi, %edi
	je	.LBB14_117
# %bb.64:                               # %b3214
	movl	$str51+1, %esi
	.p2align	4, 0x90
.LBB14_65:                              # %b3206
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_67
# %bb.66:                               # %b3209
                                        #   in Loop: Header=BB14_65 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_68
	.p2align	4, 0x90
.LBB14_67:                              # %b3211
                                        #   in Loop: Header=BB14_65 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_68:                              # %b3211
                                        #   in Loop: Header=BB14_65 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB14_117
# %bb.69:                               # %b3204
                                        #   in Loop: Header=BB14_65 Depth=1
	incl	%esi
	jmp	.LBB14_65
.LBB14_70:                              # %b3362
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	str46, %edi
	testl	%edi, %edi
	je	.LBB14_77
# %bb.71:                               # %b3414
	movl	$str46+1, %ebp
	.p2align	4, 0x90
.LBB14_72:                              # %b3415
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_74
# %bb.73:                               # %b3416
                                        #   in Loop: Header=BB14_72 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_75
	.p2align	4, 0x90
.LBB14_74:                              # %b3422
                                        #   in Loop: Header=BB14_72 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_75:                              # %b3422
                                        #   in Loop: Header=BB14_72 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebp), %edi
	testl	%edi, %edi
	je	.LBB14_77
# %bb.76:                               # %b3421
                                        #   in Loop: Header=BB14_72 Depth=1
	incl	%ebp
	jmp	.LBB14_72
.LBB14_77:                              # %b3368
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-2(%eax,%ebx), %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b2994
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str47, %ebp
	testl	%ebp, %ebp
	je	.LBB14_84
# %bb.78:                               # %b3405
	movl	$str47+1, %ebx
	.p2align	4, 0x90
.LBB14_79:                              # %b3406
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB14_81
# %bb.80:                               # %b3407
                                        #   in Loop: Header=BB14_79 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_82
	.p2align	4, 0x90
.LBB14_81:                              # %b3413
                                        #   in Loop: Header=BB14_79 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_82:                              # %b3413
                                        #   in Loop: Header=BB14_79 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB14_84
# %bb.83:                               # %b3412
                                        #   in Loop: Header=BB14_79 Depth=1
	incl	%ebx
	jmp	.LBB14_79
.LBB14_84:                              # %b3404
	testl	%edi, %edi
	je	.LBB14_101
# %bb.85:                               # %b3821
	leal	12(%esi), %edi
	movzbl	str48, %ebp
	testl	%ebp, %ebp
	je	.LBB14_92
# %bb.86:                               # %b3992
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str48+1, %ebx
	.p2align	4, 0x90
.LBB14_87:                              # %b3992
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB14_89
# %bb.88:                               # %b3996
                                        #   in Loop: Header=BB14_87 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_90
	.p2align	4, 0x90
.LBB14_89:                              # %b3997
                                        #   in Loop: Header=BB14_87 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_90:                              # %b3997
                                        #   in Loop: Header=BB14_87 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB14_92
# %bb.91:                               # %b3999
                                        #   in Loop: Header=BB14_87 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB14_87
.LBB14_92:                              # %b3991
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2994
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str49, %ebp
	testl	%ebp, %ebp
	je	.LBB14_99
# %bb.93:                               # %b3995
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str49+1, %ebx
	.p2align	4, 0x90
.LBB14_94:                              # %b3995
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB14_96
# %bb.95:                               # %b4000
                                        #   in Loop: Header=BB14_94 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_97
	.p2align	4, 0x90
.LBB14_96:                              # %b4001
                                        #   in Loop: Header=BB14_94 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_97:                              # %b4001
                                        #   in Loop: Header=BB14_94 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB14_99
# %bb.98:                               # %b4002
                                        #   in Loop: Header=BB14_94 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB14_94
.LBB14_99:                              # %b3994
	movl	8(%esi), %esi
	movzbl	str52, %eax
	testl	%eax, %eax
	je	.LBB14_108
# %bb.100:                              # %b3287
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str52+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3281
	jmp	.LBB14_110
.LBB14_101:                             # %b3225
	.cfi_def_cfa_offset 32
	movzbl	str50, %edi
	testl	%edi, %edi
	je	.LBB14_117
# %bb.102:                              # %b3227
	movl	$str50+1, %esi
	.p2align	4, 0x90
.LBB14_103:                             # %b3219
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_105
# %bb.104:                              # %b3222
                                        #   in Loop: Header=BB14_103 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_106
	.p2align	4, 0x90
.LBB14_105:                             # %b3224
                                        #   in Loop: Header=BB14_103 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_106:                             # %b3224
                                        #   in Loop: Header=BB14_103 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB14_117
# %bb.107:                              # %b3217
                                        #   in Loop: Header=BB14_103 Depth=1
	incl	%esi
	jmp	.LBB14_103
.LBB14_108:                             # %b1775
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB14_121
# %bb.109:                              # %b3990
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3232
.LBB14_110:                             # %b3990
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_111:                             # %b3990
	movl	8(%edi), %esi
	movzbl	str52, %eax
	testl	%eax, %eax
	je	.LBB14_113
# %bb.112:                              # %b3284
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str52+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3263
	jmp	.LBB14_115
.LBB14_113:                             # %b1763
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB14_122
# %bb.114:                              # %b3987
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3242
.LBB14_115:                             # %b1663
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_116:                             # %b1663
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
.LBB14_117:                             # %b3199
	movzbl	str45, %eax
	testl	%eax, %eax
	je	.LBB14_119
# %bb.118:                              # %b3201
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str45+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB14_120
.LBB14_119:                             # %b295
	.cfi_def_cfa_offset 32
	addl	$12, %esp
	.cfi_def_cfa_offset 20
.LBB14_120:                             # %b295
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.LBB14_121:                             # %b3989
	.cfi_def_cfa_offset 32
	movl	%esi, users+52
	jmp	.LBB14_111
.LBB14_122:                             # %b3986
	movl	%esi, users+124
	jmp	.LBB14_116
.Lfunc_end14:
	.size	kernel, .Lfunc_end14-kernel
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2553
	.type	func_b2553,@function
func_b2553:                             # @func_b2553
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	cmpl	$31, %eax
	ja	.LBB15_3
	.p2align	4, 0x90
.LBB15_2:                               # %b2554
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%ecx)
	incl	%eax
	incl	%ecx
	cmpl	$31, %eax
	jbe	.LBB15_2
.LBB15_3:                               # %b2224
	retl
.Lfunc_end15:
	.size	func_b2553, .Lfunc_end15-func_b2553
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1280
	.type	func_b1280,@function
func_b1280:                             # @func_b1280
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
.LBB16_1:                               # %b1280
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, (%esi)
	incl	%edx
	addl	$2, %esi
	cmpl	%ecx, %edx
	jbe	.LBB16_1
# %bb.2:                                # %b295
	popl	%esi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end16:
	.size	func_b1280, .Lfunc_end16-func_b1280
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3972
	.type	func_b3972,@function
func_b3972:                             # @func_b3972
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
.LBB17_1:                               # %b3972
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	movl	%eax, %esi
	addl	%ecx, %esi
	cmpl	%ebp, %esi
	ja	.LBB17_3
# %bb.2:                                # %b1282
                                        #   in Loop: Header=BB17_1 Depth=1
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	56(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1280
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	$1, %eax
	jmp	.LBB17_1
.LBB17_3:                               # %b295
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
.Lfunc_end17:
	.size	func_b3972, .Lfunc_end17-func_b3972
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3049
	.type	func_b3049,@function
func_b3049:                             # @func_b3049
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
	jmp	.LBB18_1
	.p2align	4, 0x90
.LBB18_3:                               # %b3791
                                        #   in Loop: Header=BB18_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3031
.LBB18_4:                               # %b3049
                                        #   in Loop: Header=BB18_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$12, %edi
.LBB18_1:                               # %b3049
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB18_6
# %bb.2:                                # %b3051
                                        #   in Loop: Header=BB18_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str0, %edx
	testl	%edx, %edx
	je	.LBB18_3
# %bb.5:                                # %b3792
                                        #   in Loop: Header=BB18_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str0+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b3043
	jmp	.LBB18_4
.LBB18_6:                               # %b423
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end18:
	.size	func_b3049, .Lfunc_end18-func_b3049
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3720
	.type	func_b3720,@function
func_b3720:                             # @func_b3720
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
.LBB19_1:                               # %b3720
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_3
# %bb.2:                                # %b3807
                                        #   in Loop: Header=BB19_1 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_4
	.p2align	4, 0x90
.LBB19_3:                               # %b3808
                                        #   in Loop: Header=BB19_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_4:                               # %b3808
                                        #   in Loop: Header=BB19_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB19_6
# %bb.5:                                # %b3713
                                        #   in Loop: Header=BB19_1 Depth=1
	incl	%esi
	jmp	.LBB19_1
.LBB19_6:                               # %b1389
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
	calll	func_b3049
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB19_8
# %bb.7:                                # %b3710
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str12+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3702
	jmp	.LBB19_60
.LBB19_8:                               # %b1387
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
	calll	func_b3187
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB19_10
# %bb.9:                                # %b3692
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3684
	jmp	.LBB19_60
.LBB19_10:                              # %b1385
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB19_12
# %bb.11:                               # %b3672
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3600
	jmp	.LBB19_30
.LBB19_12:                              # %b3662
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB19_14
# %bb.13:                               # %b3664
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_14:                              # %b3650
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB19_17
# %bb.15:                               # %b3661
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_24
# %bb.16:                               # %b3656
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_25
.LBB19_17:                              # %b3643
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB19_21
# %bb.18:                               # %b3802
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB19_19:                              # %b3639
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB19_21
# %bb.20:                               # %b3637
                                        #   in Loop: Header=BB19_19 Depth=1
	incl	%edi
	jmp	.LBB19_19
.LBB19_21:                              # %b3626
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB19_26
# %bb.22:                               # %b3628
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB19_28
# %bb.23:                               # %b3632
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_29
.LBB19_24:                              # %b3658
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_25:                              # %b3658
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3476
	jmp	.LBB19_30
.LBB19_26:                              # %b2042
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB19_31
# %bb.27:                               # %b3617
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	jmp	.LBB19_30
.LBB19_28:                              # %b3634
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_29:                              # %b3634
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3436
.LBB19_30:                              # %b1977
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_31:                              # %b1977
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB19_38
# %bb.32:                               # %b3669
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB19_33:                              # %b3518
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_35
# %bb.34:                               # %b3521
                                        #   in Loop: Header=BB19_33 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_36
	.p2align	4, 0x90
.LBB19_35:                              # %b3523
                                        #   in Loop: Header=BB19_33 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_36:                              # %b3514
                                        #   in Loop: Header=BB19_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB19_38
# %bb.37:                               # %b3516
                                        #   in Loop: Header=BB19_33 Depth=1
	incl	%ebx
	jmp	.LBB19_33
.LBB19_38:                              # %b3509
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB19_40
# %bb.39:                               # %b3511
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_40:                              # %b3503
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB19_47
# %bb.41:                               # %b3508
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB19_42:                              # %b3480
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_44
# %bb.43:                               # %b3483
                                        #   in Loop: Header=BB19_42 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_45
	.p2align	4, 0x90
.LBB19_44:                              # %b3485
                                        #   in Loop: Header=BB19_42 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_45:                              # %b3476
                                        #   in Loop: Header=BB19_42 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB19_47
# %bb.46:                               # %b3478
                                        #   in Loop: Header=BB19_42 Depth=1
	incl	%ebx
	jmp	.LBB19_42
.LBB19_47:                              # %b3475
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB19_51
# %bb.48:                               # %b3799
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB19_49:                              # %b3471
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB19_51
# %bb.50:                               # %b3469
                                        #   in Loop: Header=BB19_49 Depth=1
	incl	%edi
	jmp	.LBB19_49
.LBB19_51:                              # %b3464
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB19_58
# %bb.52:                               # %b3466
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB19_53:                              # %b3440
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB19_55
# %bb.54:                               # %b3443
                                        #   in Loop: Header=BB19_53 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_56
	.p2align	4, 0x90
.LBB19_55:                              # %b3445
                                        #   in Loop: Header=BB19_53 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_56:                              # %b3436
                                        #   in Loop: Header=BB19_53 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB19_58
# %bb.57:                               # %b3438
                                        #   in Loop: Header=BB19_53 Depth=1
	incl	%edi
	jmp	.LBB19_53
.LBB19_58:                              # %b1379
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB19_61
# %bb.59:                               # %b3435
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
.LBB19_60:                              # %b295
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_61:                              # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end19:
	.size	func_b3720, .Lfunc_end19-func_b3720
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3187
	.type	func_b3187,@function
func_b3187:                             # @func_b3187
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
	jmp	.LBB20_1
	.p2align	4, 0x90
.LBB20_3:                               # %b3797
                                        #   in Loop: Header=BB20_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3169
.LBB20_4:                               # %b3187
                                        #   in Loop: Header=BB20_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$8, %edi
.LBB20_1:                               # %b3187
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB20_6
# %bb.2:                                # %b3189
                                        #   in Loop: Header=BB20_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str0, %edx
	testl	%edx, %edx
	je	.LBB20_3
# %bb.5:                                # %b3798
                                        #   in Loop: Header=BB20_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str0+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b3181
	jmp	.LBB20_4
.LBB20_6:                               # %b423
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end20:
	.size	func_b3187, .Lfunc_end20-func_b3187
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3702
	.type	func_b3702,@function
func_b3702:                             # @func_b3702
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
.LBB21_1:                               # %b3702
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_3
# %bb.2:                                # %b3805
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_4
	.p2align	4, 0x90
.LBB21_3:                               # %b3806
                                        #   in Loop: Header=BB21_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_4:                               # %b3806
                                        #   in Loop: Header=BB21_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB21_6
# %bb.5:                                # %b3695
                                        #   in Loop: Header=BB21_1 Depth=1
	incl	%esi
	jmp	.LBB21_1
.LBB21_6:                               # %b1387
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
	calll	func_b3187
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB21_8
# %bb.7:                                # %b3692
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3684
	jmp	.LBB21_58
.LBB21_8:                               # %b1385
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB21_10
# %bb.9:                                # %b3672
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3600
	jmp	.LBB21_28
.LBB21_10:                              # %b3662
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB21_12
# %bb.11:                               # %b3664
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_12:                              # %b3650
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB21_15
# %bb.13:                               # %b3661
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_22
# %bb.14:                               # %b3656
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_23
.LBB21_15:                              # %b3643
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB21_19
# %bb.16:                               # %b3802
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB21_17:                              # %b3639
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB21_19
# %bb.18:                               # %b3637
                                        #   in Loop: Header=BB21_17 Depth=1
	incl	%edi
	jmp	.LBB21_17
.LBB21_19:                              # %b3626
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB21_24
# %bb.20:                               # %b3628
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB21_26
# %bb.21:                               # %b3632
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_27
.LBB21_22:                              # %b3658
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_23:                              # %b3658
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3476
	jmp	.LBB21_28
.LBB21_24:                              # %b2042
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB21_29
# %bb.25:                               # %b3617
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	jmp	.LBB21_28
.LBB21_26:                              # %b3634
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_27:                              # %b3634
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3436
.LBB21_28:                              # %b1977
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_29:                              # %b1977
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB21_36
# %bb.30:                               # %b3669
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB21_31:                              # %b3518
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_33
# %bb.32:                               # %b3521
                                        #   in Loop: Header=BB21_31 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_34
	.p2align	4, 0x90
.LBB21_33:                              # %b3523
                                        #   in Loop: Header=BB21_31 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_34:                              # %b3514
                                        #   in Loop: Header=BB21_31 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB21_36
# %bb.35:                               # %b3516
                                        #   in Loop: Header=BB21_31 Depth=1
	incl	%ebx
	jmp	.LBB21_31
.LBB21_36:                              # %b3509
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB21_38
# %bb.37:                               # %b3511
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_38:                              # %b3503
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB21_45
# %bb.39:                               # %b3508
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB21_40:                              # %b3480
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_42
# %bb.41:                               # %b3483
                                        #   in Loop: Header=BB21_40 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_43
	.p2align	4, 0x90
.LBB21_42:                              # %b3485
                                        #   in Loop: Header=BB21_40 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_43:                              # %b3476
                                        #   in Loop: Header=BB21_40 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB21_45
# %bb.44:                               # %b3478
                                        #   in Loop: Header=BB21_40 Depth=1
	incl	%ebx
	jmp	.LBB21_40
.LBB21_45:                              # %b3475
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB21_49
# %bb.46:                               # %b3799
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB21_47:                              # %b3471
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB21_49
# %bb.48:                               # %b3469
                                        #   in Loop: Header=BB21_47 Depth=1
	incl	%edi
	jmp	.LBB21_47
.LBB21_49:                              # %b3464
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB21_56
# %bb.50:                               # %b3466
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB21_51:                              # %b3440
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB21_53
# %bb.52:                               # %b3443
                                        #   in Loop: Header=BB21_51 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_54
	.p2align	4, 0x90
.LBB21_53:                              # %b3445
                                        #   in Loop: Header=BB21_51 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_54:                              # %b3436
                                        #   in Loop: Header=BB21_51 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB21_56
# %bb.55:                               # %b3438
                                        #   in Loop: Header=BB21_51 Depth=1
	incl	%edi
	jmp	.LBB21_51
.LBB21_56:                              # %b1379
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB21_59
# %bb.57:                               # %b3435
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
.LBB21_58:                              # %b295
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_59:                              # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end21:
	.size	func_b3702, .Lfunc_end21-func_b3702
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3684
	.type	func_b3684,@function
func_b3684:                             # @func_b3684
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
.LBB22_1:                               # %b3684
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_3
# %bb.2:                                # %b3803
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_4
	.p2align	4, 0x90
.LBB22_3:                               # %b3804
                                        #   in Loop: Header=BB22_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_4:                               # %b3804
                                        #   in Loop: Header=BB22_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB22_6
# %bb.5:                                # %b3677
                                        #   in Loop: Header=BB22_1 Depth=1
	incl	%esi
	jmp	.LBB22_1
.LBB22_6:                               # %b1385
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB22_8
# %bb.7:                                # %b3672
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3600
	jmp	.LBB22_26
.LBB22_8:                               # %b3662
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB22_10
# %bb.9:                                # %b3664
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_10:                              # %b3650
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB22_13
# %bb.11:                               # %b3661
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_20
# %bb.12:                               # %b3656
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_21
.LBB22_13:                              # %b3643
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB22_17
# %bb.14:                               # %b3802
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB22_15:                              # %b3639
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB22_17
# %bb.16:                               # %b3637
                                        #   in Loop: Header=BB22_15 Depth=1
	incl	%edi
	jmp	.LBB22_15
.LBB22_17:                              # %b3626
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB22_22
# %bb.18:                               # %b3628
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB22_24
# %bb.19:                               # %b3632
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_25
.LBB22_20:                              # %b3658
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_21:                              # %b3658
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3476
	jmp	.LBB22_26
.LBB22_22:                              # %b2042
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB22_27
# %bb.23:                               # %b3617
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	jmp	.LBB22_26
.LBB22_24:                              # %b3634
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_25:                              # %b3634
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3436
.LBB22_26:                              # %b1977
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_27:                              # %b1977
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB22_34
# %bb.28:                               # %b3669
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB22_29:                              # %b3518
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_31
# %bb.30:                               # %b3521
                                        #   in Loop: Header=BB22_29 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_32
	.p2align	4, 0x90
.LBB22_31:                              # %b3523
                                        #   in Loop: Header=BB22_29 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_32:                              # %b3514
                                        #   in Loop: Header=BB22_29 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB22_34
# %bb.33:                               # %b3516
                                        #   in Loop: Header=BB22_29 Depth=1
	incl	%ebx
	jmp	.LBB22_29
.LBB22_34:                              # %b3509
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB22_36
# %bb.35:                               # %b3511
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_36:                              # %b3503
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB22_43
# %bb.37:                               # %b3508
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB22_38:                              # %b3480
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_40
# %bb.39:                               # %b3483
                                        #   in Loop: Header=BB22_38 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_41
	.p2align	4, 0x90
.LBB22_40:                              # %b3485
                                        #   in Loop: Header=BB22_38 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_41:                              # %b3476
                                        #   in Loop: Header=BB22_38 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB22_43
# %bb.42:                               # %b3478
                                        #   in Loop: Header=BB22_38 Depth=1
	incl	%ebx
	jmp	.LBB22_38
.LBB22_43:                              # %b3475
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB22_47
# %bb.44:                               # %b3799
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB22_45:                              # %b3471
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB22_47
# %bb.46:                               # %b3469
                                        #   in Loop: Header=BB22_45 Depth=1
	incl	%edi
	jmp	.LBB22_45
.LBB22_47:                              # %b3464
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB22_54
# %bb.48:                               # %b3466
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB22_49:                              # %b3440
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB22_51
# %bb.50:                               # %b3443
                                        #   in Loop: Header=BB22_49 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_52
	.p2align	4, 0x90
.LBB22_51:                              # %b3445
                                        #   in Loop: Header=BB22_49 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_52:                              # %b3436
                                        #   in Loop: Header=BB22_49 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB22_54
# %bb.53:                               # %b3438
                                        #   in Loop: Header=BB22_49 Depth=1
	incl	%edi
	jmp	.LBB22_49
.LBB22_54:                              # %b1379
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB22_56
# %bb.55:                               # %b3435
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_56:                              # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end22:
	.size	func_b3684, .Lfunc_end22-func_b3684
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3600
	.type	func_b3600,@function
func_b3600:                             # @func_b3600
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
.LBB23_1:                               # %b3600
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_3
# %bb.2:                                # %b3800
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_4
	.p2align	4, 0x90
.LBB23_3:                               # %b3801
                                        #   in Loop: Header=BB23_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_4:                               # %b3591
                                        #   in Loop: Header=BB23_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_5
# %bb.28:                               # %b3593
                                        #   in Loop: Header=BB23_1 Depth=1
	incl	%edi
	jmp	.LBB23_1
.LBB23_5:                               # %b3588
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB23_7
# %bb.6:                                # %b3590
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_7:                               # %b3590
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB23_8
# %bb.12:                               # %b3508
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB23_13:                              # %b3480
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB23_18
# %bb.14:                               # %b3483
                                        #   in Loop: Header=BB23_13 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_19
	.p2align	4, 0x90
.LBB23_18:                              # %b3485
                                        #   in Loop: Header=BB23_13 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_19:                              # %b3476
                                        #   in Loop: Header=BB23_13 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB23_8
# %bb.20:                               # %b3478
                                        #   in Loop: Header=BB23_13 Depth=1
	incl	%ebx
	jmp	.LBB23_13
.LBB23_8:                               # %b3475
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB23_9
# %bb.15:                               # %b3799
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB23_16:                              # %b3471
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB23_9
# %bb.17:                               # %b3469
                                        #   in Loop: Header=BB23_16 Depth=1
	incl	%edi
	jmp	.LBB23_16
.LBB23_9:                               # %b3464
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB23_10
# %bb.22:                               # %b3466
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB23_23:                              # %b3440
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_25
# %bb.24:                               # %b3443
                                        #   in Loop: Header=BB23_23 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_26
	.p2align	4, 0x90
.LBB23_25:                              # %b3445
                                        #   in Loop: Header=BB23_23 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_26:                              # %b3436
                                        #   in Loop: Header=BB23_23 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_10
# %bb.27:                               # %b3438
                                        #   in Loop: Header=BB23_23 Depth=1
	incl	%edi
	jmp	.LBB23_23
.LBB23_10:                              # %b1379
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB23_11
# %bb.21:                               # %b3435
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_11:                              # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end23:
	.size	func_b3600, .Lfunc_end23-func_b3600
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2994
	.type	func_b2994,@function
func_b2994:                             # @func_b2994
	.cfi_startproc
# %bb.0:                                # %b2994
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
	movzbl	str4, %ebx
	testl	%ebx, %ebx
	je	.LBB24_1
# %bb.10:                               # %b2996
	movl	$str4+1, %edi
	.p2align	4, 0x90
.LBB24_11:                              # %b2978
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_16
# %bb.12:                               # %b2981
                                        #   in Loop: Header=BB24_11 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_17
	.p2align	4, 0x90
.LBB24_16:                              # %b2983
                                        #   in Loop: Header=BB24_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_17:                              # %b2974
                                        #   in Loop: Header=BB24_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_1
# %bb.18:                               # %b2976
                                        #   in Loop: Header=BB24_11 Depth=1
	incl	%edi
	jmp	.LBB24_11
.LBB24_1:                               # %b1361
	movl	(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str5, %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.13:                               # %b2973
	movl	$str5+1, %edi
	.p2align	4, 0x90
.LBB24_14:                              # %b2965
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_22
# %bb.15:                               # %b2968
                                        #   in Loop: Header=BB24_14 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_23
	.p2align	4, 0x90
.LBB24_22:                              # %b2970
                                        #   in Loop: Header=BB24_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_23:                              # %b2961
                                        #   in Loop: Header=BB24_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.24:                               # %b2963
                                        #   in Loop: Header=BB24_14 Depth=1
	incl	%edi
	jmp	.LBB24_14
.LBB24_2:                               # %b1359
	movl	4(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str6, %ebx
	testl	%ebx, %ebx
	je	.LBB24_3
# %bb.19:                               # %b2960
	movl	$str6+1, %edi
	.p2align	4, 0x90
.LBB24_20:                              # %b2952
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_28
# %bb.21:                               # %b2955
                                        #   in Loop: Header=BB24_20 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_29
	.p2align	4, 0x90
.LBB24_28:                              # %b2957
                                        #   in Loop: Header=BB24_20 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_29:                              # %b2948
                                        #   in Loop: Header=BB24_20 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_3
# %bb.30:                               # %b2950
                                        #   in Loop: Header=BB24_20 Depth=1
	incl	%edi
	jmp	.LBB24_20
.LBB24_3:                               # %b1357
	movl	8(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	shrl	$4, %edi
	je	.LBB24_25
# %bb.4:                                # %b2003.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB24_5:                               # %b2003
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
	calll	func_b1242
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%esi)
	leal	1(%esi), %eax
	cmpl	$32, %eax
	jae	.LBB24_7
# %bb.6:                                # %b3931
                                        #   in Loop: Header=BB24_5 Depth=1
	shrl	$4, %edi
	jne	.LBB24_5
.LBB24_7:                               # %b2004
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3918
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB24_8:                               # %b2001
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB24_8
	jmp	.LBB24_9
.LBB24_25:                              # %b3925
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB24_27
# %bb.26:                               # %b3927
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
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
	calll	func_b3918
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB24_27:                              # %b2061
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB24_9:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end24:
	.size	func_b2994, .Lfunc_end24-func_b2994
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3514
	.type	func_b3514,@function
func_b3514:                             # @func_b3514
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
	jmp	.LBB25_1
	.p2align	4, 0x90
.LBB25_11:                              # %b3523
                                        #   in Loop: Header=BB25_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_12:                              # %b3514
                                        #   in Loop: Header=BB25_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_1:                               # %b3514
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_2
# %bb.10:                               # %b3516
                                        #   in Loop: Header=BB25_1 Depth=1
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB25_11
# %bb.9:                                # %b3521
                                        #   in Loop: Header=BB25_1 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_12
.LBB25_2:                               # %b3509
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB25_4
# %bb.3:                                # %b3511
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_4:                               # %b3511
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB25_5
# %bb.13:                               # %b3508
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB25_14:                              # %b3480
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB25_19
# %bb.15:                               # %b3483
                                        #   in Loop: Header=BB25_14 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_20
	.p2align	4, 0x90
.LBB25_19:                              # %b3485
                                        #   in Loop: Header=BB25_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_20:                              # %b3476
                                        #   in Loop: Header=BB25_14 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB25_5
# %bb.21:                               # %b3478
                                        #   in Loop: Header=BB25_14 Depth=1
	incl	%ebx
	jmp	.LBB25_14
.LBB25_5:                               # %b3475
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB25_6
# %bb.16:                               # %b3799
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB25_17:                              # %b3471
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB25_6
# %bb.18:                               # %b3469
                                        #   in Loop: Header=BB25_17 Depth=1
	incl	%edi
	jmp	.LBB25_17
.LBB25_6:                               # %b3464
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB25_7
# %bb.23:                               # %b3466
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB25_24:                              # %b3440
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB25_26
# %bb.25:                               # %b3443
                                        #   in Loop: Header=BB25_24 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_27
	.p2align	4, 0x90
.LBB25_26:                              # %b3445
                                        #   in Loop: Header=BB25_24 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_27:                              # %b3436
                                        #   in Loop: Header=BB25_24 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_7
# %bb.28:                               # %b3438
                                        #   in Loop: Header=BB25_24 Depth=1
	incl	%edi
	jmp	.LBB25_24
.LBB25_7:                               # %b1379
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB25_8
# %bb.22:                               # %b3435
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_8:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end25:
	.size	func_b3514, .Lfunc_end25-func_b3514
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3476
	.type	func_b3476,@function
func_b3476:                             # @func_b3476
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
	jmp	.LBB26_1
	.p2align	4, 0x90
.LBB26_11:                              # %b3485
                                        #   in Loop: Header=BB26_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_12:                              # %b3476
                                        #   in Loop: Header=BB26_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_1:                               # %b3476
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_2
# %bb.10:                               # %b3478
                                        #   in Loop: Header=BB26_1 Depth=1
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_11
# %bb.9:                                # %b3483
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_12
.LBB26_2:                               # %b3475
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB26_3
# %bb.6:                                # %b3799
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB26_7:                               # %b3471
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB26_3
# %bb.8:                                # %b3469
                                        #   in Loop: Header=BB26_7 Depth=1
	incl	%edi
	jmp	.LBB26_7
.LBB26_3:                               # %b3464
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB26_4
# %bb.14:                               # %b3466
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB26_15:                              # %b3440
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_17
# %bb.16:                               # %b3443
                                        #   in Loop: Header=BB26_15 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_18
	.p2align	4, 0x90
.LBB26_17:                              # %b3445
                                        #   in Loop: Header=BB26_15 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_18:                              # %b3436
                                        #   in Loop: Header=BB26_15 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_4
# %bb.19:                               # %b3438
                                        #   in Loop: Header=BB26_15 Depth=1
	incl	%edi
	jmp	.LBB26_15
.LBB26_4:                               # %b1379
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB26_5
# %bb.13:                               # %b3435
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_5:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end26:
	.size	func_b3476, .Lfunc_end26-func_b3476
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3436
	.type	func_b3436,@function
func_b3436:                             # @func_b3436
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
.LBB27_7:                               # %b3445
                                        #   in Loop: Header=BB27_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_8:                               # %b3436
                                        #   in Loop: Header=BB27_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_1:                               # %b3436
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB27_2
# %bb.6:                                # %b3438
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_7
# %bb.5:                                # %b3443
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_8
.LBB27_2:                               # %b1379
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB27_4
# %bb.3:                                # %b3435
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_4:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end27:
	.size	func_b3436, .Lfunc_end27-func_b3436
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3281
	.type	func_b3281,@function
func_b3281:                             # @func_b3281
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
.LBB28_1:                               # %b3281
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB28_3
# %bb.2:                                # %b3809
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_4
	.p2align	4, 0x90
.LBB28_3:                               # %b3810
                                        #   in Loop: Header=BB28_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_4:                               # %b3272
                                        #   in Loop: Header=BB28_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB28_5
# %bb.9:                                # %b3274
                                        #   in Loop: Header=BB28_1 Depth=1
	incl	%edi
	jmp	.LBB28_1
.LBB28_5:                               # %b1561
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB28_6
# %bb.8:                                # %b3266
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3232
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB28_7
.LBB28_6:                               # %b1565
	movl	%esi, users+52
.LBB28_7:                               # %b1565
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end28:
	.size	func_b3281, .Lfunc_end28-func_b3281
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3232
	.type	func_b3232,@function
func_b3232:                             # @func_b3232
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
.LBB29_1:                               # %b3232
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_3
# %bb.2:                                # %b3235
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_4
	.p2align	4, 0x90
.LBB29_3:                               # %b3237
                                        #   in Loop: Header=BB29_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_4:                               # %b3228
                                        #   in Loop: Header=BB29_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB29_5
# %bb.6:                                # %b3230
                                        #   in Loop: Header=BB29_1 Depth=1
	incl	%edi
	jmp	.LBB29_1
.LBB29_5:                               # %b1565
	movl	%esi, users+52
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end29:
	.size	func_b3232, .Lfunc_end29-func_b3232
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3263
	.type	func_b3263,@function
func_b3263:                             # @func_b3263
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
.LBB30_1:                               # %b3263
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB30_3
# %bb.2:                                # %b3811
                                        #   in Loop: Header=BB30_1 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_3:                               # %b3812
                                        #   in Loop: Header=BB30_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB30_4:                               # %b3254
                                        #   in Loop: Header=BB30_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB30_5
# %bb.9:                                # %b3256
                                        #   in Loop: Header=BB30_1 Depth=1
	incl	%edi
	jmp	.LBB30_1
.LBB30_5:                               # %b1572
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB30_6
# %bb.8:                                # %b3253
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3242
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB30_7
.LBB30_6:                               # %b1576
	movl	%esi, users+124
.LBB30_7:                               # %b1576
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end30:
	.size	func_b3263, .Lfunc_end30-func_b3263
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3242
	.type	func_b3242,@function
func_b3242:                             # @func_b3242
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
.LBB31_1:                               # %b3242
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB31_3
# %bb.2:                                # %b3245
                                        #   in Loop: Header=BB31_1 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_4
	.p2align	4, 0x90
.LBB31_3:                               # %b3247
                                        #   in Loop: Header=BB31_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_4:                               # %b3238
                                        #   in Loop: Header=BB31_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB31_5
# %bb.6:                                # %b3240
                                        #   in Loop: Header=BB31_1 Depth=1
	incl	%edi
	jmp	.LBB31_1
.LBB31_5:                               # %b1576
	movl	%esi, users+124
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end31:
	.size	func_b3242, .Lfunc_end31-func_b3242
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3169
	.type	func_b3169,@function
func_b3169:                             # @func_b3169
	.cfi_startproc
# %bb.0:                                # %b3169
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
	je	.LBB32_1
# %bb.7:                                # %b3171
	movl	$str13+1, %esi
	.p2align	4, 0x90
.LBB32_8:                               # %b3168
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB32_1
# %bb.9:                                # %b3166
                                        #   in Loop: Header=BB32_8 Depth=1
	incl	%esi
	jmp	.LBB32_8
.LBB32_1:                               # %b3161
	movl	32(%esp), %esi
	movzbl	str1, %ebx
	testl	%ebx, %ebx
	je	.LBB32_2
# %bb.10:                               # %b3163
	movl	$str1+1, %edi
	.p2align	4, 0x90
.LBB32_11:                              # %b3155
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB32_16
# %bb.12:                               # %b3158
                                        #   in Loop: Header=BB32_11 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_17
	.p2align	4, 0x90
.LBB32_16:                              # %b3160
                                        #   in Loop: Header=BB32_11 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_17:                              # %b3151
                                        #   in Loop: Header=BB32_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB32_2
# %bb.18:                               # %b3153
                                        #   in Loop: Header=BB32_11 Depth=1
	incl	%edi
	jmp	.LBB32_11
.LBB32_2:                               # %b1896
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
	calll	func_b1242
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
	calll	func_b3981
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB32_3
# %bb.13:                               # %b3150
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB32_14:                              # %b3142
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB32_23
# %bb.15:                               # %b3145
                                        #   in Loop: Header=BB32_14 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_24
	.p2align	4, 0x90
.LBB32_23:                              # %b3147
                                        #   in Loop: Header=BB32_14 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_24:                              # %b3138
                                        #   in Loop: Header=BB32_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB32_3
# %bb.25:                               # %b3140
                                        #   in Loop: Header=BB32_14 Depth=1
	incl	%edi
	jmp	.LBB32_14
.LBB32_3:                               # %b3129
	movl	36(%esp), %edi
	movzbl	str7, %ebp
	testl	%ebp, %ebp
	je	.LBB32_4
# %bb.20:                               # %b3131
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str7+1, %ebx
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB32_21
# %bb.19:                               # %b3135
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_22
.LBB32_4:                               # %b2114
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
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str8, %ebp
	testl	%ebp, %ebp
	je	.LBB32_5
# %bb.27:                               # %b3103
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB32_28
# %bb.26:                               # %b3107
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_29
.LBB32_21:                              # %b3137
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_22:                              # %b3137
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3113
	jmp	.LBB32_30
.LBB32_5:                               # %b2115
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
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB32_31
# %bb.6:                                # %b3079
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	jmp	.LBB32_30
.LBB32_28:                              # %b3109
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_29:                              # %b3109
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3085
.LBB32_30:                              # %b3109
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB32_31:                              # %b3109
	movzbl	str3, %edi
	testl	%edi, %edi
	je	.LBB32_38
# %bb.32:                               # %b3125
	movl	$str3+1, %ebx
	.p2align	4, 0x90
.LBB32_33:                              # %b3065
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB32_35
# %bb.34:                               # %b3068
                                        #   in Loop: Header=BB32_33 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_36
	.p2align	4, 0x90
.LBB32_35:                              # %b3070
                                        #   in Loop: Header=BB32_33 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_36:                              # %b3061
                                        #   in Loop: Header=BB32_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB32_38
# %bb.37:                               # %b3063
                                        #   in Loop: Header=BB32_33 Depth=1
	incl	%ebx
	jmp	.LBB32_33
.LBB32_38:                              # %b1363
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
.Lfunc_end32:
	.size	func_b3169, .Lfunc_end32-func_b3169
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
.LBB33_1:                               # %b3181
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB33_3
# %bb.2:                                # %b3793
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_4
	.p2align	4, 0x90
.LBB33_3:                               # %b3794
                                        #   in Loop: Header=BB33_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_4:                               # %b3172
                                        #   in Loop: Header=BB33_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB33_5
# %bb.6:                                # %b3174
                                        #   in Loop: Header=BB33_1 Depth=1
	incl	%ebx
	jmp	.LBB33_1
.LBB33_5:                               # %c267
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3169
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
.Lfunc_end33:
	.size	func_b3181, .Lfunc_end33-func_b3181
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3981
	.type	func_b3981,@function
func_b3981:                             # @func_b3981
	.cfi_startproc
# %bb.0:                                # %b3981
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
	ja	.LBB34_2
# %bb.1:                                # %b3983
	movl	44(%esp), %eax
	movl	$-858993459, %ebp               # imm = 0xCCCCCCCD
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	je	.LBB34_2
	.p2align	4, 0x90
.LBB34_5:                               # %b2010
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
	calll	func_b1242
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%ebx)
	leal	1(%ebx), %ecx
	cmpl	$32, %ecx
	jae	.LBB34_7
# %bb.6:                                # %b3975
                                        #   in Loop: Header=BB34_5 Depth=1
	movl	%esi, %eax
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	jne	.LBB34_5
.LBB34_7:                               # %b2004
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3918
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB34_8:                               # %b2001
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%ebx), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%ebx
	jns	.LBB34_8
# %bb.9:                                # %b295
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	jmp	.LBB34_10
.LBB34_2:                               # %b3925
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB34_4
# %bb.3:                                # %b3927
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
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
	calll	func_b3918
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB34_4:                               # %b2061
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
.LBB34_10:                              # %b295
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end34:
	.size	func_b3981, .Lfunc_end34-func_b3981
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3113
	.type	func_b3113,@function
func_b3113:                             # @func_b3113
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
	jmp	.LBB35_1
	.p2align	4, 0x90
.LBB35_7:                               # %b3122
                                        #   in Loop: Header=BB35_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_8:                               # %b3113
                                        #   in Loop: Header=BB35_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_1:                               # %b3113
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_2
# %bb.6:                                # %b3115
                                        #   in Loop: Header=BB35_1 Depth=1
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_7
# %bb.5:                                # %b3120
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_8
.LBB35_2:                               # %b1373
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
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str8, %ebx
	testl	%ebx, %ebx
	je	.LBB35_3
# %bb.10:                               # %b3112
	movl	$str8+1, %edi
	.p2align	4, 0x90
.LBB35_11:                              # %b3089
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_13
# %bb.12:                               # %b3092
                                        #   in Loop: Header=BB35_11 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_14
	.p2align	4, 0x90
.LBB35_13:                              # %b3094
                                        #   in Loop: Header=BB35_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_14:                              # %b3085
                                        #   in Loop: Header=BB35_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_3
# %bb.15:                               # %b3087
                                        #   in Loop: Header=BB35_11 Depth=1
	incl	%edi
	jmp	.LBB35_11
.LBB35_3:                               # %b1371
	movl	4(%esi), %esi
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB35_4
# %bb.9:                                # %b3084
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_4:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end35:
	.size	func_b3113, .Lfunc_end35-func_b3113
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3085
	.type	func_b3085,@function
func_b3085:                             # @func_b3085
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
	jmp	.LBB36_1
	.p2align	4, 0x90
.LBB36_7:                               # %b3094
                                        #   in Loop: Header=BB36_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_8:                               # %b3085
                                        #   in Loop: Header=BB36_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_1:                               # %b3085
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB36_2
# %bb.6:                                # %b3087
                                        #   in Loop: Header=BB36_1 Depth=1
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB36_7
# %bb.5:                                # %b3092
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_8
.LBB36_2:                               # %b1371
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
	calll	func_b1242
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
	calll	func_b3934
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB36_4
# %bb.3:                                # %b3084
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2915
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_4:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end36:
	.size	func_b3085, .Lfunc_end36-func_b3085
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3031
	.type	func_b3031,@function
func_b3031:                             # @func_b3031
	.cfi_startproc
# %bb.0:                                # %b3031
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
	je	.LBB37_1
# %bb.5:                                # %b3033
	movl	$str11+1, %esi
	.p2align	4, 0x90
.LBB37_6:                               # %b3030
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB37_1
# %bb.7:                                # %b3028
                                        #   in Loop: Header=BB37_6 Depth=1
	incl	%esi
	jmp	.LBB37_6
.LBB37_1:                               # %b3023
	movl	32(%esp), %esi
	movzbl	str1, %ebx
	testl	%ebx, %ebx
	je	.LBB37_2
# %bb.8:                                # %b3025
	movl	$str1+1, %edi
	.p2align	4, 0x90
.LBB37_9:                               # %b3017
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_14
# %bb.10:                               # %b3020
                                        #   in Loop: Header=BB37_9 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_15
	.p2align	4, 0x90
.LBB37_14:                              # %b3022
                                        #   in Loop: Header=BB37_9 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_15:                              # %b3013
                                        #   in Loop: Header=BB37_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_2
# %bb.16:                               # %b3015
                                        #   in Loop: Header=BB37_9 Depth=1
	incl	%edi
	jmp	.LBB37_9
.LBB37_2:                               # %b1832
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
	calll	func_b1242
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
	calll	func_b3981
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str2, %ebp
	testl	%ebp, %ebp
	je	.LBB37_3
# %bb.11:                               # %b3012
	movl	$str2+1, %ebx
	.p2align	4, 0x90
.LBB37_12:                              # %b3004
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB37_20
# %bb.13:                               # %b3007
                                        #   in Loop: Header=BB37_12 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_21
	.p2align	4, 0x90
.LBB37_20:                              # %b3009
                                        #   in Loop: Header=BB37_12 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_21:                              # %b3000
                                        #   in Loop: Header=BB37_12 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB37_3
# %bb.22:                               # %b3002
                                        #   in Loop: Header=BB37_12 Depth=1
	incl	%ebx
	jmp	.LBB37_12
.LBB37_3:                               # %b1833
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2994
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str3, %ebx
	testl	%ebx, %ebx
	je	.LBB37_4
# %bb.17:                               # %b2999
	movl	$str3+1, %edi
	.p2align	4, 0x90
.LBB37_18:                              # %b2988
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_23
# %bb.19:                               # %b2991
                                        #   in Loop: Header=BB37_18 Depth=1
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_24
	.p2align	4, 0x90
.LBB37_23:                              # %b2993
                                        #   in Loop: Header=BB37_18 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_24:                              # %b2984
                                        #   in Loop: Header=BB37_18 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_4
# %bb.25:                               # %b2986
                                        #   in Loop: Header=BB37_18 Depth=1
	incl	%edi
	jmp	.LBB37_18
.LBB37_4:                               # %b1363
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
.Lfunc_end37:
	.size	func_b3031, .Lfunc_end37-func_b3031
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3043
	.type	func_b3043,@function
func_b3043:                             # @func_b3043
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
.LBB38_1:                               # %b3043
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
	calll	func_b1206
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB38_3
# %bb.2:                                # %b3787
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
	calll	func_b1206
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_4
	.p2align	4, 0x90
.LBB38_3:                               # %b3788
                                        #   in Loop: Header=BB38_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_4:                               # %b3034
                                        #   in Loop: Header=BB38_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1427
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB38_5
# %bb.6:                                # %b3036
                                        #   in Loop: Header=BB38_1 Depth=1
	incl	%ebx
	jmp	.LBB38_1
.LBB38_5:                               # %c191
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3031
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
.Lfunc_end38:
	.size	func_b3043, .Lfunc_end38-func_b3043
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
	.type	raw.5,@object                   # @raw.5
	.local	raw.5
	.comm	raw.5,4,1
	.type	raw.6,@object                   # @raw.6
	.local	raw.6
	.comm	raw.6,1,1
	.type	raw.8,@object                   # @raw.8
	.local	raw.8
	.comm	raw.8,1,1
	.type	raw.7,@object                   # @raw.7
	.local	raw.7
	.comm	raw.7,1,1
	.type	raw.4,@object                   # @raw.4
	.local	raw.4
	.comm	raw.4,4,4
	.type	.Lstr.12,@object                # @str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.12:
	.asciz	"\n"
	.size	.Lstr.12, 2

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	", frame=0x"
	.size	.Lstr.11, 11

	.type	raw.10,@object                  # @raw.10
	.local	raw.10
	.comm	raw.10,32,1
	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"Exception 0x"
	.size	.Lstr.9, 13

	.type	.Lstr.42,@object                # @str.42
.Lstr.42:
	.asciz	"\n"
	.size	.Lstr.42, 2

	.type	.Lstr.41,@object                # @str.41
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.41:
	.asciz	"user code is at 0x"
	.size	.Lstr.41, 19

	.type	.Lstr.40,@object                # @str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.40:
	.asciz	"\n"
	.size	.Lstr.40, 2

	.type	.Lstr.33,@object                # @str.33
.Lstr.33:
	.asciz	"]\n"
	.size	.Lstr.33, 3

	.type	.Lstr.39,@object                # @str.39
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.39:
	.asciz	"Found header for second user program:\n"
	.size	.Lstr.39, 39

	.type	.Lstr.43,@object                # @str.43
	.p2align	4
.Lstr.43:
	.asciz	"Did not find second user program\n"
	.size	.Lstr.43, 34

	.type	.Lstr.32,@object                # @str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.32:
	.asciz	" ["
	.size	.Lstr.32, 3

	.type	.Lstr.38,@object                # @str.38
.Lstr.38:
	.asciz	"\n"
	.size	.Lstr.38, 2

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	"], entry 0x"
	.size	.Lstr.21, 12

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"-0x"
	.size	.Lstr.20, 4

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"[0x"
	.size	.Lstr.19, 4

	.type	.Lstr.34,@object                # @str.34
.Lstr.34:
	.asciz	"imgline"
	.size	.Lstr.34, 8

	.type	.Lstr.31,@object                # @str.31
.Lstr.31:
	.asciz	": "
	.size	.Lstr.31, 3

	.type	.Lstr.37,@object                # @str.37
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.37:
	.asciz	"Found header for first user program:\n"
	.size	.Lstr.37, 38

	.type	.Lstr.30,@object                # @str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.30:
	.asciz	"cmdline"
	.size	.Lstr.30, 8

	.type	.Lstr.36,@object                # @str.36
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.36:
	.asciz	"\nHalting kernel, returning to mimgload\n"
	.size	.Lstr.36, 40

	.type	.Lstr.29,@object                # @str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.29:
	.asciz	" "
	.size	.Lstr.29, 2

	.type	.Lstr.35,@object                # @str.35
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.35:
	.asciz	"Did not find first user program\n"
	.size	.Lstr.35, 33

	.type	.Lstr.28,@object                # @str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.28:
	.asciz	"Strings:\n"
	.size	.Lstr.28, 10

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"\n"
	.size	.Lstr.22, 2

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"]"
	.size	.Lstr.27, 2

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"-0x"
	.size	.Lstr.26, 4

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"[0x"
	.size	.Lstr.25, 4

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"]: "
	.size	.Lstr.18, 4

	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	"["
	.size	.Lstr.17, 2

	.type	.Lstr.24,@object                # @str.24
.Lstr.24:
	.asciz	"mmap"
	.size	.Lstr.24, 5

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	" "
	.size	.Lstr.15, 2

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"Memory map:\n"
	.size	.Lstr.23, 13

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"header"
	.size	.Lstr.16, 7

	.type	.Lstr.14,@object                # @str.14
.Lstr.14:
	.asciz	"Headers:\n"
	.size	.Lstr.14, 10

	.type	.Lstr.13,@object                # @str.13
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.13:
	.asciz	" Last key pressed:"
	.size	.Lstr.13, 19

.set current, raw.0
.set users, raw.1
.set console, raw.2
.set keyDown, raw.3
.set ticks, raw.4
.set pos, raw.7
.set dir, raw.8
.set spinpos, raw.6
.set spinner, raw.5
.set str54, .Lstr.9
	.size	str54, 1
.set itoaBuf, raw.10
.set str55, .Lstr.11
	.size	str55, 1
.set str56, .Lstr.12
	.size	str56, 1
.set str44, .Lstr.13
	.size	str44, 1
.set str10, .Lstr.14
	.size	str10, 1
.set str12, .Lstr.23
	.size	str12, 1
.set str14, .Lstr.28
	.size	str14, 1
.set str51, .Lstr.35
	.size	str51, 1
.set str17, .Lstr.29
	.size	str17, 1
.set str45, .Lstr.36
	.size	str45, 1
.set str15, .Lstr.30
	.size	str15, 1
.set str46, .Lstr.37
	.size	str46, 1
.set str18, .Lstr.31
	.size	str18, 1
.set str16, .Lstr.34
	.size	str16, 1
.set str47, .Lstr.38
	.size	str47, 1
.set str19, .Lstr.32
	.size	str19, 1
.set str50, .Lstr.43
	.size	str50, 1
.set str48, .Lstr.39
	.size	str48, 1
.set str20, .Lstr.33
	.size	str20, 1
.set str49, .Lstr.40
	.size	str49, 1
.set str52, .Lstr.41
	.size	str52, 1
.set str53, .Lstr.42
	.size	str53, 1
.set str4, .Lstr.19
	.size	str4, 1
.set str5, .Lstr.20
	.size	str5, 1
.set str6, .Lstr.21
	.size	str6, 1
.set str0, .Lstr.15
	.size	str0, 1
.set str13, .Lstr.24
	.size	str13, 1
.set str1, .Lstr.17
	.size	str1, 1
.set str2, .Lstr.18
	.size	str2, 1
.set str7, .Lstr.25
	.size	str7, 1
.set str8, .Lstr.26
	.size	str8, 1
.set str9, .Lstr.27
	.size	str9, 1
.set str3, .Lstr.22
	.size	str3, 1
.set str11, .Lstr.16
	.size	str11, 1
	.section	".note.GNU-stack","",@progbits
