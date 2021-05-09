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
	calll	func_b1309
	cmpl	$10, %edi
	jne	.LBB1_2
# %bb.1:                                # %b1967
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b1309
.LBB1_2:                                # %b1968
	movl	%edi, (%esp)
	calll	func_b1580
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
	.p2align	4, 0x90                         # -- Begin function func_b1309
	.type	func_b1309,@function
func_b1309:                             # @func_b1309
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
.LBB2_3:                                # %b2873
	movw	$1016, %dx                      # imm = 0x3F8
	movl	%ecx, %eax
	#APP
	outb	%al, %dx
	#NO_APP
	retl
.Lfunc_end2:
	.size	func_b1309, .Lfunc_end2-func_b1309
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1580
	.type	func_b1580,@function
func_b1580:                             # @func_b1580
	.cfi_startproc
# %bb.0:                                # %b1580
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
# %bb.7:                                # %b1585
	cmpl	$10, %edx
	je	.LBB3_1
# %bb.8:                                # %b1587
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
# %bb.9:                                # %b4349
	movb	%cl, console+5
	jmp	.LBB3_10
.LBB3_1:                                # %b1582
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB3_3
# %bb.2:                                # %b4345
	movb	%al, console+4
	jmp	.LBB3_10
.LBB3_3:                                # %b1584
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
.LBB3_4:                                # %b4336
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
	calll	func_b1317
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB3_4
.LBB3_5:                                # %b1315.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB3_6:                                # %b1315
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
	.size	func_b1580, .Lfunc_end3-func_b1580
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1317
	.type	func_b1317,@function
func_b1317:                             # @func_b1317
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
.LBB4_1:                                # %b1317
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
	.size	func_b1317, .Lfunc_end4-func_b1317
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
# %bb.1:                                # %b960
	movl	%eax, %edx
	andl	$127, %edx
	movzbl	(%ecx,%edx), %edx
	movzbl	753703, %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, 753702
	movb	%dl, keyDown
.LBB5_2:                                # %b959
	movl	%eax, %edx
	shrl	$7, %edx
	cmpl	$1, %edx
	jne	.LBB5_4
# %bb.3:                                # %b957
	andl	$127, %eax
	movb	(%ecx,%eax), %al
	movb	%al, keyUp
.LBB5_4:                                # %b1116
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
	calll	func_b1345
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
	calll	func_b1345
	orl	%edi, %eax
	movw	%ax, 753816
	movl	$75, %edi
	movl	$753814, %ebp                   # imm = 0xB8096
	.p2align	4, 0x90
.LBB6_1:                                # %b4424
                                        # =>This Inner Loop Header: Depth=1
	shrl	$4, %esi
	movzbl	1(%ebp), %ebx
	shll	$8, %ebx
	movl	%esi, %eax
	andl	$15, %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	func_b1345
	orl	%ebx, %eax
	movw	%ax, (%ebp)
	decl	%edi
	addl	$-2, %ebp
	cmpl	$69, %edi
	jg	.LBB6_1
# %bb.2:                                # %b1817
	calll	func_b1074
	movl	ball+8, %esi
	movzbl	console+1, %ecx
	movzbl	console+3, %eax
	subl	%ecx, %eax
	cmpl	$79, %eax
	ja	.LBB6_4
# %bb.3:                                # %b4222
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	func_b4212
	movl	paddle+8, %esi
	movzbl	console+1, %ecx
	movzbl	console+3, %eax
	subl	%ecx, %eax
	cmpl	$80, %eax
	jae	.LBB6_5
	jmp	.LBB6_6
.LBB6_4:                                # %b1959
	calll	func_b3274
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	func_b4212
	movl	paddle+8, %esi
	movzbl	console+1, %ecx
	movzbl	console+3, %eax
	subl	%ecx, %eax
	cmpl	$79, %eax
	jbe	.LBB6_6
.LBB6_5:                                # %b1949
	calll	func_b3274
.LBB6_6:                                # %b1949
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	calll	func_b4207
	movzbl	keyDown, %ecx
	cmpl	$54, %ecx
	movzbl	keyUp, %eax
	movl	8(%esp), %ebx                   # 4-byte Reload
	jne	.LBB6_9
# %bb.7:                                # %b1658
	cmpl	$54, %eax
	je	.LBB6_9
# %bb.8:                                # %b1659
	incl	paddle+8
.LBB6_9:                                # %b1659
	cmpl	$52, %ecx
	jne	.LBB6_12
# %bb.10:                               # %b1660
	cmpl	$52, %eax
	je	.LBB6_12
# %bb.11:                               # %b1661
	decl	paddle+8
.LBB6_12:                               # %b1661
	testb	$3, %bl
	jne	.LBB6_21
# %bb.13:                               # %b1369
	movzbl	pos, %esi
	movl	%esi, (%esp)
	movl	$32, 4(%esp)
	calll	func_b851
	cmpb	$0, dir
	je	.LBB6_19
# %bb.14:                               # %b4421
	leal	1(%esi), %eax
	cmpl	$69, %eax
	jae	.LBB6_17
# %bb.15:                               # %b4419
	movl	%eax, (%esp)
	movl	$62, 4(%esp)
	jmp	.LBB6_16
.LBB6_19:                               # %b4416
	leal	-1(%esi), %eax
	cmpl	$45, %eax
	jle	.LBB6_20
# %bb.18:                               # %b4414
	movl	%eax, (%esp)
	movl	$60, 4(%esp)
.LBB6_16:                               # %b4419
	movl	%eax, %esi
	calll	func_b851
	movl	%esi, %eax
	movb	%al, pos
	testb	$15, %bl
	jne	.LBB6_26
	jmp	.LBB6_22
.LBB6_17:                               # %b1372
	movl	%esi, (%esp)
	movl	$124, 4(%esp)
	calll	func_b851
	movb	$0, dir
.LBB6_21:                               # %b951
	testb	$15, %bl
	jne	.LBB6_26
.LBB6_22:                               # %b949
	movzbl	current, %eax
	incl	%eax
	cmpl	$2, %eax
	jae	.LBB6_24
# %bb.23:                               # %b4409
	andl	$1, %eax
	movb	%al, current
	jmp	.LBB6_25
.LBB6_24:                               # %b2572
	movb	$0, current
.LBB6_25:                               # %b1804
	movzbl	spinpos, %eax
	movzbl	spinner(%eax), %ecx
	incb	%al
	andb	$3, %al
	movb	%al, spinpos
	movzbl	753823, %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movw	%ax, 753822
.LBB6_26:                               # %b1116
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
.LBB6_20:                               # %b1375
	.cfi_def_cfa_offset 32
	movl	%esi, (%esp)
	movl	$124, 4(%esp)
	calll	func_b851
	movb	$1, dir
	testb	$15, %bl
	jne	.LBB6_26
	jmp	.LBB6_22
.Lfunc_end6:
	.size	timerInterrupt, .Lfunc_end6-timerInterrupt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1345
	.type	func_b1345,@function
func_b1345:                             # @func_b1345
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %ecx
	movl	4(%esp), %eax
	cmpl	%ecx, %eax
	ja	.LBB7_2
# %bb.1:                                # %b988
	addl	$48, %eax
	movzbl	%al, %eax
	retl
.LBB7_2:                                # %b989
	addl	$87, %eax
	movzbl	%al, %eax
	retl
.Lfunc_end7:
	.size	func_b1345, .Lfunc_end7-func_b1345
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1074
	.type	func_b1074,@function
func_b1074:                             # @func_b1074
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
.LBB8_1:                                # %b1378
                                        # =>This Inner Loop Header: Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	calll	func_b1376
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%ebx
	cmpl	%esi, %ebx
	jbe	.LBB8_1
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
.Lfunc_end8:
	.size	func_b1074, .Lfunc_end8-func_b1074
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4212
	.type	func_b4212,@function
func_b4212:                             # @func_b4212
	.cfi_startproc
# %bb.0:                                # %b4212
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
	movl	36(%esp), %eax
	movl	32(%esp), %esi
	cmpl	%eax, %esi
	ja	.LBB9_7
# %bb.1:                                # %b4404
	movl	ball+12, %edi
	movzbl	console, %ecx
	movzbl	console+2, %ebx
	subl	%ecx, %ebx
	cmpl	$25, %ebx
	jae	.LBB9_6
# %bb.2:                                # %b4457
	cmpl	%ebx, %edi
	ja	.LBB9_7
# %bb.3:                                # %b4465
	movl	ball, %edx
	movl	ball+4, %ecx
	leal	-1(%esi,%edx), %ebp
	cmpl	%eax, %ebp
	ja	.LBB9_8
# %bb.4:                                # %b4455
	leal	-1(%edi,%ecx), %eax
	cmpl	%ebx, %eax
	ja	.LBB9_14
# %bb.5:
	movl	%eax, %ebx
	jmp	.LBB9_14
.LBB9_6:                                # %b4458
	testl	%edi, %edi
	jne	.LBB9_7
# %bb.10:                               # %b4464
	movl	ball, %ecx
	movl	ball+4, %ebx
	leal	-1(%esi,%ecx), %ebp
	addl	%edi, %ebx
	cmpl	%eax, %ebp
	ja	.LBB9_11
# %bb.13:                               # %b4453
	decl	%ebx
	jne	.LBB9_12
	jmp	.LBB9_14
.LBB9_8:                                # %b4456
	leal	-1(%edi,%ecx), %ecx
	cmpl	%ebx, %ecx
	ja	.LBB9_15
# %bb.9:
	movl	%ecx, %ebx
	movl	%eax, %ebp
	jmp	.LBB9_14
.LBB9_11:                               # %b4454
	decl	%ebx
	movl	%eax, %ebp
	je	.LBB9_14
	.p2align	4, 0x90
.LBB9_12:                               # %b1634
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1383
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%edi
	je	.LBB9_12
	jmp	.LBB9_7
.LBB9_15:                               # %g67
	movl	%eax, %ebp
	.p2align	4, 0x90
.LBB9_14:                               # %b1385
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1383
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%edi
	cmpl	%ebx, %edi
	jbe	.LBB9_14
.LBB9_7:                                # %b303
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
	.size	func_b4212, .Lfunc_end9-func_b4212
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3274
	.type	func_b3274,@function
func_b3274:                             # @func_b3274
	.cfi_startproc
# %bb.0:                                # %b3274
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
	je	.LBB10_7
# %bb.1:                                # %b3276
	movl	$str0+1, %esi
	.p2align	4, 0x90
.LBB10_2:                               # %b3265
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB10_4
# %bb.3:                                # %b3268
                                        #   in Loop: Header=BB10_2 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB10_5
	.p2align	4, 0x90
.LBB10_4:                               # %b3270
                                        #   in Loop: Header=BB10_2 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB10_5:                               # %b3270
                                        #   in Loop: Header=BB10_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB10_7
# %bb.6:                                # %b3263
                                        #   in Loop: Header=BB10_2 Depth=1
	incl	%esi
	jmp	.LBB10_2
.LBB10_7:                               # %b1484
	xorl	%eax, %eax
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end10:
	.size	func_b3274, .Lfunc_end10-func_b3274
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4207
	.type	func_b4207,@function
func_b4207:                             # @func_b4207
	.cfi_startproc
# %bb.0:                                # %b4207
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
	movl	36(%esp), %eax
	movl	32(%esp), %esi
	cmpl	%eax, %esi
	ja	.LBB11_7
# %bb.1:                                # %b4407
	movl	paddle+12, %edi
	movzbl	console, %ecx
	movzbl	console+2, %ebx
	subl	%ecx, %ebx
	cmpl	$25, %ebx
	jae	.LBB11_6
# %bb.2:                                # %b4459
	cmpl	%ebx, %edi
	ja	.LBB11_7
# %bb.3:                                # %b4467
	movl	paddle, %edx
	movl	paddle+4, %ecx
	leal	-1(%esi,%edx), %ebp
	cmpl	%eax, %ebp
	ja	.LBB11_8
# %bb.4:                                # %b4455
	leal	-1(%edi,%ecx), %eax
	cmpl	%ebx, %eax
	ja	.LBB11_14
# %bb.5:
	movl	%eax, %ebx
	jmp	.LBB11_14
.LBB11_6:                               # %b4460
	testl	%edi, %edi
	jne	.LBB11_7
# %bb.10:                               # %b4466
	movl	paddle, %ecx
	movl	paddle+4, %ebx
	leal	-1(%esi,%ecx), %ebp
	addl	%edi, %ebx
	cmpl	%eax, %ebp
	ja	.LBB11_11
# %bb.13:                               # %b4453
	decl	%ebx
	jne	.LBB11_12
	jmp	.LBB11_14
.LBB11_8:                               # %b4456
	leal	-1(%edi,%ecx), %ecx
	cmpl	%ebx, %ecx
	ja	.LBB11_15
# %bb.9:
	movl	%ecx, %ebx
	movl	%eax, %ebp
	jmp	.LBB11_14
.LBB11_11:                              # %b4454
	decl	%ebx
	movl	%eax, %ebp
	je	.LBB11_14
	.p2align	4, 0x90
.LBB11_12:                              # %b1634
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1383
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%edi
	je	.LBB11_12
	jmp	.LBB11_7
.LBB11_15:                              # %g83
	movl	%eax, %ebp
	.p2align	4, 0x90
.LBB11_14:                              # %b1385
                                        # =>This Inner Loop Header: Depth=1
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1383
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%edi
	cmpl	%ebx, %edi
	jbe	.LBB11_14
.LBB11_7:                               # %b303
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
.Lfunc_end11:
	.size	func_b4207, .Lfunc_end11-func_b4207
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b851
	.type	func_b851,@function
func_b851:                              # @func_b851
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
.Lfunc_end12:
	.size	func_b851, .Lfunc_end12-func_b851
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1383
	.type	func_b1383,@function
func_b1383:                             # @func_b1383
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	movl	12(%esp), %edx
	leal	(%edx,%edx,4), %edx
	shll	$5, %edx
	leal	753664(%edx,%ecx,2), %edx
	.p2align	4, 0x90
.LBB13_1:                               # %b1383
                                        # =>This Inner Loop Header: Depth=1
	movw	$28704, (%edx)                  # imm = 0x7020
	incl	%ecx
	addl	$2, %edx
	cmpl	%eax, %ecx
	jbe	.LBB13_1
# %bb.2:                                # %b303
	retl
.Lfunc_end13:
	.size	func_b1383, .Lfunc_end13-func_b1383
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1376
	.type	func_b1376,@function
func_b1376:                             # @func_b1376
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
.LBB14_1:                               # %b1376
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, (%esi)
	incl	%edx
	addl	$2, %esi
	cmpl	%ecx, %edx
	jbe	.LBB14_1
# %bb.2:                                # %b303
	popl	%esi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end14:
	.size	func_b1376, .Lfunc_end14-func_b1376
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
	je	.LBB15_1
# %bb.4:                                # %b3257
	movl	$str55+1, %esi
	.p2align	4, 0x90
.LBB15_5:                               # %b3249
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB15_11
# %bb.6:                                # %b3252
                                        #   in Loop: Header=BB15_5 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB15_12
	.p2align	4, 0x90
.LBB15_11:                              # %b3254
                                        #   in Loop: Header=BB15_5 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB15_12:                              # %b3245
                                        #   in Loop: Header=BB15_5 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.LBB15_1
# %bb.13:                               # %b3247
                                        #   in Loop: Header=BB15_5 Depth=1
	incl	%esi
	jmp	.LBB15_5
.LBB15_1:                               # %b1477
	movl	20(%esp), %esi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %ebx
	testl	%ebx, %ebx
	je	.LBB15_2
# %bb.8:                                # %b3244
	movl	$str56+1, %edi
	.p2align	4, 0x90
.LBB15_9:                               # %b3236
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB15_14
# %bb.10:                               # %b3239
                                        #   in Loop: Header=BB15_9 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB15_15
	.p2align	4, 0x90
.LBB15_14:                              # %b3241
                                        #   in Loop: Header=BB15_9 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB15_15:                              # %b3232
                                        #   in Loop: Header=BB15_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB15_2
# %bb.16:                               # %b3234
                                        #   in Loop: Header=BB15_9 Depth=1
	incl	%edi
	jmp	.LBB15_9
.LBB15_2:                               # %b1473
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str57, %eax
	testl	%eax, %eax
	je	.LBB15_3
# %bb.7:                                # %b3231
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str57+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB15_3:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end15:
	.size	unhandled, .Lfunc_end15-unhandled
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4374
	.type	func_b4374,@function
func_b4374:                             # @func_b4374
	.cfi_startproc
# %bb.0:                                # %b4374
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
	ja	.LBB16_2
# %bb.1:                                # %b4376
	movl	28(%esp), %ebx
	shrl	$4, %ebx
	je	.LBB16_2
	.p2align	4, 0x90
.LBB16_5:                               # %b2241
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
	calll	func_b1345
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%edi)
	leal	1(%edi), %eax
	cmpl	$32, %eax
	jae	.LBB16_7
# %bb.6:                                # %b4371
                                        #   in Loop: Header=BB16_5 Depth=1
	shrl	$4, %ebx
	jne	.LBB16_5
.LBB16_7:                               # %b2242
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b4358
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB16_8:                               # %b2239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%edi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%edi
	jns	.LBB16_8
	jmp	.LBB16_9
.LBB16_2:                               # %b4365
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB16_4
# %bb.3:                                # %b4367
	movl	$1, %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
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
	calll	func_b4358
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB16_4:                               # %b2309
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB16_9:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end16:
	.size	func_b4374, .Lfunc_end16-func_b4374
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3228
	.type	func_b3228,@function
func_b3228:                             # @func_b3228
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
.LBB17_1:                               # %b3228
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB17_3
# %bb.2:                                # %b4135
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB17_4
	.p2align	4, 0x90
.LBB17_3:                               # %b4136
                                        #   in Loop: Header=BB17_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB17_4:                               # %b3219
                                        #   in Loop: Header=BB17_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB17_5
# %bb.6:                                # %b3221
                                        #   in Loop: Header=BB17_1 Depth=1
	incl	%esi
	jmp	.LBB17_1
.LBB17_5:                               # %b303
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end17:
	.size	func_b3228, .Lfunc_end17-func_b3228
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1589
	.type	func_b1589,@function
func_b1589:                             # @func_b1589
	.cfi_startproc
# %bb.0:                                # %b1589
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB18_12
# %bb.1:                                # %b1577
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	console+4, %eax
	cmpl	$13, %ebx
	je	.LBB18_2
# %bb.8:                                # %b1585
	cmpl	$10, %ebx
	je	.LBB18_2
# %bb.9:                                # %b1587
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
	ja	.LBB18_2
# %bb.10:                               # %b4349
	movb	%cl, console+5
	jmp	.LBB18_11
.LBB18_12:                              # %c117
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
	jmp	func_b1580                      # TAILCALL
.LBB18_2:                               # %b1582
	.cfi_def_cfa_offset 32
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB18_4
# %bb.3:                                # %b4345
	movb	%al, console+4
	jmp	.LBB18_11
.LBB18_4:                               # %b1584
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB18_6
	.p2align	4, 0x90
.LBB18_5:                               # %b4336
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
	calll	func_b1317
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB18_5
.LBB18_6:                               # %b1315.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB18_7:                               # %b1315
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB18_7
.LBB18_11:                              # %b303
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
.Lfunc_end18:
	.size	func_b1589, .Lfunc_end18-func_b1589
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4358
	.type	func_b4358,@function
func_b4358:                             # @func_b4358
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
.LBB19_1:                               # %b4358
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB19_3
# %bb.2:                                # %b4360
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	%esi, (%esp)
	calll	func_b1589
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB19_1
.LBB19_3:                               # %b303
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end19:
	.size	func_b4358, .Lfunc_end19-func_b4358
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
	movb	$0, keyUp
	movb	$0, keyDown
	movl	$1, ticks
	movl	$1, ball
	movl	$1, ball+4
	movl	$10, ball+8
	movl	$10, ball+12
	movl	$8, paddle
	movl	$1, paddle+4
	movl	$18, paddle+8
	movl	$22, paddle+12
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
	calll	func_b2857
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$32, console+6
	calll	func_b1074
	movzbl	str45, %edi
	testl	%edi, %edi
	je	.LBB20_7
# %bb.1:                                # %b4068
	movl	$str45+1, %esi
	.p2align	4, 0x90
.LBB20_2:                               # %b4060
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB20_4
# %bb.3:                                # %b4063
                                        #   in Loop: Header=BB20_2 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_5
	.p2align	4, 0x90
.LBB20_4:                               # %b4065
                                        #   in Loop: Header=BB20_2 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_5:                               # %b4065
                                        #   in Loop: Header=BB20_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB20_7
# %bb.6:                                # %b4058
                                        #   in Loop: Header=BB20_2 Depth=1
	incl	%esi
	jmp	.LBB20_2
.LBB20_7:                               # %b1560
	movl	$756482305, console             # imm = 0x2D170101
	movw	$257, console+4                 # imm = 0x101
	movb	$15, console+6
	calll	func_b1074
	movzbl	str11, %eax
	testl	%eax, %eax
	je	.LBB20_9
# %bb.8:                                # %b4053
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str11+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b4050
	jmp	.LBB20_57
.LBB20_9:                               # %b2205
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
	calll	func_b3379
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str13, %eax
	testl	%eax, %eax
	je	.LBB20_11
# %bb.10:                               # %b4035
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str13+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b4032
	jmp	.LBB20_57
.LBB20_11:                              # %b2206
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
	calll	func_b3517
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB20_13
# %bb.12:                               # %b4017
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b4014
	jmp	.LBB20_57
.LBB20_13:                              # %b2207
	.cfi_def_cfa_offset 32
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB20_15
# %bb.14:                               # %b3936
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3930
	jmp	.LBB20_33
.LBB20_15:                              # %b3913
	.cfi_def_cfa_offset 32
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB20_17
# %bb.16:                               # %b3915
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB20_17:                              # %b3901
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB20_20
# %bb.18:                               # %b3912
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB20_27
# %bb.19:                               # %b3907
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_28
.LBB20_20:                              # %b3894
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB20_24
# %bb.21:                               # %b4260
	leal	1(%esi), %edi
.LBB20_22:                              # %b3890
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB20_24
# %bb.23:                               # %b3888
                                        #   in Loop: Header=BB20_22 Depth=1
	incl	%edi
	jmp	.LBB20_22
.LBB20_24:                              # %b3877
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB20_29
# %bb.25:                               # %b3879
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB20_31
# %bb.26:                               # %b3883
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_32
.LBB20_27:                              # %b3909
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_28:                              # %b3909
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3806
	jmp	.LBB20_33
.LBB20_29:                              # %b2385
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB20_34
# %bb.30:                               # %b3868
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	jmp	.LBB20_33
.LBB20_31:                              # %b3885
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_32:                              # %b3885
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3766
.LBB20_33:                              # %b2386
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB20_34:                              # %b2386
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB20_37
# %bb.35:                               # %b3933
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB20_42
# %bb.36:                               # %b3860
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_43
.LBB20_37:                              # %b3828
	.cfi_def_cfa_offset 32
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB20_39
# %bb.38:                               # %b3830
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB20_39:                              # %b3816
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB20_44
# %bb.40:                               # %b3827
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB20_51
# %bb.41:                               # %b3822
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_52
.LBB20_42:                              # %b3862
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_43:                              # %b3862
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3844
	jmp	.LBB20_57
.LBB20_44:                              # %b3793
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB20_48
# %bb.45:                               # %b4259
	leal	1(%esi), %edi
.LBB20_46:                              # %b3789
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB20_48
# %bb.47:                               # %b3787
                                        #   in Loop: Header=BB20_46 Depth=1
	incl	%edi
	jmp	.LBB20_46
.LBB20_48:                              # %b3776
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB20_53
# %bb.49:                               # %b3778
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB20_55
# %bb.50:                               # %b3782
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_56
.LBB20_51:                              # %b3824
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_52:                              # %b3824
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3806
	jmp	.LBB20_57
.LBB20_53:                              # %b2391
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB20_58
# %bb.54:                               # %b3760
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	jmp	.LBB20_57
.LBB20_55:                              # %b3784
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_56:                              # %b3784
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3766
.LBB20_57:                              # %b4035
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB20_58:                              # %b4035
	movl	4096, %esi
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	.LBB20_63
# %bb.59:
	addl	$4, %esi
	movl	%ecx, %eax
	negl	%eax
	addl	$12, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB20_60:                              # %b3755
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %ebx
	je	.LBB20_62
# %bb.61:                               # %b3753
                                        #   in Loop: Header=BB20_60 Depth=1
	decl	%ebx
	addl	$12, %esi
	cmpl	%ebx, %eax
	jne	.LBB20_60
	jmp	.LBB20_63
.LBB20_62:                              # %b3690
	movl	$1, %eax
	subl	%ecx, %eax
	cmpl	%ebx, %eax
	jne	.LBB20_70
.LBB20_63:                              # %b3542
	movzbl	str52, %edi
	testl	%edi, %edi
	je	.LBB20_117
# %bb.64:                               # %b3544
	movl	$str52+1, %esi
	.p2align	4, 0x90
.LBB20_65:                              # %b3536
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB20_67
# %bb.66:                               # %b3539
                                        #   in Loop: Header=BB20_65 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_68
	.p2align	4, 0x90
.LBB20_67:                              # %b3541
                                        #   in Loop: Header=BB20_65 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_68:                              # %b3541
                                        #   in Loop: Header=BB20_65 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB20_117
# %bb.69:                               # %b3534
                                        #   in Loop: Header=BB20_65 Depth=1
	incl	%esi
	jmp	.LBB20_65
.LBB20_70:                              # %b3692
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	str47, %edi
	testl	%edi, %edi
	je	.LBB20_77
# %bb.71:                               # %b3744
	movl	$str47+1, %ebp
	.p2align	4, 0x90
.LBB20_72:                              # %b3745
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB20_74
# %bb.73:                               # %b3746
                                        #   in Loop: Header=BB20_72 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_75
	.p2align	4, 0x90
.LBB20_74:                              # %b3752
                                        #   in Loop: Header=BB20_72 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_75:                              # %b3752
                                        #   in Loop: Header=BB20_72 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebp), %edi
	testl	%edi, %edi
	je	.LBB20_77
# %bb.76:                               # %b3751
                                        #   in Loop: Header=BB20_72 Depth=1
	incl	%ebp
	jmp	.LBB20_72
.LBB20_77:                              # %b3698
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-2(%eax,%ebx), %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3324
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str48, %ebp
	testl	%ebp, %ebp
	je	.LBB20_84
# %bb.78:                               # %b3735
	movl	$str48+1, %ebx
	.p2align	4, 0x90
.LBB20_79:                              # %b3736
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB20_81
# %bb.80:                               # %b3737
                                        #   in Loop: Header=BB20_79 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_82
	.p2align	4, 0x90
.LBB20_81:                              # %b3743
                                        #   in Loop: Header=BB20_79 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_82:                              # %b3743
                                        #   in Loop: Header=BB20_79 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB20_84
# %bb.83:                               # %b3742
                                        #   in Loop: Header=BB20_79 Depth=1
	incl	%ebx
	jmp	.LBB20_79
.LBB20_84:                              # %b3734
	testl	%edi, %edi
	je	.LBB20_101
# %bb.85:                               # %b4258
	leal	12(%esi), %edi
	movzbl	str49, %ebp
	testl	%ebp, %ebp
	je	.LBB20_92
# %bb.86:                               # %b4452
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str49+1, %ebx
	.p2align	4, 0x90
.LBB20_87:                              # %b4452
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB20_89
# %bb.88:                               # %b4468
                                        #   in Loop: Header=BB20_87 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_90
	.p2align	4, 0x90
.LBB20_89:                              # %b4469
                                        #   in Loop: Header=BB20_87 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_90:                              # %b4469
                                        #   in Loop: Header=BB20_87 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB20_92
# %bb.91:                               # %b4471
                                        #   in Loop: Header=BB20_87 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB20_87
.LBB20_92:                              # %b4451
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3324
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str50, %ebp
	testl	%ebp, %ebp
	je	.LBB20_99
# %bb.93:                               # %b4463
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str50+1, %ebx
	.p2align	4, 0x90
.LBB20_94:                              # %b4463
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB20_96
# %bb.95:                               # %b4472
                                        #   in Loop: Header=BB20_94 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_97
	.p2align	4, 0x90
.LBB20_96:                              # %b4473
                                        #   in Loop: Header=BB20_94 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_97:                              # %b4473
                                        #   in Loop: Header=BB20_94 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB20_99
# %bb.98:                               # %b4474
                                        #   in Loop: Header=BB20_94 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB20_94
.LBB20_99:                              # %b4462
	movl	8(%esi), %esi
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB20_108
# %bb.100:                              # %b3617
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3611
	jmp	.LBB20_110
.LBB20_101:                             # %b3555
	.cfi_def_cfa_offset 32
	movzbl	str51, %edi
	testl	%edi, %edi
	je	.LBB20_117
# %bb.102:                              # %b3557
	movl	$str51+1, %esi
	.p2align	4, 0x90
.LBB20_103:                             # %b3549
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB20_105
# %bb.104:                              # %b3552
                                        #   in Loop: Header=BB20_103 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB20_106
	.p2align	4, 0x90
.LBB20_105:                             # %b3554
                                        #   in Loop: Header=BB20_103 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB20_106:                             # %b3554
                                        #   in Loop: Header=BB20_103 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB20_117
# %bb.107:                              # %b3547
                                        #   in Loop: Header=BB20_103 Depth=1
	incl	%esi
	jmp	.LBB20_103
.LBB20_108:                             # %b2013
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str54, %eax
	testl	%eax, %eax
	je	.LBB20_121
# %bb.109:                              # %b4450
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str54+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3562
.LBB20_110:                             # %b4450
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB20_111:                             # %b4450
	movl	8(%edi), %esi
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB20_113
# %bb.112:                              # %b3614
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3593
	jmp	.LBB20_115
.LBB20_113:                             # %b2001
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str54, %eax
	testl	%eax, %eax
	je	.LBB20_122
# %bb.114:                              # %b4447
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str54+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3572
.LBB20_115:                             # %b1872
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB20_116:                             # %b1872
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
.LBB20_117:                             # %b3529
	movzbl	str46, %eax
	testl	%eax, %eax
	je	.LBB20_119
# %bb.118:                              # %b3531
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str46+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB20_120
.LBB20_119:                             # %b303
	.cfi_def_cfa_offset 32
	addl	$12, %esp
	.cfi_def_cfa_offset 20
.LBB20_120:                             # %b303
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.LBB20_121:                             # %b4449
	.cfi_def_cfa_offset 32
	movl	%esi, users+52
	jmp	.LBB20_111
.LBB20_122:                             # %b4446
	movl	%esi, users+124
	jmp	.LBB20_116
.Lfunc_end20:
	.size	kernel, .Lfunc_end20-kernel
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2857
	.type	func_b2857,@function
func_b2857:                             # @func_b2857
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	cmpl	$31, %eax
	ja	.LBB21_3
	.p2align	4, 0x90
.LBB21_2:                               # %b2858
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%ecx)
	incl	%eax
	incl	%ecx
	cmpl	$31, %eax
	jbe	.LBB21_2
.LBB21_3:                               # %b2479
	retl
.Lfunc_end21:
	.size	func_b2857, .Lfunc_end21-func_b2857
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3379
	.type	func_b3379,@function
func_b3379:                             # @func_b3379
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
	jmp	.LBB22_1
	.p2align	4, 0x90
.LBB22_3:                               # %b4228
                                        #   in Loop: Header=BB22_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3361
.LBB22_4:                               # %b3379
                                        #   in Loop: Header=BB22_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$12, %edi
.LBB22_1:                               # %b3379
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB22_6
# %bb.2:                                # %b3381
                                        #   in Loop: Header=BB22_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str1, %edx
	testl	%edx, %edx
	je	.LBB22_3
# %bb.5:                                # %b4229
                                        #   in Loop: Header=BB22_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str1+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b3373
	jmp	.LBB22_4
.LBB22_6:                               # %b444
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end22:
	.size	func_b3379, .Lfunc_end22-func_b3379
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4050
	.type	func_b4050,@function
func_b4050:                             # @func_b4050
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
.LBB23_1:                               # %b4050
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB23_3
# %bb.2:                                # %b4244
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_4
	.p2align	4, 0x90
.LBB23_3:                               # %b4245
                                        #   in Loop: Header=BB23_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_4:                               # %b4245
                                        #   in Loop: Header=BB23_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB23_6
# %bb.5:                                # %b4043
                                        #   in Loop: Header=BB23_1 Depth=1
	incl	%esi
	jmp	.LBB23_1
.LBB23_6:                               # %b1542
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
	calll	func_b3379
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str13, %eax
	testl	%eax, %eax
	je	.LBB23_8
# %bb.7:                                # %b4040
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str13+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b4032
	jmp	.LBB23_60
.LBB23_8:                               # %b1540
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
	calll	func_b3517
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB23_10
# %bb.9:                                # %b4022
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b4014
	jmp	.LBB23_60
.LBB23_10:                              # %b1538
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB23_12
# %bb.11:                               # %b4002
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3930
	jmp	.LBB23_30
.LBB23_12:                              # %b3992
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB23_14
# %bb.13:                               # %b3994
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_14:                              # %b3980
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB23_17
# %bb.15:                               # %b3991
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB23_24
# %bb.16:                               # %b3986
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_25
.LBB23_17:                              # %b3973
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB23_21
# %bb.18:                               # %b4239
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB23_19:                              # %b3969
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB23_21
# %bb.20:                               # %b3967
                                        #   in Loop: Header=BB23_19 Depth=1
	incl	%edi
	jmp	.LBB23_19
.LBB23_21:                              # %b3956
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB23_26
# %bb.22:                               # %b3958
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_28
# %bb.23:                               # %b3962
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_29
.LBB23_24:                              # %b3988
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_25:                              # %b3988
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3806
	jmp	.LBB23_30
.LBB23_26:                              # %b2290
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB23_31
# %bb.27:                               # %b3947
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	jmp	.LBB23_30
.LBB23_28:                              # %b3964
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_29:                              # %b3964
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3766
.LBB23_30:                              # %b2215
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_31:                              # %b2215
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB23_38
# %bb.32:                               # %b3999
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB23_33:                              # %b3848
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB23_35
# %bb.34:                               # %b3851
                                        #   in Loop: Header=BB23_33 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_36
	.p2align	4, 0x90
.LBB23_35:                              # %b3853
                                        #   in Loop: Header=BB23_33 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_36:                              # %b3844
                                        #   in Loop: Header=BB23_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB23_38
# %bb.37:                               # %b3846
                                        #   in Loop: Header=BB23_33 Depth=1
	incl	%ebx
	jmp	.LBB23_33
.LBB23_38:                              # %b3839
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB23_40
# %bb.39:                               # %b3841
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_40:                              # %b3833
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB23_47
# %bb.41:                               # %b3838
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB23_42:                              # %b3810
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB23_44
# %bb.43:                               # %b3813
                                        #   in Loop: Header=BB23_42 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_45
	.p2align	4, 0x90
.LBB23_44:                              # %b3815
                                        #   in Loop: Header=BB23_42 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_45:                              # %b3806
                                        #   in Loop: Header=BB23_42 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB23_47
# %bb.46:                               # %b3808
                                        #   in Loop: Header=BB23_42 Depth=1
	incl	%ebx
	jmp	.LBB23_42
.LBB23_47:                              # %b3805
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB23_51
# %bb.48:                               # %b4236
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB23_49:                              # %b3801
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB23_51
# %bb.50:                               # %b3799
                                        #   in Loop: Header=BB23_49 Depth=1
	incl	%edi
	jmp	.LBB23_49
.LBB23_51:                              # %b3794
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB23_58
# %bb.52:                               # %b3796
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB23_53:                              # %b3770
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_55
# %bb.54:                               # %b3773
                                        #   in Loop: Header=BB23_53 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_56
	.p2align	4, 0x90
.LBB23_55:                              # %b3775
                                        #   in Loop: Header=BB23_53 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_56:                              # %b3766
                                        #   in Loop: Header=BB23_53 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_58
# %bb.57:                               # %b3768
                                        #   in Loop: Header=BB23_53 Depth=1
	incl	%edi
	jmp	.LBB23_53
.LBB23_58:                              # %b1532
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB23_61
# %bb.59:                               # %b3765
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
.LBB23_60:                              # %b303
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_61:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end23:
	.size	func_b4050, .Lfunc_end23-func_b4050
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3517
	.type	func_b3517,@function
func_b3517:                             # @func_b3517
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
	jmp	.LBB24_1
	.p2align	4, 0x90
.LBB24_3:                               # %b4234
                                        #   in Loop: Header=BB24_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3499
.LBB24_4:                               # %b3517
                                        #   in Loop: Header=BB24_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$8, %edi
.LBB24_1:                               # %b3517
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB24_6
# %bb.2:                                # %b3519
                                        #   in Loop: Header=BB24_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str1, %edx
	testl	%edx, %edx
	je	.LBB24_3
# %bb.5:                                # %b4235
                                        #   in Loop: Header=BB24_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str1+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b3511
	jmp	.LBB24_4
.LBB24_6:                               # %b444
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end24:
	.size	func_b3517, .Lfunc_end24-func_b3517
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4032
	.type	func_b4032,@function
func_b4032:                             # @func_b4032
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
.LBB25_1:                               # %b4032
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB25_3
# %bb.2:                                # %b4242
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_4
	.p2align	4, 0x90
.LBB25_3:                               # %b4243
                                        #   in Loop: Header=BB25_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_4:                               # %b4243
                                        #   in Loop: Header=BB25_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB25_6
# %bb.5:                                # %b4025
                                        #   in Loop: Header=BB25_1 Depth=1
	incl	%esi
	jmp	.LBB25_1
.LBB25_6:                               # %b1540
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
	calll	func_b3517
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB25_8
# %bb.7:                                # %b4022
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b4014
	jmp	.LBB25_58
.LBB25_8:                               # %b1538
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB25_10
# %bb.9:                                # %b4002
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3930
	jmp	.LBB25_28
.LBB25_10:                              # %b3992
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB25_12
# %bb.11:                               # %b3994
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_12:                              # %b3980
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB25_15
# %bb.13:                               # %b3991
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB25_22
# %bb.14:                               # %b3986
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_23
.LBB25_15:                              # %b3973
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB25_19
# %bb.16:                               # %b4239
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB25_17:                              # %b3969
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB25_19
# %bb.18:                               # %b3967
                                        #   in Loop: Header=BB25_17 Depth=1
	incl	%edi
	jmp	.LBB25_17
.LBB25_19:                              # %b3956
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB25_24
# %bb.20:                               # %b3958
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB25_26
# %bb.21:                               # %b3962
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_27
.LBB25_22:                              # %b3988
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_23:                              # %b3988
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3806
	jmp	.LBB25_28
.LBB25_24:                              # %b2290
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB25_29
# %bb.25:                               # %b3947
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	jmp	.LBB25_28
.LBB25_26:                              # %b3964
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_27:                              # %b3964
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3766
.LBB25_28:                              # %b2215
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_29:                              # %b2215
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB25_36
# %bb.30:                               # %b3999
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB25_31:                              # %b3848
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB25_33
# %bb.32:                               # %b3851
                                        #   in Loop: Header=BB25_31 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_34
	.p2align	4, 0x90
.LBB25_33:                              # %b3853
                                        #   in Loop: Header=BB25_31 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_34:                              # %b3844
                                        #   in Loop: Header=BB25_31 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB25_36
# %bb.35:                               # %b3846
                                        #   in Loop: Header=BB25_31 Depth=1
	incl	%ebx
	jmp	.LBB25_31
.LBB25_36:                              # %b3839
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB25_38
# %bb.37:                               # %b3841
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_38:                              # %b3833
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB25_45
# %bb.39:                               # %b3838
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB25_40:                              # %b3810
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB25_42
# %bb.41:                               # %b3813
                                        #   in Loop: Header=BB25_40 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_43
	.p2align	4, 0x90
.LBB25_42:                              # %b3815
                                        #   in Loop: Header=BB25_40 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_43:                              # %b3806
                                        #   in Loop: Header=BB25_40 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB25_45
# %bb.44:                               # %b3808
                                        #   in Loop: Header=BB25_40 Depth=1
	incl	%ebx
	jmp	.LBB25_40
.LBB25_45:                              # %b3805
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB25_49
# %bb.46:                               # %b4236
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB25_47:                              # %b3801
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB25_49
# %bb.48:                               # %b3799
                                        #   in Loop: Header=BB25_47 Depth=1
	incl	%edi
	jmp	.LBB25_47
.LBB25_49:                              # %b3794
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB25_56
# %bb.50:                               # %b3796
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB25_51:                              # %b3770
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB25_53
# %bb.52:                               # %b3773
                                        #   in Loop: Header=BB25_51 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_54
	.p2align	4, 0x90
.LBB25_53:                              # %b3775
                                        #   in Loop: Header=BB25_51 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_54:                              # %b3766
                                        #   in Loop: Header=BB25_51 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_56
# %bb.55:                               # %b3768
                                        #   in Loop: Header=BB25_51 Depth=1
	incl	%edi
	jmp	.LBB25_51
.LBB25_56:                              # %b1532
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB25_59
# %bb.57:                               # %b3765
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
.LBB25_58:                              # %b303
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_59:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end25:
	.size	func_b4032, .Lfunc_end25-func_b4032
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4014
	.type	func_b4014,@function
func_b4014:                             # @func_b4014
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
.LBB26_1:                               # %b4014
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB26_3
# %bb.2:                                # %b4240
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_4
	.p2align	4, 0x90
.LBB26_3:                               # %b4241
                                        #   in Loop: Header=BB26_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_4:                               # %b4241
                                        #   in Loop: Header=BB26_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB26_6
# %bb.5:                                # %b4007
                                        #   in Loop: Header=BB26_1 Depth=1
	incl	%esi
	jmp	.LBB26_1
.LBB26_6:                               # %b1538
	movl	4104, %esi
	movzbl	str18, %eax
	testl	%eax, %eax
	je	.LBB26_8
# %bb.7:                                # %b4002
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str18+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3930
	jmp	.LBB26_26
.LBB26_8:                               # %b3992
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB26_10
# %bb.9:                                # %b3994
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_10:                              # %b3980
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB26_13
# %bb.11:                               # %b3991
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB26_20
# %bb.12:                               # %b3986
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_21
.LBB26_13:                              # %b3973
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB26_17
# %bb.14:                               # %b4239
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB26_15:                              # %b3969
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB26_17
# %bb.16:                               # %b3967
                                        #   in Loop: Header=BB26_15 Depth=1
	incl	%edi
	jmp	.LBB26_15
.LBB26_17:                              # %b3956
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB26_22
# %bb.18:                               # %b3958
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_24
# %bb.19:                               # %b3962
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_25
.LBB26_20:                              # %b3988
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_21:                              # %b3988
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3806
	jmp	.LBB26_26
.LBB26_22:                              # %b2290
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB26_27
# %bb.23:                               # %b3947
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	jmp	.LBB26_26
.LBB26_24:                              # %b3964
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_25:                              # %b3964
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3766
.LBB26_26:                              # %b2215
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_27:                              # %b2215
	movl	4108, %esi
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB26_34
# %bb.28:                               # %b3999
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB26_29:                              # %b3848
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB26_31
# %bb.30:                               # %b3851
                                        #   in Loop: Header=BB26_29 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_32
	.p2align	4, 0x90
.LBB26_31:                              # %b3853
                                        #   in Loop: Header=BB26_29 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_32:                              # %b3844
                                        #   in Loop: Header=BB26_29 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB26_34
# %bb.33:                               # %b3846
                                        #   in Loop: Header=BB26_29 Depth=1
	incl	%ebx
	jmp	.LBB26_29
.LBB26_34:                              # %b3839
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB26_36
# %bb.35:                               # %b3841
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_36:                              # %b3833
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB26_43
# %bb.37:                               # %b3838
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB26_38:                              # %b3810
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB26_40
# %bb.39:                               # %b3813
                                        #   in Loop: Header=BB26_38 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_41
	.p2align	4, 0x90
.LBB26_40:                              # %b3815
                                        #   in Loop: Header=BB26_38 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_41:                              # %b3806
                                        #   in Loop: Header=BB26_38 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB26_43
# %bb.42:                               # %b3808
                                        #   in Loop: Header=BB26_38 Depth=1
	incl	%ebx
	jmp	.LBB26_38
.LBB26_43:                              # %b3805
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB26_47
# %bb.44:                               # %b4236
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB26_45:                              # %b3801
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB26_47
# %bb.46:                               # %b3799
                                        #   in Loop: Header=BB26_45 Depth=1
	incl	%edi
	jmp	.LBB26_45
.LBB26_47:                              # %b3794
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB26_54
# %bb.48:                               # %b3796
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB26_49:                              # %b3770
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_51
# %bb.50:                               # %b3773
                                        #   in Loop: Header=BB26_49 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_52
	.p2align	4, 0x90
.LBB26_51:                              # %b3775
                                        #   in Loop: Header=BB26_49 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_52:                              # %b3766
                                        #   in Loop: Header=BB26_49 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_54
# %bb.53:                               # %b3768
                                        #   in Loop: Header=BB26_49 Depth=1
	incl	%edi
	jmp	.LBB26_49
.LBB26_54:                              # %b1532
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB26_56
# %bb.55:                               # %b3765
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_56:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end26:
	.size	func_b4014, .Lfunc_end26-func_b4014
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3930
	.type	func_b3930,@function
func_b3930:                             # @func_b3930
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
.LBB27_1:                               # %b3930
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_3
# %bb.2:                                # %b4237
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_4
	.p2align	4, 0x90
.LBB27_3:                               # %b4238
                                        #   in Loop: Header=BB27_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_4:                               # %b3921
                                        #   in Loop: Header=BB27_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB27_5
# %bb.28:                               # %b3923
                                        #   in Loop: Header=BB27_1 Depth=1
	incl	%edi
	jmp	.LBB27_1
.LBB27_5:                               # %b3918
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB27_7
# %bb.6:                                # %b3920
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_7:                               # %b3920
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB27_8
# %bb.12:                               # %b3838
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB27_13:                              # %b3810
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB27_18
# %bb.14:                               # %b3813
                                        #   in Loop: Header=BB27_13 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_19
	.p2align	4, 0x90
.LBB27_18:                              # %b3815
                                        #   in Loop: Header=BB27_13 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_19:                              # %b3806
                                        #   in Loop: Header=BB27_13 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB27_8
# %bb.20:                               # %b3808
                                        #   in Loop: Header=BB27_13 Depth=1
	incl	%ebx
	jmp	.LBB27_13
.LBB27_8:                               # %b3805
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB27_9
# %bb.15:                               # %b4236
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB27_16:                              # %b3801
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB27_9
# %bb.17:                               # %b3799
                                        #   in Loop: Header=BB27_16 Depth=1
	incl	%edi
	jmp	.LBB27_16
.LBB27_9:                               # %b3794
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB27_10
# %bb.22:                               # %b3796
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB27_23:                              # %b3770
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_25
# %bb.24:                               # %b3773
                                        #   in Loop: Header=BB27_23 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_26
	.p2align	4, 0x90
.LBB27_25:                              # %b3775
                                        #   in Loop: Header=BB27_23 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_26:                              # %b3766
                                        #   in Loop: Header=BB27_23 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB27_10
# %bb.27:                               # %b3768
                                        #   in Loop: Header=BB27_23 Depth=1
	incl	%edi
	jmp	.LBB27_23
.LBB27_10:                              # %b1532
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB27_11
# %bb.21:                               # %b3765
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_11:                              # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end27:
	.size	func_b3930, .Lfunc_end27-func_b3930
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3324
	.type	func_b3324,@function
func_b3324:                             # @func_b3324
	.cfi_startproc
# %bb.0:                                # %b3324
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
	je	.LBB28_1
# %bb.10:                               # %b3326
	movl	$str5+1, %edi
	.p2align	4, 0x90
.LBB28_11:                              # %b3308
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB28_16
# %bb.12:                               # %b3311
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_17
	.p2align	4, 0x90
.LBB28_16:                              # %b3313
                                        #   in Loop: Header=BB28_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_17:                              # %b3304
                                        #   in Loop: Header=BB28_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB28_1
# %bb.18:                               # %b3306
                                        #   in Loop: Header=BB28_11 Depth=1
	incl	%edi
	jmp	.LBB28_11
.LBB28_1:                               # %b1514
	movl	(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str6, %ebx
	testl	%ebx, %ebx
	je	.LBB28_2
# %bb.13:                               # %b3303
	movl	$str6+1, %edi
	.p2align	4, 0x90
.LBB28_14:                              # %b3295
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB28_22
# %bb.15:                               # %b3298
                                        #   in Loop: Header=BB28_14 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_23
	.p2align	4, 0x90
.LBB28_22:                              # %b3300
                                        #   in Loop: Header=BB28_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_23:                              # %b3291
                                        #   in Loop: Header=BB28_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB28_2
# %bb.24:                               # %b3293
                                        #   in Loop: Header=BB28_14 Depth=1
	incl	%edi
	jmp	.LBB28_14
.LBB28_2:                               # %b1512
	movl	4(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str7, %ebx
	testl	%ebx, %ebx
	je	.LBB28_3
# %bb.19:                               # %b3290
	movl	$str7+1, %edi
	.p2align	4, 0x90
.LBB28_20:                              # %b3282
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB28_28
# %bb.21:                               # %b3285
                                        #   in Loop: Header=BB28_20 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_29
	.p2align	4, 0x90
.LBB28_28:                              # %b3287
                                        #   in Loop: Header=BB28_20 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_29:                              # %b3278
                                        #   in Loop: Header=BB28_20 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB28_3
# %bb.30:                               # %b3280
                                        #   in Loop: Header=BB28_20 Depth=1
	incl	%edi
	jmp	.LBB28_20
.LBB28_3:                               # %b1510
	movl	8(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	shrl	$4, %edi
	je	.LBB28_25
# %bb.4:                                # %b2241.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB28_5:                               # %b2241
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
	calll	func_b1345
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%esi)
	leal	1(%esi), %eax
	cmpl	$32, %eax
	jae	.LBB28_7
# %bb.6:                                # %b4371
                                        #   in Loop: Header=BB28_5 Depth=1
	shrl	$4, %edi
	jne	.LBB28_5
.LBB28_7:                               # %b2242
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b4358
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB28_8:                               # %b2239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB28_8
	jmp	.LBB28_9
.LBB28_25:                              # %b4365
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB28_27
# %bb.26:                               # %b4367
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
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
	calll	func_b4358
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB28_27:                              # %b2309
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB28_9:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end28:
	.size	func_b3324, .Lfunc_end28-func_b3324
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3844
	.type	func_b3844,@function
func_b3844:                             # @func_b3844
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
.LBB29_11:                              # %b3853
                                        #   in Loop: Header=BB29_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_12:                              # %b3844
                                        #   in Loop: Header=BB29_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_1:                               # %b3844
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB29_2
# %bb.10:                               # %b3846
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_11
# %bb.9:                                # %b3851
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_12
.LBB29_2:                               # %b3839
	.cfi_def_cfa_offset 16
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB29_4
# %bb.3:                                # %b3841
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_4:                               # %b3841
	movzbl	str19, %edi
	testl	%edi, %edi
	je	.LBB29_5
# %bb.13:                               # %b3838
	movl	$str19+1, %ebx
	.p2align	4, 0x90
.LBB29_14:                              # %b3810
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB29_19
# %bb.15:                               # %b3813
                                        #   in Loop: Header=BB29_14 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_20
	.p2align	4, 0x90
.LBB29_19:                              # %b3815
                                        #   in Loop: Header=BB29_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_20:                              # %b3806
                                        #   in Loop: Header=BB29_14 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB29_5
# %bb.21:                               # %b3808
                                        #   in Loop: Header=BB29_14 Depth=1
	incl	%ebx
	jmp	.LBB29_14
.LBB29_5:                               # %b3805
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB29_6
# %bb.16:                               # %b4236
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB29_17:                              # %b3801
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB29_6
# %bb.18:                               # %b3799
                                        #   in Loop: Header=BB29_17 Depth=1
	incl	%edi
	jmp	.LBB29_17
.LBB29_6:                               # %b3794
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB29_7
# %bb.23:                               # %b3796
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB29_24:                              # %b3770
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_26
# %bb.25:                               # %b3773
                                        #   in Loop: Header=BB29_24 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_27
	.p2align	4, 0x90
.LBB29_26:                              # %b3775
                                        #   in Loop: Header=BB29_24 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_27:                              # %b3766
                                        #   in Loop: Header=BB29_24 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB29_7
# %bb.28:                               # %b3768
                                        #   in Loop: Header=BB29_24 Depth=1
	incl	%edi
	jmp	.LBB29_24
.LBB29_7:                               # %b1532
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB29_8
# %bb.22:                               # %b3765
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB29_8:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end29:
	.size	func_b3844, .Lfunc_end29-func_b3844
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3806
	.type	func_b3806,@function
func_b3806:                             # @func_b3806
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
	jmp	.LBB30_1
	.p2align	4, 0x90
.LBB30_11:                              # %b3815
                                        #   in Loop: Header=BB30_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB30_12:                              # %b3806
                                        #   in Loop: Header=BB30_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB30_1:                               # %b3806
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB30_2
# %bb.10:                               # %b3808
                                        #   in Loop: Header=BB30_1 Depth=1
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB30_11
# %bb.9:                                # %b3813
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB30_12
.LBB30_2:                               # %b3805
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB30_3
# %bb.6:                                # %b4236
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB30_7:                               # %b3801
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB30_3
# %bb.8:                                # %b3799
                                        #   in Loop: Header=BB30_7 Depth=1
	incl	%edi
	jmp	.LBB30_7
.LBB30_3:                               # %b3794
	movzbl	str20, %ebx
	testl	%ebx, %ebx
	je	.LBB30_4
# %bb.14:                               # %b3796
	movl	$str20+1, %edi
	.p2align	4, 0x90
.LBB30_15:                              # %b3770
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB30_17
# %bb.16:                               # %b3773
                                        #   in Loop: Header=BB30_15 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB30_18
	.p2align	4, 0x90
.LBB30_17:                              # %b3775
                                        #   in Loop: Header=BB30_15 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB30_18:                              # %b3766
                                        #   in Loop: Header=BB30_15 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB30_4
# %bb.19:                               # %b3768
                                        #   in Loop: Header=BB30_15 Depth=1
	incl	%edi
	jmp	.LBB30_15
.LBB30_4:                               # %b1532
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB30_5
# %bb.13:                               # %b3765
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB30_5:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end30:
	.size	func_b3806, .Lfunc_end30-func_b3806
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3766
	.type	func_b3766,@function
func_b3766:                             # @func_b3766
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
	jmp	.LBB31_1
	.p2align	4, 0x90
.LBB31_7:                               # %b3775
                                        #   in Loop: Header=BB31_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_8:                               # %b3766
                                        #   in Loop: Header=BB31_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_1:                               # %b3766
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB31_2
# %bb.6:                                # %b3768
                                        #   in Loop: Header=BB31_1 Depth=1
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB31_7
# %bb.5:                                # %b3773
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_8
.LBB31_2:                               # %b1532
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str21, %eax
	testl	%eax, %eax
	je	.LBB31_4
# %bb.3:                                # %b3765
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str21+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB31_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end31:
	.size	func_b3766, .Lfunc_end31-func_b3766
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3611
	.type	func_b3611,@function
func_b3611:                             # @func_b3611
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
.LBB32_1:                               # %b3611
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB32_3
# %bb.2:                                # %b4246
                                        #   in Loop: Header=BB32_1 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_4
	.p2align	4, 0x90
.LBB32_3:                               # %b4247
                                        #   in Loop: Header=BB32_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_4:                               # %b3602
                                        #   in Loop: Header=BB32_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB32_5
# %bb.9:                                # %b3604
                                        #   in Loop: Header=BB32_1 Depth=1
	incl	%edi
	jmp	.LBB32_1
.LBB32_5:                               # %b1761
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str54, %eax
	testl	%eax, %eax
	je	.LBB32_6
# %bb.8:                                # %b3596
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str54+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3562
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB32_7
.LBB32_6:                               # %b1765
	movl	%esi, users+52
.LBB32_7:                               # %b1765
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end32:
	.size	func_b3611, .Lfunc_end32-func_b3611
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3562
	.type	func_b3562,@function
func_b3562:                             # @func_b3562
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
.LBB33_1:                               # %b3562
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB33_3
# %bb.2:                                # %b3565
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_4
	.p2align	4, 0x90
.LBB33_3:                               # %b3567
                                        #   in Loop: Header=BB33_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_4:                               # %b3558
                                        #   in Loop: Header=BB33_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB33_5
# %bb.6:                                # %b3560
                                        #   in Loop: Header=BB33_1 Depth=1
	incl	%edi
	jmp	.LBB33_1
.LBB33_5:                               # %b1765
	movl	%esi, users+52
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end33:
	.size	func_b3562, .Lfunc_end33-func_b3562
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3593
	.type	func_b3593,@function
func_b3593:                             # @func_b3593
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
.LBB34_1:                               # %b3593
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB34_3
# %bb.2:                                # %b4248
                                        #   in Loop: Header=BB34_1 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB34_4
	.p2align	4, 0x90
.LBB34_3:                               # %b4249
                                        #   in Loop: Header=BB34_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB34_4:                               # %b3584
                                        #   in Loop: Header=BB34_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB34_5
# %bb.9:                                # %b3586
                                        #   in Loop: Header=BB34_1 Depth=1
	incl	%edi
	jmp	.LBB34_1
.LBB34_5:                               # %b1772
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str54, %eax
	testl	%eax, %eax
	je	.LBB34_6
# %bb.8:                                # %b3583
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str54+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3572
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB34_7
.LBB34_6:                               # %b1776
	movl	%esi, users+124
.LBB34_7:                               # %b1776
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end34:
	.size	func_b3593, .Lfunc_end34-func_b3593
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3572
	.type	func_b3572,@function
func_b3572:                             # @func_b3572
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
.LBB35_1:                               # %b3572
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_3
# %bb.2:                                # %b3575
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_4
	.p2align	4, 0x90
.LBB35_3:                               # %b3577
                                        #   in Loop: Header=BB35_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_4:                               # %b3568
                                        #   in Loop: Header=BB35_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_5
# %bb.6:                                # %b3570
                                        #   in Loop: Header=BB35_1 Depth=1
	incl	%edi
	jmp	.LBB35_1
.LBB35_5:                               # %b1776
	movl	%esi, users+124
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end35:
	.size	func_b3572, .Lfunc_end35-func_b3572
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3499
	.type	func_b3499,@function
func_b3499:                             # @func_b3499
	.cfi_startproc
# %bb.0:                                # %b3499
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
	je	.LBB36_1
# %bb.7:                                # %b3501
	movl	$str14+1, %esi
	.p2align	4, 0x90
.LBB36_8:                               # %b3498
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB36_1
# %bb.9:                                # %b3496
                                        #   in Loop: Header=BB36_8 Depth=1
	incl	%esi
	jmp	.LBB36_8
.LBB36_1:                               # %b3491
	movl	32(%esp), %esi
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB36_2
# %bb.10:                               # %b3493
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB36_11:                              # %b3485
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB36_16
# %bb.12:                               # %b3488
                                        #   in Loop: Header=BB36_11 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_17
	.p2align	4, 0x90
.LBB36_16:                              # %b3490
                                        #   in Loop: Header=BB36_11 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_17:                              # %b3481
                                        #   in Loop: Header=BB36_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB36_2
# %bb.18:                               # %b3483
                                        #   in Loop: Header=BB36_11 Depth=1
	incl	%edi
	jmp	.LBB36_11
.LBB36_2:                               # %b2134
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
	calll	func_b1345
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
	calll	func_b4441
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str3, %ebx
	testl	%ebx, %ebx
	je	.LBB36_3
# %bb.13:                               # %b3480
	movl	$str3+1, %edi
	.p2align	4, 0x90
.LBB36_14:                              # %b3472
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB36_23
# %bb.15:                               # %b3475
                                        #   in Loop: Header=BB36_14 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_24
	.p2align	4, 0x90
.LBB36_23:                              # %b3477
                                        #   in Loop: Header=BB36_14 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_24:                              # %b3468
                                        #   in Loop: Header=BB36_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB36_3
# %bb.25:                               # %b3470
                                        #   in Loop: Header=BB36_14 Depth=1
	incl	%edi
	jmp	.LBB36_14
.LBB36_3:                               # %b3459
	movl	36(%esp), %edi
	movzbl	str8, %ebp
	testl	%ebp, %ebp
	je	.LBB36_4
# %bb.20:                               # %b3461
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB36_21
# %bb.19:                               # %b3465
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_22
.LBB36_4:                               # %b2362
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
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %ebp
	testl	%ebp, %ebp
	je	.LBB36_5
# %bb.27:                               # %b3433
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB36_28
# %bb.26:                               # %b3437
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_29
.LBB36_21:                              # %b3467
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_22:                              # %b3467
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3443
	jmp	.LBB36_30
.LBB36_5:                               # %b2363
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
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB36_31
# %bb.6:                                # %b3409
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	jmp	.LBB36_30
.LBB36_28:                              # %b3439
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_29:                              # %b3439
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3415
.LBB36_30:                              # %b3439
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_31:                              # %b3439
	movzbl	str4, %edi
	testl	%edi, %edi
	je	.LBB36_38
# %bb.32:                               # %b3455
	movl	$str4+1, %ebx
	.p2align	4, 0x90
.LBB36_33:                              # %b3395
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB36_35
# %bb.34:                               # %b3398
                                        #   in Loop: Header=BB36_33 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_36
	.p2align	4, 0x90
.LBB36_35:                              # %b3400
                                        #   in Loop: Header=BB36_33 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_36:                              # %b3391
                                        #   in Loop: Header=BB36_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB36_38
# %bb.37:                               # %b3393
                                        #   in Loop: Header=BB36_33 Depth=1
	incl	%ebx
	jmp	.LBB36_33
.LBB36_38:                              # %b1516
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
.Lfunc_end36:
	.size	func_b3499, .Lfunc_end36-func_b3499
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3511
	.type	func_b3511,@function
func_b3511:                             # @func_b3511
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
.LBB37_1:                               # %b3511
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB37_3
# %bb.2:                                # %b4230
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_4
	.p2align	4, 0x90
.LBB37_3:                               # %b4231
                                        #   in Loop: Header=BB37_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_4:                               # %b3502
                                        #   in Loop: Header=BB37_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB37_5
# %bb.6:                                # %b3504
                                        #   in Loop: Header=BB37_1 Depth=1
	incl	%ebx
	jmp	.LBB37_1
.LBB37_5:                               # %c322
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3499
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
.Lfunc_end37:
	.size	func_b3511, .Lfunc_end37-func_b3511
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4441
	.type	func_b4441,@function
func_b4441:                             # @func_b4441
	.cfi_startproc
# %bb.0:                                # %b4441
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
	ja	.LBB38_2
# %bb.1:                                # %b4443
	movl	44(%esp), %eax
	movl	$-858993459, %ebp               # imm = 0xCCCCCCCD
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	je	.LBB38_2
	.p2align	4, 0x90
.LBB38_5:                               # %b2258
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
	calll	func_b1345
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%ebx)
	leal	1(%ebx), %ecx
	cmpl	$32, %ecx
	jae	.LBB38_7
# %bb.6:                                # %b4435
                                        #   in Loop: Header=BB38_5 Depth=1
	movl	%esi, %eax
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	jne	.LBB38_5
.LBB38_7:                               # %b2242
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b4358
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB38_8:                               # %b2239
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%ebx), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%ebx
	jns	.LBB38_8
# %bb.9:                                # %b303
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	jmp	.LBB38_10
.LBB38_2:                               # %b4365
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB38_4
# %bb.3:                                # %b4367
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
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
	calll	func_b4358
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB38_4:                               # %b2309
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
.LBB38_10:                              # %b303
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
	.size	func_b4441, .Lfunc_end38-func_b4441
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3443
	.type	func_b3443,@function
func_b3443:                             # @func_b3443
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
.LBB39_7:                               # %b3452
                                        #   in Loop: Header=BB39_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB39_8:                               # %b3443
                                        #   in Loop: Header=BB39_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB39_1:                               # %b3443
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB39_2
# %bb.6:                                # %b3445
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB39_7
# %bb.5:                                # %b3450
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB39_8
.LBB39_2:                               # %b1526
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
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %ebx
	testl	%ebx, %ebx
	je	.LBB39_3
# %bb.10:                               # %b3442
	movl	$str9+1, %edi
	.p2align	4, 0x90
.LBB39_11:                              # %b3419
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB39_13
# %bb.12:                               # %b3422
                                        #   in Loop: Header=BB39_11 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB39_14
	.p2align	4, 0x90
.LBB39_13:                              # %b3424
                                        #   in Loop: Header=BB39_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB39_14:                              # %b3415
                                        #   in Loop: Header=BB39_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB39_3
# %bb.15:                               # %b3417
                                        #   in Loop: Header=BB39_11 Depth=1
	incl	%edi
	jmp	.LBB39_11
.LBB39_3:                               # %b1524
	movl	4(%esi), %esi
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB39_4
# %bb.9:                                # %b3414
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB39_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end39:
	.size	func_b3443, .Lfunc_end39-func_b3443
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3415
	.type	func_b3415,@function
func_b3415:                             # @func_b3415
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
.LBB40_7:                               # %b3424
                                        #   in Loop: Header=BB40_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB40_8:                               # %b3415
                                        #   in Loop: Header=BB40_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB40_1:                               # %b3415
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB40_2
# %bb.6:                                # %b3417
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB40_7
# %bb.5:                                # %b3422
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB40_8
.LBB40_2:                               # %b1524
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
	calll	func_b1345
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
	calll	func_b4374
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB40_4
# %bb.3:                                # %b3414
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB40_4:                               # %b303
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end40:
	.size	func_b3415, .Lfunc_end40-func_b3415
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3361
	.type	func_b3361,@function
func_b3361:                             # @func_b3361
	.cfi_startproc
# %bb.0:                                # %b3361
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
	je	.LBB41_1
# %bb.5:                                # %b3363
	movl	$str12+1, %esi
	.p2align	4, 0x90
.LBB41_6:                               # %b3360
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1589
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB41_1
# %bb.7:                                # %b3358
                                        #   in Loop: Header=BB41_6 Depth=1
	incl	%esi
	jmp	.LBB41_6
.LBB41_1:                               # %b3353
	movl	32(%esp), %esi
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB41_2
# %bb.8:                                # %b3355
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB41_9:                               # %b3347
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB41_14
# %bb.10:                               # %b3350
                                        #   in Loop: Header=BB41_9 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB41_15
	.p2align	4, 0x90
.LBB41_14:                              # %b3352
                                        #   in Loop: Header=BB41_9 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB41_15:                              # %b3343
                                        #   in Loop: Header=BB41_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB41_2
# %bb.16:                               # %b3345
                                        #   in Loop: Header=BB41_9 Depth=1
	incl	%edi
	jmp	.LBB41_9
.LBB41_2:                               # %b2070
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
	calll	func_b1345
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
	calll	func_b4441
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str3, %ebp
	testl	%ebp, %ebp
	je	.LBB41_3
# %bb.11:                               # %b3342
	movl	$str3+1, %ebx
	.p2align	4, 0x90
.LBB41_12:                              # %b3334
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB41_20
# %bb.13:                               # %b3337
                                        #   in Loop: Header=BB41_12 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB41_21
	.p2align	4, 0x90
.LBB41_20:                              # %b3339
                                        #   in Loop: Header=BB41_12 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB41_21:                              # %b3330
                                        #   in Loop: Header=BB41_12 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB41_3
# %bb.22:                               # %b3332
                                        #   in Loop: Header=BB41_12 Depth=1
	incl	%ebx
	jmp	.LBB41_12
.LBB41_3:                               # %b2071
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3324
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str4, %ebx
	testl	%ebx, %ebx
	je	.LBB41_4
# %bb.17:                               # %b3329
	movl	$str4+1, %edi
	.p2align	4, 0x90
.LBB41_18:                              # %b3318
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB41_23
# %bb.19:                               # %b3321
                                        #   in Loop: Header=BB41_18 Depth=1
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB41_24
	.p2align	4, 0x90
.LBB41_23:                              # %b3323
                                        #   in Loop: Header=BB41_18 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB41_24:                              # %b3314
                                        #   in Loop: Header=BB41_18 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB41_4
# %bb.25:                               # %b3316
                                        #   in Loop: Header=BB41_18 Depth=1
	incl	%edi
	jmp	.LBB41_18
.LBB41_4:                               # %b1516
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
.Lfunc_end41:
	.size	func_b3361, .Lfunc_end41-func_b3361
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3373
	.type	func_b3373,@function
func_b3373:                             # @func_b3373
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
.LBB42_1:                               # %b3373
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
	calll	func_b1309
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB42_3
# %bb.2:                                # %b4224
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
	calll	func_b1309
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB42_4
	.p2align	4, 0x90
.LBB42_3:                               # %b4225
                                        #   in Loop: Header=BB42_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB42_4:                               # %b3364
                                        #   in Loop: Header=BB42_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1580
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB42_5
# %bb.6:                                # %b3366
                                        #   in Loop: Header=BB42_1 Depth=1
	incl	%ebx
	jmp	.LBB42_1
.LBB42_5:                               # %c246
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3361
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
.Lfunc_end42:
	.size	func_b3373, .Lfunc_end42-func_b3373
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
	.type	raw.9,@object                   # @raw.9
	.local	raw.9
	.comm	raw.9,4,1
	.type	raw.10,@object                  # @raw.10
	.local	raw.10
	.comm	raw.10,1,1
	.type	raw.12,@object                  # @raw.12
	.local	raw.12
	.comm	raw.12,1,1
	.type	raw.11,@object                  # @raw.11
	.local	raw.11
	.comm	raw.11,1,1
	.type	.Lstr.7,@object                 # @str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.7:
	.asciz	"nothing\n"
	.size	.Lstr.7, 9

	.type	raw.8,@object                   # @raw.8
	.local	raw.8
	.comm	raw.8,16,4
	.type	raw.6,@object                   # @raw.6
	.local	raw.6
	.comm	raw.6,16,4
	.type	raw.5,@object                   # @raw.5
	.local	raw.5
	.comm	raw.5,4,4
	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"\n"
	.size	.Lstr.16, 2

	.type	.Lstr.15,@object                # @str.15
.Lstr.15:
	.asciz	", frame=0x"
	.size	.Lstr.15, 11

	.type	raw.14,@object                  # @raw.14
	.local	raw.14
	.comm	raw.14,32,1
	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	"Exception 0x"
	.size	.Lstr.13, 13

	.type	.Lstr.46,@object                # @str.46
.Lstr.46:
	.asciz	"\n"
	.size	.Lstr.46, 2

	.type	.Lstr.45,@object                # @str.45
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.45:
	.asciz	"user code is at 0x"
	.size	.Lstr.45, 19

	.type	.Lstr.44,@object                # @str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.44:
	.asciz	"\n"
	.size	.Lstr.44, 2

	.type	.Lstr.37,@object                # @str.37
.Lstr.37:
	.asciz	"]\n"
	.size	.Lstr.37, 3

	.type	.Lstr.43,@object                # @str.43
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.43:
	.asciz	"Found header for second user program:\n"
	.size	.Lstr.43, 39

	.type	.Lstr.47,@object                # @str.47
	.p2align	4
.Lstr.47:
	.asciz	"Did not find second user program\n"
	.size	.Lstr.47, 34

	.type	.Lstr.36,@object                # @str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.36:
	.asciz	" ["
	.size	.Lstr.36, 3

	.type	.Lstr.42,@object                # @str.42
.Lstr.42:
	.asciz	"\n"
	.size	.Lstr.42, 2

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"], entry 0x"
	.size	.Lstr.25, 12

	.type	.Lstr.24,@object                # @str.24
.Lstr.24:
	.asciz	"-0x"
	.size	.Lstr.24, 4

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"[0x"
	.size	.Lstr.23, 4

	.type	.Lstr.38,@object                # @str.38
.Lstr.38:
	.asciz	"imgline"
	.size	.Lstr.38, 8

	.type	.Lstr.35,@object                # @str.35
.Lstr.35:
	.asciz	": "
	.size	.Lstr.35, 3

	.type	.Lstr.41,@object                # @str.41
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.41:
	.asciz	"Found header for first user program:\n"
	.size	.Lstr.41, 38

	.type	.Lstr.34,@object                # @str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.34:
	.asciz	"cmdline"
	.size	.Lstr.34, 8

	.type	.Lstr.40,@object                # @str.40
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.40:
	.asciz	"\nHalting kernel, returning to mimgload\n"
	.size	.Lstr.40, 40

	.type	.Lstr.33,@object                # @str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.33:
	.asciz	" "
	.size	.Lstr.33, 2

	.type	.Lstr.39,@object                # @str.39
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.39:
	.asciz	"Did not find first user program\n"
	.size	.Lstr.39, 33

	.type	.Lstr.32,@object                # @str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.32:
	.asciz	"Strings:\n"
	.size	.Lstr.32, 10

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"\n"
	.size	.Lstr.26, 2

	.type	.Lstr.31,@object                # @str.31
.Lstr.31:
	.asciz	"]"
	.size	.Lstr.31, 2

	.type	.Lstr.30,@object                # @str.30
.Lstr.30:
	.asciz	"-0x"
	.size	.Lstr.30, 4

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"[0x"
	.size	.Lstr.29, 4

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"]: "
	.size	.Lstr.22, 4

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	"["
	.size	.Lstr.21, 2

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"mmap"
	.size	.Lstr.28, 5

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	" "
	.size	.Lstr.19, 2

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"Memory map:\n"
	.size	.Lstr.27, 13

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"header"
	.size	.Lstr.20, 7

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"Headers:\n"
	.size	.Lstr.18, 10

	.type	.Lstr.17,@object                # @str.17
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.17:
	.asciz	" Last key pressed:"
	.size	.Lstr.17, 19

.set current, raw.0
.set users, raw.1
.set console, raw.2
.set keyDown, raw.4
.set keyUp, raw.3
.set ticks, raw.5
.set ball, raw.6
.set paddle, raw.8
.set pos, raw.11
.set dir, raw.12
.set spinpos, raw.10
.set spinner, raw.9
.set str0, .Lstr.7
	.size	str0, 1
.set str55, .Lstr.13
	.size	str55, 1
.set itoaBuf, raw.14
.set str56, .Lstr.15
	.size	str56, 1
.set str57, .Lstr.16
	.size	str57, 1
.set str45, .Lstr.17
	.size	str45, 1
.set str11, .Lstr.18
	.size	str11, 1
.set str13, .Lstr.27
	.size	str13, 1
.set str15, .Lstr.32
	.size	str15, 1
.set str52, .Lstr.39
	.size	str52, 1
.set str18, .Lstr.33
	.size	str18, 1
.set str46, .Lstr.40
	.size	str46, 1
.set str16, .Lstr.34
	.size	str16, 1
.set str47, .Lstr.41
	.size	str47, 1
.set str19, .Lstr.35
	.size	str19, 1
.set str17, .Lstr.38
	.size	str17, 1
.set str48, .Lstr.42
	.size	str48, 1
.set str20, .Lstr.36
	.size	str20, 1
.set str51, .Lstr.47
	.size	str51, 1
.set str49, .Lstr.43
	.size	str49, 1
.set str21, .Lstr.37
	.size	str21, 1
.set str50, .Lstr.44
	.size	str50, 1
.set str53, .Lstr.45
	.size	str53, 1
.set str54, .Lstr.46
	.size	str54, 1
.set str5, .Lstr.23
	.size	str5, 1
.set str6, .Lstr.24
	.size	str6, 1
.set str7, .Lstr.25
	.size	str7, 1
.set str1, .Lstr.19
	.size	str1, 1
.set str14, .Lstr.28
	.size	str14, 1
.set str2, .Lstr.21
	.size	str2, 1
.set str3, .Lstr.22
	.size	str3, 1
.set str8, .Lstr.29
	.size	str8, 1
.set str9, .Lstr.30
	.size	str9, 1
.set str10, .Lstr.31
	.size	str10, 1
.set str4, .Lstr.26
	.size	str4, 1
.set str12, .Lstr.20
	.size	str12, 1
	.section	".note.GNU-stack","",@progbits
