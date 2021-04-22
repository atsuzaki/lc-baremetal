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
	calll	func_b1212
	cmpl	$10, %edi
	jne	.LBB1_2
# %bb.1:                                # %b1738
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b1212
.LBB1_2:                                # %b1739
	movl	%edi, (%esp)
	calll	func_b1436
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
	.p2align	4, 0x90                         # -- Begin function func_b1212
	.type	func_b1212,@function
func_b1212:                             # @func_b1212
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
.LBB2_3:                                # %b2593
	movw	$1016, %dx                      # imm = 0x3F8
	movl	%ecx, %eax
	#APP
	outb	%al, %dx
	#NO_APP
	retl
.Lfunc_end2:
	.size	func_b1212, .Lfunc_end2-func_b1212
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
	movl	32(%esp), %edx
	movzbl	console+4, %eax
	cmpl	$13, %edx
	je	.LBB3_1
# %bb.7:                                # %b1441
	cmpl	$10, %edx
	je	.LBB3_1
# %bb.8:                                # %b1443
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
# %bb.9:                                # %b3934
	movb	%cl, console+5
	jmp	.LBB3_10
.LBB3_1:                                # %b1438
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB3_3
# %bb.2:                                # %b3930
	movb	%al, console+4
	jmp	.LBB3_10
.LBB3_3:                                # %b1440
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
.LBB3_4:                                # %b3921
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
	calll	func_b1220
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB3_4
.LBB3_5:                                # %b1218.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB3_6:                                # %b1218
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
	.size	func_b1436, .Lfunc_end3-func_b1436
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1220
	.type	func_b1220,@function
func_b1220:                             # @func_b1220
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
.LBB4_1:                                # %b1220
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
	.size	func_b1220, .Lfunc_end4-func_b1220
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
# %bb.1:                                # %b891
	movl	%eax, %edx
	andl	$127, %edx
	movzbl	(%ecx,%edx), %edx
	movzbl	753703, %esi
	shll	$8, %esi
	orl	%edx, %esi
	movw	%si, 753702
	movb	%dl, keyDown
.LBB5_2:                                # %b890
	movl	%eax, %edx
	shrl	$7, %edx
	cmpl	$1, %edx
	jne	.LBB5_4
# %bb.3:                                # %b888
	andl	$127, %eax
	movb	(%ecx,%eax), %al
	movb	%al, keyUp
.LBB5_4:                                # %b1024
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
	calll	func_b1248
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
	calll	func_b1248
	orl	%edi, %eax
	movw	%ax, 753816
	movl	$75, %edi
	movl	$753814, %ebp                   # imm = 0xB8096
	.p2align	4, 0x90
.LBB6_1:                                # %b3989
                                        # =>This Inner Loop Header: Depth=1
	shrl	$4, %esi
	movzbl	1(%ebp), %ebx
	shll	$8, %ebx
	movl	%esi, %eax
	andl	$15, %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	func_b1248
	orl	%ebx, %eax
	movw	%ax, (%ebp)
	decl	%edi
	addl	$-2, %ebp
	cmpl	$69, %edi
	jg	.LBB6_1
# %bb.2:                                # %b1617
	calll	func_b1007
	movzbl	ball+8, %eax
	movzbl	ball+9, %ecx
	leal	(%eax,%eax,4), %eax
	shll	$5, %eax
	movw	$28704, 753664(%eax,%ecx,2)     # imm = 0x7020
	movl	8(%esp), %ebx                   # 4-byte Reload
	testb	$3, %bl
	jne	.LBB6_11
# %bb.3:                                # %b1272
	movzbl	pos, %esi
	movl	%esi, (%esp)
	movl	$32, 4(%esp)
	calll	func_b829
	cmpb	$0, dir
	je	.LBB6_9
# %bb.4:                                # %b3986
	leal	1(%esi), %eax
	cmpl	$69, %eax
	jae	.LBB6_7
# %bb.5:                                # %b3984
	movl	%eax, (%esp)
	movl	$62, 4(%esp)
	jmp	.LBB6_6
.LBB6_9:                                # %b3981
	leal	-1(%esi), %eax
	cmpl	$45, %eax
	jle	.LBB6_10
# %bb.8:                                # %b3979
	movl	%eax, (%esp)
	movl	$60, 4(%esp)
.LBB6_6:                                # %b3984
	movl	%eax, %esi
	calll	func_b829
	movl	%esi, %eax
	movb	%al, pos
	testb	$15, %bl
	jne	.LBB6_16
	jmp	.LBB6_12
.LBB6_7:                                # %b1275
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
# %bb.13:                               # %b3974
	andl	$1, %eax
	movb	%al, current
	jmp	.LBB6_15
.LBB6_14:                               # %b2302
	movb	$0, current
.LBB6_15:                               # %b1613
	movzbl	spinpos, %eax
	movzbl	spinner(%eax), %ecx
	incb	%al
	andb	$3, %al
	movb	%al, spinpos
	movzbl	753823, %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movw	%ax, 753822
.LBB6_16:                               # %b1024
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
.LBB6_10:                               # %b1278
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
	.p2align	4, 0x90                         # -- Begin function func_b1248
	.type	func_b1248,@function
func_b1248:                             # @func_b1248
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %ecx
	movl	4(%esp), %eax
	cmpl	%ecx, %eax
	ja	.LBB7_2
# %bb.1:                                # %b921
	addl	$48, %eax
	movzbl	%al, %eax
	retl
.LBB7_2:                                # %b922
	addl	$87, %eax
	movzbl	%al, %eax
	retl
.Lfunc_end7:
	.size	func_b1248, .Lfunc_end7-func_b1248
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1007
	.type	func_b1007,@function
func_b1007:                             # @func_b1007
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
.LBB8_1:                                # %b1281
                                        # =>This Inner Loop Header: Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	20(%esp)                        # 4-byte Folded Reload
	.cfi_adjust_cfa_offset 4
	calll	func_b1279
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	incl	%ebx
	cmpl	%esi, %ebx
	jbe	.LBB8_1
# %bb.2:                                # %b295
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
	.size	func_b1007, .Lfunc_end8-func_b1007
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
.Lfunc_end9:
	.size	func_b829, .Lfunc_end9-func_b829
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1279
	.type	func_b1279,@function
func_b1279:                             # @func_b1279
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
.LBB10_1:                               # %b1279
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, (%esi)
	incl	%edx
	addl	$2, %esi
	cmpl	%ecx, %edx
	jbe	.LBB10_1
# %bb.2:                                # %b295
	popl	%esi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end10:
	.size	func_b1279, .Lfunc_end10-func_b1279
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
	je	.LBB11_1
# %bb.4:                                # %b2969
	movl	$str54+1, %esi
	.p2align	4, 0x90
.LBB11_5:                               # %b2961
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB11_11
# %bb.6:                                # %b2964
                                        #   in Loop: Header=BB11_5 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB11_12
	.p2align	4, 0x90
.LBB11_11:                              # %b2966
                                        #   in Loop: Header=BB11_5 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB11_12:                              # %b2957
                                        #   in Loop: Header=BB11_5 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.LBB11_1
# %bb.13:                               # %b2959
                                        #   in Loop: Header=BB11_5 Depth=1
	incl	%esi
	jmp	.LBB11_5
.LBB11_1:                               # %b1359
	movl	20(%esp), %esi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str55, %ebx
	testl	%ebx, %ebx
	je	.LBB11_2
# %bb.8:                                # %b2956
	movl	$str55+1, %edi
	.p2align	4, 0x90
.LBB11_9:                               # %b2948
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB11_14
# %bb.10:                               # %b2951
                                        #   in Loop: Header=BB11_9 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB11_15
	.p2align	4, 0x90
.LBB11_14:                              # %b2953
                                        #   in Loop: Header=BB11_9 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB11_15:                              # %b2944
                                        #   in Loop: Header=BB11_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB11_2
# %bb.16:                               # %b2946
                                        #   in Loop: Header=BB11_9 Depth=1
	incl	%edi
	jmp	.LBB11_9
.LBB11_2:                               # %b1355
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %eax
	testl	%eax, %eax
	je	.LBB11_3
# %bb.7:                                # %b2943
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str56+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB11_3:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end11:
	.size	unhandled, .Lfunc_end11-unhandled
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3959
	.type	func_b3959,@function
func_b3959:                             # @func_b3959
	.cfi_startproc
# %bb.0:                                # %b3959
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
	ja	.LBB12_2
# %bb.1:                                # %b3961
	movl	28(%esp), %ebx
	shrl	$4, %ebx
	je	.LBB12_2
	.p2align	4, 0x90
.LBB12_5:                               # %b2012
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
	calll	func_b1248
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%edi)
	leal	1(%edi), %eax
	cmpl	$32, %eax
	jae	.LBB12_7
# %bb.6:                                # %b3956
                                        #   in Loop: Header=BB12_5 Depth=1
	shrl	$4, %ebx
	jne	.LBB12_5
.LBB12_7:                               # %b2013
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3943
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB12_8:                               # %b2010
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%edi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%edi
	jns	.LBB12_8
	jmp	.LBB12_9
.LBB12_2:                               # %b3950
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB12_4
# %bb.3:                                # %b3952
	movl	$1, %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
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
	calll	func_b3943
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB12_4:                               # %b2070
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB12_9:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end12:
	.size	func_b3959, .Lfunc_end12-func_b3959
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2940
	.type	func_b2940,@function
func_b2940:                             # @func_b2940
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
.LBB13_1:                               # %b2940
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB13_3
# %bb.2:                                # %b3805
                                        #   in Loop: Header=BB13_1 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB13_4
	.p2align	4, 0x90
.LBB13_3:                               # %b3806
                                        #   in Loop: Header=BB13_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB13_4:                               # %b2931
                                        #   in Loop: Header=BB13_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB13_5
# %bb.6:                                # %b2933
                                        #   in Loop: Header=BB13_1 Depth=1
	incl	%esi
	jmp	.LBB13_1
.LBB13_5:                               # %b295
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end13:
	.size	func_b2940, .Lfunc_end13-func_b2940
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1445
	.type	func_b1445,@function
func_b1445:                             # @func_b1445
	.cfi_startproc
# %bb.0:                                # %b1445
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB14_12
# %bb.1:                                # %b1433
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	console+4, %eax
	cmpl	$13, %ebx
	je	.LBB14_2
# %bb.8:                                # %b1441
	cmpl	$10, %ebx
	je	.LBB14_2
# %bb.9:                                # %b1443
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
	ja	.LBB14_2
# %bb.10:                               # %b3934
	movb	%cl, console+5
	jmp	.LBB14_11
.LBB14_12:                              # %c64
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
	jmp	func_b1436                      # TAILCALL
.LBB14_2:                               # %b1438
	.cfi_def_cfa_offset 32
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB14_4
# %bb.3:                                # %b3930
	movb	%al, console+4
	jmp	.LBB14_11
.LBB14_4:                               # %b1440
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB14_6
	.p2align	4, 0x90
.LBB14_5:                               # %b3921
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
	calll	func_b1220
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB14_5
.LBB14_6:                               # %b1218.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB14_7:                               # %b1218
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB14_7
.LBB14_11:                              # %b295
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
.Lfunc_end14:
	.size	func_b1445, .Lfunc_end14-func_b1445
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3943
	.type	func_b3943,@function
func_b3943:                             # @func_b3943
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
.LBB15_1:                               # %b3943
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB15_3
# %bb.2:                                # %b3945
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	%esi, (%esp)
	calll	func_b1445
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB15_1
.LBB15_3:                               # %b295
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end15:
	.size	func_b3943, .Lfunc_end15-func_b3943
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
	movw	$2570, ball+8                   # imm = 0xA0A
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
	calll	func_b2577
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	$32, console+6
	calll	func_b1007
	movzbl	str44, %edi
	testl	%edi, %edi
	je	.LBB16_7
# %bb.1:                                # %b3763
	movl	$str44+1, %esi
	.p2align	4, 0x90
.LBB16_2:                               # %b3755
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB16_4
# %bb.3:                                # %b3758
                                        #   in Loop: Header=BB16_2 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_5
	.p2align	4, 0x90
.LBB16_4:                               # %b3760
                                        #   in Loop: Header=BB16_2 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_5:                               # %b3760
                                        #   in Loop: Header=BB16_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB16_7
# %bb.6:                                # %b3753
                                        #   in Loop: Header=BB16_2 Depth=1
	incl	%esi
	jmp	.LBB16_2
.LBB16_7:                               # %b1416
	movl	$756482305, console             # imm = 0x2D170101
	movw	$257, console+4                 # imm = 0x101
	movb	$15, console+6
	calll	func_b1007
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB16_9
# %bb.8:                                # %b3748
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3745
	jmp	.LBB16_57
.LBB16_9:                               # %b1976
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
	calll	func_b3074
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB16_11
# %bb.10:                               # %b3730
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str12+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3727
	jmp	.LBB16_57
.LBB16_11:                              # %b1977
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
	calll	func_b3212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB16_13
# %bb.12:                               # %b3712
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3709
	jmp	.LBB16_57
.LBB16_13:                              # %b1978
	.cfi_def_cfa_offset 32
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB16_15
# %bb.14:                               # %b3631
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3625
	jmp	.LBB16_33
.LBB16_15:                              # %b3608
	.cfi_def_cfa_offset 32
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB16_17
# %bb.16:                               # %b3610
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB16_17:                              # %b3596
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB16_20
# %bb.18:                               # %b3607
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB16_27
# %bb.19:                               # %b3602
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_28
.LBB16_20:                              # %b3589
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB16_24
# %bb.21:                               # %b3848
	leal	1(%esi), %edi
.LBB16_22:                              # %b3585
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB16_24
# %bb.23:                               # %b3583
                                        #   in Loop: Header=BB16_22 Depth=1
	incl	%edi
	jmp	.LBB16_22
.LBB16_24:                              # %b3572
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB16_29
# %bb.25:                               # %b3574
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB16_31
# %bb.26:                               # %b3578
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_32
.LBB16_27:                              # %b3604
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_28:                              # %b3604
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3501
	jmp	.LBB16_33
.LBB16_29:                              # %b2146
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB16_34
# %bb.30:                               # %b3563
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	jmp	.LBB16_33
.LBB16_31:                              # %b3580
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_32:                              # %b3580
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3461
.LBB16_33:                              # %b2147
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB16_34:                              # %b2147
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB16_37
# %bb.35:                               # %b3628
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB16_42
# %bb.36:                               # %b3555
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_43
.LBB16_37:                              # %b3523
	.cfi_def_cfa_offset 32
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB16_39
# %bb.38:                               # %b3525
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB16_39:                              # %b3511
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB16_44
# %bb.40:                               # %b3522
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB16_51
# %bb.41:                               # %b3517
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_52
.LBB16_42:                              # %b3557
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_43:                              # %b3557
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3539
	jmp	.LBB16_57
.LBB16_44:                              # %b3488
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB16_48
# %bb.45:                               # %b3847
	leal	1(%esi), %edi
.LBB16_46:                              # %b3484
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB16_48
# %bb.47:                               # %b3482
                                        #   in Loop: Header=BB16_46 Depth=1
	incl	%edi
	jmp	.LBB16_46
.LBB16_48:                              # %b3471
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB16_53
# %bb.49:                               # %b3473
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB16_55
# %bb.50:                               # %b3477
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_56
.LBB16_51:                              # %b3519
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_52:                              # %b3519
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3501
	jmp	.LBB16_57
.LBB16_53:                              # %b2152
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB16_58
# %bb.54:                               # %b3455
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	jmp	.LBB16_57
.LBB16_55:                              # %b3479
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_56:                              # %b3479
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3461
.LBB16_57:                              # %b3730
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB16_58:                              # %b3730
	movl	4096, %esi
	movl	(%esi), %ecx
	testl	%ecx, %ecx
	je	.LBB16_63
# %bb.59:
	addl	$4, %esi
	movl	%ecx, %eax
	negl	%eax
	addl	$12, %esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB16_60:                              # %b3450
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %ebx
	je	.LBB16_62
# %bb.61:                               # %b3448
                                        #   in Loop: Header=BB16_60 Depth=1
	decl	%ebx
	addl	$12, %esi
	cmpl	%ebx, %eax
	jne	.LBB16_60
	jmp	.LBB16_63
.LBB16_62:                              # %b3385
	movl	$1, %eax
	subl	%ecx, %eax
	cmpl	%ebx, %eax
	jne	.LBB16_70
.LBB16_63:                              # %b3237
	movzbl	str51, %edi
	testl	%edi, %edi
	je	.LBB16_117
# %bb.64:                               # %b3239
	movl	$str51+1, %esi
	.p2align	4, 0x90
.LBB16_65:                              # %b3231
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB16_67
# %bb.66:                               # %b3234
                                        #   in Loop: Header=BB16_65 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_68
	.p2align	4, 0x90
.LBB16_67:                              # %b3236
                                        #   in Loop: Header=BB16_65 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_68:                              # %b3236
                                        #   in Loop: Header=BB16_65 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB16_117
# %bb.69:                               # %b3229
                                        #   in Loop: Header=BB16_65 Depth=1
	incl	%esi
	jmp	.LBB16_65
.LBB16_70:                              # %b3387
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	str46, %edi
	testl	%edi, %edi
	je	.LBB16_77
# %bb.71:                               # %b3439
	movl	$str46+1, %ebp
	.p2align	4, 0x90
.LBB16_72:                              # %b3440
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB16_74
# %bb.73:                               # %b3441
                                        #   in Loop: Header=BB16_72 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_75
	.p2align	4, 0x90
.LBB16_74:                              # %b3447
                                        #   in Loop: Header=BB16_72 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_75:                              # %b3447
                                        #   in Loop: Header=BB16_72 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebp), %edi
	testl	%edi, %edi
	je	.LBB16_77
# %bb.76:                               # %b3446
                                        #   in Loop: Header=BB16_72 Depth=1
	incl	%ebp
	jmp	.LBB16_72
.LBB16_77:                              # %b3393
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-2(%eax,%ebx), %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3019
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str47, %ebp
	testl	%ebp, %ebp
	je	.LBB16_84
# %bb.78:                               # %b3430
	movl	$str47+1, %ebx
	.p2align	4, 0x90
.LBB16_79:                              # %b3431
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB16_81
# %bb.80:                               # %b3432
                                        #   in Loop: Header=BB16_79 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_82
	.p2align	4, 0x90
.LBB16_81:                              # %b3438
                                        #   in Loop: Header=BB16_79 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_82:                              # %b3438
                                        #   in Loop: Header=BB16_79 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB16_84
# %bb.83:                               # %b3437
                                        #   in Loop: Header=BB16_79 Depth=1
	incl	%ebx
	jmp	.LBB16_79
.LBB16_84:                              # %b3429
	testl	%edi, %edi
	je	.LBB16_101
# %bb.85:                               # %b3846
	leal	12(%esi), %edi
	movzbl	str48, %ebp
	testl	%ebp, %ebp
	je	.LBB16_92
# %bb.86:                               # %b4017
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str48+1, %ebx
	.p2align	4, 0x90
.LBB16_87:                              # %b4017
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB16_89
# %bb.88:                               # %b4021
                                        #   in Loop: Header=BB16_87 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_90
	.p2align	4, 0x90
.LBB16_89:                              # %b4022
                                        #   in Loop: Header=BB16_87 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_90:                              # %b4022
                                        #   in Loop: Header=BB16_87 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB16_92
# %bb.91:                               # %b4024
                                        #   in Loop: Header=BB16_87 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB16_87
.LBB16_92:                              # %b4016
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3019
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str49, %ebp
	testl	%ebp, %ebp
	je	.LBB16_99
# %bb.93:                               # %b4020
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str49+1, %ebx
	.p2align	4, 0x90
.LBB16_94:                              # %b4020
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB16_96
# %bb.95:                               # %b4025
                                        #   in Loop: Header=BB16_94 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_97
	.p2align	4, 0x90
.LBB16_96:                              # %b4026
                                        #   in Loop: Header=BB16_94 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_97:                              # %b4026
                                        #   in Loop: Header=BB16_94 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB16_99
# %bb.98:                               # %b4027
                                        #   in Loop: Header=BB16_94 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB16_94
.LBB16_99:                              # %b4019
	movl	8(%esi), %esi
	movzbl	str52, %eax
	testl	%eax, %eax
	je	.LBB16_108
# %bb.100:                              # %b3312
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str52+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3306
	jmp	.LBB16_110
.LBB16_101:                             # %b3250
	.cfi_def_cfa_offset 32
	movzbl	str50, %edi
	testl	%edi, %edi
	je	.LBB16_117
# %bb.102:                              # %b3252
	movl	$str50+1, %esi
	.p2align	4, 0x90
.LBB16_103:                             # %b3244
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB16_105
# %bb.104:                              # %b3247
                                        #   in Loop: Header=BB16_103 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB16_106
	.p2align	4, 0x90
.LBB16_105:                             # %b3249
                                        #   in Loop: Header=BB16_103 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB16_106:                             # %b3249
                                        #   in Loop: Header=BB16_103 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB16_117
# %bb.107:                              # %b3242
                                        #   in Loop: Header=BB16_103 Depth=1
	incl	%esi
	jmp	.LBB16_103
.LBB16_108:                             # %b1784
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB16_121
# %bb.109:                              # %b4015
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3257
.LBB16_110:                             # %b4015
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB16_111:                             # %b4015
	movl	8(%edi), %esi
	movzbl	str52, %eax
	testl	%eax, %eax
	je	.LBB16_113
# %bb.112:                              # %b3309
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str52+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3288
	jmp	.LBB16_115
.LBB16_113:                             # %b1772
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB16_122
# %bb.114:                              # %b4012
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3267
.LBB16_115:                             # %b1672
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB16_116:                             # %b1672
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
.LBB16_117:                             # %b3224
	movzbl	str45, %eax
	testl	%eax, %eax
	je	.LBB16_119
# %bb.118:                              # %b3226
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str45+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$28, %esp
	.cfi_adjust_cfa_offset -28
	jmp	.LBB16_120
.LBB16_119:                             # %b295
	.cfi_def_cfa_offset 32
	addl	$12, %esp
	.cfi_def_cfa_offset 20
.LBB16_120:                             # %b295
	popl	%esi
	.cfi_def_cfa_offset 16
	popl	%edi
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_def_cfa_offset 4
	retl
.LBB16_121:                             # %b4014
	.cfi_def_cfa_offset 32
	movl	%esi, users+52
	jmp	.LBB16_111
.LBB16_122:                             # %b4011
	movl	%esi, users+124
	jmp	.LBB16_116
.Lfunc_end16:
	.size	kernel, .Lfunc_end16-kernel
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2577
	.type	func_b2577,@function
func_b2577:                             # @func_b2577
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	cmpl	$31, %eax
	ja	.LBB17_3
	.p2align	4, 0x90
.LBB17_2:                               # %b2578
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%ecx)
	incl	%eax
	incl	%ecx
	cmpl	$31, %eax
	jbe	.LBB17_2
.LBB17_3:                               # %b2234
	retl
.Lfunc_end17:
	.size	func_b2577, .Lfunc_end17-func_b2577
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3074
	.type	func_b3074,@function
func_b3074:                             # @func_b3074
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
.LBB18_3:                               # %b3816
                                        #   in Loop: Header=BB18_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3056
.LBB18_4:                               # %b3074
                                        #   in Loop: Header=BB18_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$12, %edi
.LBB18_1:                               # %b3074
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB18_6
# %bb.2:                                # %b3076
                                        #   in Loop: Header=BB18_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str0, %edx
	testl	%edx, %edx
	je	.LBB18_3
# %bb.5:                                # %b3817
                                        #   in Loop: Header=BB18_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str0+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b3068
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
	.size	func_b3074, .Lfunc_end18-func_b3074
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3745
	.type	func_b3745,@function
func_b3745:                             # @func_b3745
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
.LBB19_1:                               # %b3745
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_3
# %bb.2:                                # %b3832
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_4
	.p2align	4, 0x90
.LBB19_3:                               # %b3833
                                        #   in Loop: Header=BB19_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_4:                               # %b3833
                                        #   in Loop: Header=BB19_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB19_6
# %bb.5:                                # %b3738
                                        #   in Loop: Header=BB19_1 Depth=1
	incl	%esi
	jmp	.LBB19_1
.LBB19_6:                               # %b1398
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
	calll	func_b3074
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB19_8
# %bb.7:                                # %b3735
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str12+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3727
	jmp	.LBB19_60
.LBB19_8:                               # %b1396
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
	calll	func_b3212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB19_10
# %bb.9:                                # %b3717
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3709
	jmp	.LBB19_60
.LBB19_10:                              # %b1394
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB19_12
# %bb.11:                               # %b3697
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3625
	jmp	.LBB19_30
.LBB19_12:                              # %b3687
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB19_14
# %bb.13:                               # %b3689
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_14:                              # %b3675
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB19_17
# %bb.15:                               # %b3686
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_24
# %bb.16:                               # %b3681
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_25
.LBB19_17:                              # %b3668
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB19_21
# %bb.18:                               # %b3827
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB19_19:                              # %b3664
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB19_21
# %bb.20:                               # %b3662
                                        #   in Loop: Header=BB19_19 Depth=1
	incl	%edi
	jmp	.LBB19_19
.LBB19_21:                              # %b3651
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB19_26
# %bb.22:                               # %b3653
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB19_28
# %bb.23:                               # %b3657
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_29
.LBB19_24:                              # %b3683
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_25:                              # %b3683
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3501
	jmp	.LBB19_30
.LBB19_26:                              # %b2051
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB19_31
# %bb.27:                               # %b3642
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	jmp	.LBB19_30
.LBB19_28:                              # %b3659
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_29:                              # %b3659
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3461
.LBB19_30:                              # %b1986
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_31:                              # %b1986
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB19_38
# %bb.32:                               # %b3694
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB19_33:                              # %b3543
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_35
# %bb.34:                               # %b3546
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_36
	.p2align	4, 0x90
.LBB19_35:                              # %b3548
                                        #   in Loop: Header=BB19_33 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_36:                              # %b3539
                                        #   in Loop: Header=BB19_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB19_38
# %bb.37:                               # %b3541
                                        #   in Loop: Header=BB19_33 Depth=1
	incl	%ebx
	jmp	.LBB19_33
.LBB19_38:                              # %b3534
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB19_40
# %bb.39:                               # %b3536
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_40:                              # %b3528
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB19_47
# %bb.41:                               # %b3533
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB19_42:                              # %b3505
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_44
# %bb.43:                               # %b3508
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_45
	.p2align	4, 0x90
.LBB19_44:                              # %b3510
                                        #   in Loop: Header=BB19_42 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_45:                              # %b3501
                                        #   in Loop: Header=BB19_42 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB19_47
# %bb.46:                               # %b3503
                                        #   in Loop: Header=BB19_42 Depth=1
	incl	%ebx
	jmp	.LBB19_42
.LBB19_47:                              # %b3500
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB19_51
# %bb.48:                               # %b3824
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB19_49:                              # %b3496
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB19_51
# %bb.50:                               # %b3494
                                        #   in Loop: Header=BB19_49 Depth=1
	incl	%edi
	jmp	.LBB19_49
.LBB19_51:                              # %b3489
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB19_58
# %bb.52:                               # %b3491
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB19_53:                              # %b3465
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB19_55
# %bb.54:                               # %b3468
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_56
	.p2align	4, 0x90
.LBB19_55:                              # %b3470
                                        #   in Loop: Header=BB19_53 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_56:                              # %b3461
                                        #   in Loop: Header=BB19_53 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB19_58
# %bb.57:                               # %b3463
                                        #   in Loop: Header=BB19_53 Depth=1
	incl	%edi
	jmp	.LBB19_53
.LBB19_58:                              # %b1388
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB19_61
# %bb.59:                               # %b3460
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3745, .Lfunc_end19-func_b3745
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3212
	.type	func_b3212,@function
func_b3212:                             # @func_b3212
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
.LBB20_3:                               # %b3822
                                        #   in Loop: Header=BB20_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3194
.LBB20_4:                               # %b3212
                                        #   in Loop: Header=BB20_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$8, %edi
.LBB20_1:                               # %b3212
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB20_6
# %bb.2:                                # %b3214
                                        #   in Loop: Header=BB20_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str0, %edx
	testl	%edx, %edx
	je	.LBB20_3
# %bb.5:                                # %b3823
                                        #   in Loop: Header=BB20_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str0+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b3206
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
	.size	func_b3212, .Lfunc_end20-func_b3212
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3727
	.type	func_b3727,@function
func_b3727:                             # @func_b3727
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
.LBB21_1:                               # %b3727
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_3
# %bb.2:                                # %b3830
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_4
	.p2align	4, 0x90
.LBB21_3:                               # %b3831
                                        #   in Loop: Header=BB21_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_4:                               # %b3831
                                        #   in Loop: Header=BB21_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB21_6
# %bb.5:                                # %b3720
                                        #   in Loop: Header=BB21_1 Depth=1
	incl	%esi
	jmp	.LBB21_1
.LBB21_6:                               # %b1396
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
	calll	func_b3212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB21_8
# %bb.7:                                # %b3717
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3709
	jmp	.LBB21_58
.LBB21_8:                               # %b1394
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB21_10
# %bb.9:                                # %b3697
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3625
	jmp	.LBB21_28
.LBB21_10:                              # %b3687
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB21_12
# %bb.11:                               # %b3689
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_12:                              # %b3675
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB21_15
# %bb.13:                               # %b3686
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_22
# %bb.14:                               # %b3681
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_23
.LBB21_15:                              # %b3668
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB21_19
# %bb.16:                               # %b3827
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB21_17:                              # %b3664
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB21_19
# %bb.18:                               # %b3662
                                        #   in Loop: Header=BB21_17 Depth=1
	incl	%edi
	jmp	.LBB21_17
.LBB21_19:                              # %b3651
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB21_24
# %bb.20:                               # %b3653
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB21_26
# %bb.21:                               # %b3657
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_27
.LBB21_22:                              # %b3683
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_23:                              # %b3683
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3501
	jmp	.LBB21_28
.LBB21_24:                              # %b2051
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB21_29
# %bb.25:                               # %b3642
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	jmp	.LBB21_28
.LBB21_26:                              # %b3659
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_27:                              # %b3659
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3461
.LBB21_28:                              # %b1986
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_29:                              # %b1986
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB21_36
# %bb.30:                               # %b3694
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB21_31:                              # %b3543
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_33
# %bb.32:                               # %b3546
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_34
	.p2align	4, 0x90
.LBB21_33:                              # %b3548
                                        #   in Loop: Header=BB21_31 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_34:                              # %b3539
                                        #   in Loop: Header=BB21_31 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB21_36
# %bb.35:                               # %b3541
                                        #   in Loop: Header=BB21_31 Depth=1
	incl	%ebx
	jmp	.LBB21_31
.LBB21_36:                              # %b3534
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB21_38
# %bb.37:                               # %b3536
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_38:                              # %b3528
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB21_45
# %bb.39:                               # %b3533
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB21_40:                              # %b3505
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_42
# %bb.41:                               # %b3508
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_43
	.p2align	4, 0x90
.LBB21_42:                              # %b3510
                                        #   in Loop: Header=BB21_40 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_43:                              # %b3501
                                        #   in Loop: Header=BB21_40 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB21_45
# %bb.44:                               # %b3503
                                        #   in Loop: Header=BB21_40 Depth=1
	incl	%ebx
	jmp	.LBB21_40
.LBB21_45:                              # %b3500
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB21_49
# %bb.46:                               # %b3824
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB21_47:                              # %b3496
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB21_49
# %bb.48:                               # %b3494
                                        #   in Loop: Header=BB21_47 Depth=1
	incl	%edi
	jmp	.LBB21_47
.LBB21_49:                              # %b3489
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB21_56
# %bb.50:                               # %b3491
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB21_51:                              # %b3465
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB21_53
# %bb.52:                               # %b3468
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_54
	.p2align	4, 0x90
.LBB21_53:                              # %b3470
                                        #   in Loop: Header=BB21_51 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_54:                              # %b3461
                                        #   in Loop: Header=BB21_51 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB21_56
# %bb.55:                               # %b3463
                                        #   in Loop: Header=BB21_51 Depth=1
	incl	%edi
	jmp	.LBB21_51
.LBB21_56:                              # %b1388
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB21_59
# %bb.57:                               # %b3460
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3727, .Lfunc_end21-func_b3727
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3709
	.type	func_b3709,@function
func_b3709:                             # @func_b3709
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
.LBB22_1:                               # %b3709
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_3
# %bb.2:                                # %b3828
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_4
	.p2align	4, 0x90
.LBB22_3:                               # %b3829
                                        #   in Loop: Header=BB22_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_4:                               # %b3829
                                        #   in Loop: Header=BB22_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB22_6
# %bb.5:                                # %b3702
                                        #   in Loop: Header=BB22_1 Depth=1
	incl	%esi
	jmp	.LBB22_1
.LBB22_6:                               # %b1394
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB22_8
# %bb.7:                                # %b3697
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3625
	jmp	.LBB22_26
.LBB22_8:                               # %b3687
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB22_10
# %bb.9:                                # %b3689
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_10:                              # %b3675
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB22_13
# %bb.11:                               # %b3686
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_20
# %bb.12:                               # %b3681
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_21
.LBB22_13:                              # %b3668
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB22_17
# %bb.14:                               # %b3827
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB22_15:                              # %b3664
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB22_17
# %bb.16:                               # %b3662
                                        #   in Loop: Header=BB22_15 Depth=1
	incl	%edi
	jmp	.LBB22_15
.LBB22_17:                              # %b3651
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB22_22
# %bb.18:                               # %b3653
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB22_24
# %bb.19:                               # %b3657
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_25
.LBB22_20:                              # %b3683
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_21:                              # %b3683
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3501
	jmp	.LBB22_26
.LBB22_22:                              # %b2051
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB22_27
# %bb.23:                               # %b3642
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	jmp	.LBB22_26
.LBB22_24:                              # %b3659
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_25:                              # %b3659
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3461
.LBB22_26:                              # %b1986
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_27:                              # %b1986
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB22_34
# %bb.28:                               # %b3694
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB22_29:                              # %b3543
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_31
# %bb.30:                               # %b3546
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_32
	.p2align	4, 0x90
.LBB22_31:                              # %b3548
                                        #   in Loop: Header=BB22_29 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_32:                              # %b3539
                                        #   in Loop: Header=BB22_29 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB22_34
# %bb.33:                               # %b3541
                                        #   in Loop: Header=BB22_29 Depth=1
	incl	%ebx
	jmp	.LBB22_29
.LBB22_34:                              # %b3534
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB22_36
# %bb.35:                               # %b3536
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_36:                              # %b3528
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB22_43
# %bb.37:                               # %b3533
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB22_38:                              # %b3505
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_40
# %bb.39:                               # %b3508
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_41
	.p2align	4, 0x90
.LBB22_40:                              # %b3510
                                        #   in Loop: Header=BB22_38 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_41:                              # %b3501
                                        #   in Loop: Header=BB22_38 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB22_43
# %bb.42:                               # %b3503
                                        #   in Loop: Header=BB22_38 Depth=1
	incl	%ebx
	jmp	.LBB22_38
.LBB22_43:                              # %b3500
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB22_47
# %bb.44:                               # %b3824
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB22_45:                              # %b3496
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB22_47
# %bb.46:                               # %b3494
                                        #   in Loop: Header=BB22_45 Depth=1
	incl	%edi
	jmp	.LBB22_45
.LBB22_47:                              # %b3489
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB22_54
# %bb.48:                               # %b3491
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB22_49:                              # %b3465
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB22_51
# %bb.50:                               # %b3468
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_52
	.p2align	4, 0x90
.LBB22_51:                              # %b3470
                                        #   in Loop: Header=BB22_49 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_52:                              # %b3461
                                        #   in Loop: Header=BB22_49 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB22_54
# %bb.53:                               # %b3463
                                        #   in Loop: Header=BB22_49 Depth=1
	incl	%edi
	jmp	.LBB22_49
.LBB22_54:                              # %b1388
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB22_56
# %bb.55:                               # %b3460
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3709, .Lfunc_end22-func_b3709
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3625
	.type	func_b3625,@function
func_b3625:                             # @func_b3625
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
.LBB23_1:                               # %b3625
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_3
# %bb.2:                                # %b3825
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_4
	.p2align	4, 0x90
.LBB23_3:                               # %b3826
                                        #   in Loop: Header=BB23_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_4:                               # %b3616
                                        #   in Loop: Header=BB23_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_5
# %bb.28:                               # %b3618
                                        #   in Loop: Header=BB23_1 Depth=1
	incl	%edi
	jmp	.LBB23_1
.LBB23_5:                               # %b3613
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB23_7
# %bb.6:                                # %b3615
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_7:                               # %b3615
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB23_8
# %bb.12:                               # %b3533
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB23_13:                              # %b3505
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB23_18
# %bb.14:                               # %b3508
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_19
	.p2align	4, 0x90
.LBB23_18:                              # %b3510
                                        #   in Loop: Header=BB23_13 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_19:                              # %b3501
                                        #   in Loop: Header=BB23_13 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB23_8
# %bb.20:                               # %b3503
                                        #   in Loop: Header=BB23_13 Depth=1
	incl	%ebx
	jmp	.LBB23_13
.LBB23_8:                               # %b3500
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB23_9
# %bb.15:                               # %b3824
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB23_16:                              # %b3496
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB23_9
# %bb.17:                               # %b3494
                                        #   in Loop: Header=BB23_16 Depth=1
	incl	%edi
	jmp	.LBB23_16
.LBB23_9:                               # %b3489
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB23_10
# %bb.22:                               # %b3491
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB23_23:                              # %b3465
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_25
# %bb.24:                               # %b3468
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_26
	.p2align	4, 0x90
.LBB23_25:                              # %b3470
                                        #   in Loop: Header=BB23_23 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_26:                              # %b3461
                                        #   in Loop: Header=BB23_23 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_10
# %bb.27:                               # %b3463
                                        #   in Loop: Header=BB23_23 Depth=1
	incl	%edi
	jmp	.LBB23_23
.LBB23_10:                              # %b1388
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB23_11
# %bb.21:                               # %b3460
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3625, .Lfunc_end23-func_b3625
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3019
	.type	func_b3019,@function
func_b3019:                             # @func_b3019
	.cfi_startproc
# %bb.0:                                # %b3019
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
# %bb.10:                               # %b3021
	movl	$str4+1, %edi
	.p2align	4, 0x90
.LBB24_11:                              # %b3003
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_16
# %bb.12:                               # %b3006
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_17
	.p2align	4, 0x90
.LBB24_16:                              # %b3008
                                        #   in Loop: Header=BB24_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_17:                              # %b2999
                                        #   in Loop: Header=BB24_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_1
# %bb.18:                               # %b3001
                                        #   in Loop: Header=BB24_11 Depth=1
	incl	%edi
	jmp	.LBB24_11
.LBB24_1:                               # %b1370
	movl	(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str5, %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.13:                               # %b2998
	movl	$str5+1, %edi
	.p2align	4, 0x90
.LBB24_14:                              # %b2990
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_22
# %bb.15:                               # %b2993
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_23
	.p2align	4, 0x90
.LBB24_22:                              # %b2995
                                        #   in Loop: Header=BB24_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_23:                              # %b2986
                                        #   in Loop: Header=BB24_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.24:                               # %b2988
                                        #   in Loop: Header=BB24_14 Depth=1
	incl	%edi
	jmp	.LBB24_14
.LBB24_2:                               # %b1368
	movl	4(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str6, %ebx
	testl	%ebx, %ebx
	je	.LBB24_3
# %bb.19:                               # %b2985
	movl	$str6+1, %edi
	.p2align	4, 0x90
.LBB24_20:                              # %b2977
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_28
# %bb.21:                               # %b2980
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_29
	.p2align	4, 0x90
.LBB24_28:                              # %b2982
                                        #   in Loop: Header=BB24_20 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_29:                              # %b2973
                                        #   in Loop: Header=BB24_20 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_3
# %bb.30:                               # %b2975
                                        #   in Loop: Header=BB24_20 Depth=1
	incl	%edi
	jmp	.LBB24_20
.LBB24_3:                               # %b1366
	movl	8(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	shrl	$4, %edi
	je	.LBB24_25
# %bb.4:                                # %b2012.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB24_5:                               # %b2012
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
	calll	func_b1248
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%esi)
	leal	1(%esi), %eax
	cmpl	$32, %eax
	jae	.LBB24_7
# %bb.6:                                # %b3956
                                        #   in Loop: Header=BB24_5 Depth=1
	shrl	$4, %edi
	jne	.LBB24_5
.LBB24_7:                               # %b2013
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3943
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB24_8:                               # %b2010
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB24_8
	jmp	.LBB24_9
.LBB24_25:                              # %b3950
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB24_27
# %bb.26:                               # %b3952
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
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
	calll	func_b3943
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB24_27:                              # %b2070
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
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
	.size	func_b3019, .Lfunc_end24-func_b3019
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3539
	.type	func_b3539,@function
func_b3539:                             # @func_b3539
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
.LBB25_11:                              # %b3548
                                        #   in Loop: Header=BB25_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_12:                              # %b3539
                                        #   in Loop: Header=BB25_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_1:                               # %b3539
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_2
# %bb.10:                               # %b3541
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB25_11
# %bb.9:                                # %b3546
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_12
.LBB25_2:                               # %b3534
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB25_4
# %bb.3:                                # %b3536
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_4:                               # %b3536
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB25_5
# %bb.13:                               # %b3533
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB25_14:                              # %b3505
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB25_19
# %bb.15:                               # %b3508
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_20
	.p2align	4, 0x90
.LBB25_19:                              # %b3510
                                        #   in Loop: Header=BB25_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_20:                              # %b3501
                                        #   in Loop: Header=BB25_14 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB25_5
# %bb.21:                               # %b3503
                                        #   in Loop: Header=BB25_14 Depth=1
	incl	%ebx
	jmp	.LBB25_14
.LBB25_5:                               # %b3500
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB25_6
# %bb.16:                               # %b3824
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB25_17:                              # %b3496
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB25_6
# %bb.18:                               # %b3494
                                        #   in Loop: Header=BB25_17 Depth=1
	incl	%edi
	jmp	.LBB25_17
.LBB25_6:                               # %b3489
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB25_7
# %bb.23:                               # %b3491
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB25_24:                              # %b3465
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB25_26
# %bb.25:                               # %b3468
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_27
	.p2align	4, 0x90
.LBB25_26:                              # %b3470
                                        #   in Loop: Header=BB25_24 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_27:                              # %b3461
                                        #   in Loop: Header=BB25_24 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_7
# %bb.28:                               # %b3463
                                        #   in Loop: Header=BB25_24 Depth=1
	incl	%edi
	jmp	.LBB25_24
.LBB25_7:                               # %b1388
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB25_8
# %bb.22:                               # %b3460
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3539, .Lfunc_end25-func_b3539
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3501
	.type	func_b3501,@function
func_b3501:                             # @func_b3501
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
.LBB26_11:                              # %b3510
                                        #   in Loop: Header=BB26_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_12:                              # %b3501
                                        #   in Loop: Header=BB26_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_1:                               # %b3501
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_2
# %bb.10:                               # %b3503
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_11
# %bb.9:                                # %b3508
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_12
.LBB26_2:                               # %b3500
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB26_3
# %bb.6:                                # %b3824
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB26_7:                               # %b3496
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB26_3
# %bb.8:                                # %b3494
                                        #   in Loop: Header=BB26_7 Depth=1
	incl	%edi
	jmp	.LBB26_7
.LBB26_3:                               # %b3489
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB26_4
# %bb.14:                               # %b3491
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB26_15:                              # %b3465
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_17
# %bb.16:                               # %b3468
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_18
	.p2align	4, 0x90
.LBB26_17:                              # %b3470
                                        #   in Loop: Header=BB26_15 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_18:                              # %b3461
                                        #   in Loop: Header=BB26_15 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_4
# %bb.19:                               # %b3463
                                        #   in Loop: Header=BB26_15 Depth=1
	incl	%edi
	jmp	.LBB26_15
.LBB26_4:                               # %b1388
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB26_5
# %bb.13:                               # %b3460
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3501, .Lfunc_end26-func_b3501
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3461
	.type	func_b3461,@function
func_b3461:                             # @func_b3461
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
.LBB27_7:                               # %b3470
                                        #   in Loop: Header=BB27_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_8:                               # %b3461
                                        #   in Loop: Header=BB27_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_1:                               # %b3461
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB27_2
# %bb.6:                                # %b3463
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_7
# %bb.5:                                # %b3468
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_8
.LBB27_2:                               # %b1388
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB27_4
# %bb.3:                                # %b3460
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3461, .Lfunc_end27-func_b3461
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3306
	.type	func_b3306,@function
func_b3306:                             # @func_b3306
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
.LBB28_1:                               # %b3306
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB28_3
# %bb.2:                                # %b3834
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_4
	.p2align	4, 0x90
.LBB28_3:                               # %b3835
                                        #   in Loop: Header=BB28_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_4:                               # %b3297
                                        #   in Loop: Header=BB28_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB28_5
# %bb.9:                                # %b3299
                                        #   in Loop: Header=BB28_1 Depth=1
	incl	%edi
	jmp	.LBB28_1
.LBB28_5:                               # %b1570
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB28_6
# %bb.8:                                # %b3291
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3257
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB28_7
.LBB28_6:                               # %b1574
	movl	%esi, users+52
.LBB28_7:                               # %b1574
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end28:
	.size	func_b3306, .Lfunc_end28-func_b3306
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3257
	.type	func_b3257,@function
func_b3257:                             # @func_b3257
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
.LBB29_1:                               # %b3257
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_3
# %bb.2:                                # %b3260
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_4
	.p2align	4, 0x90
.LBB29_3:                               # %b3262
                                        #   in Loop: Header=BB29_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_4:                               # %b3253
                                        #   in Loop: Header=BB29_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB29_5
# %bb.6:                                # %b3255
                                        #   in Loop: Header=BB29_1 Depth=1
	incl	%edi
	jmp	.LBB29_1
.LBB29_5:                               # %b1574
	movl	%esi, users+52
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end29:
	.size	func_b3257, .Lfunc_end29-func_b3257
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3288
	.type	func_b3288,@function
func_b3288:                             # @func_b3288
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
.LBB30_1:                               # %b3288
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB30_3
# %bb.2:                                # %b3836
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_3:                               # %b3837
                                        #   in Loop: Header=BB30_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB30_4:                               # %b3279
                                        #   in Loop: Header=BB30_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB30_5
# %bb.9:                                # %b3281
                                        #   in Loop: Header=BB30_1 Depth=1
	incl	%edi
	jmp	.LBB30_1
.LBB30_5:                               # %b1581
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB30_6
# %bb.8:                                # %b3278
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3267
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB30_7
.LBB30_6:                               # %b1585
	movl	%esi, users+124
.LBB30_7:                               # %b1585
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end30:
	.size	func_b3288, .Lfunc_end30-func_b3288
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3267
	.type	func_b3267,@function
func_b3267:                             # @func_b3267
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
.LBB31_1:                               # %b3267
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB31_3
# %bb.2:                                # %b3270
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_4
	.p2align	4, 0x90
.LBB31_3:                               # %b3272
                                        #   in Loop: Header=BB31_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_4:                               # %b3263
                                        #   in Loop: Header=BB31_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB31_5
# %bb.6:                                # %b3265
                                        #   in Loop: Header=BB31_1 Depth=1
	incl	%edi
	jmp	.LBB31_1
.LBB31_5:                               # %b1585
	movl	%esi, users+124
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end31:
	.size	func_b3267, .Lfunc_end31-func_b3267
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3194
	.type	func_b3194,@function
func_b3194:                             # @func_b3194
	.cfi_startproc
# %bb.0:                                # %b3194
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
# %bb.7:                                # %b3196
	movl	$str13+1, %esi
	.p2align	4, 0x90
.LBB32_8:                               # %b3193
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB32_1
# %bb.9:                                # %b3191
                                        #   in Loop: Header=BB32_8 Depth=1
	incl	%esi
	jmp	.LBB32_8
.LBB32_1:                               # %b3186
	movl	32(%esp), %esi
	movzbl	str1, %ebx
	testl	%ebx, %ebx
	je	.LBB32_2
# %bb.10:                               # %b3188
	movl	$str1+1, %edi
	.p2align	4, 0x90
.LBB32_11:                              # %b3180
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB32_16
# %bb.12:                               # %b3183
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_17
	.p2align	4, 0x90
.LBB32_16:                              # %b3185
                                        #   in Loop: Header=BB32_11 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_17:                              # %b3176
                                        #   in Loop: Header=BB32_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB32_2
# %bb.18:                               # %b3178
                                        #   in Loop: Header=BB32_11 Depth=1
	incl	%edi
	jmp	.LBB32_11
.LBB32_2:                               # %b1905
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
	calll	func_b1248
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
	calll	func_b4006
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB32_3
# %bb.13:                               # %b3175
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB32_14:                              # %b3167
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB32_23
# %bb.15:                               # %b3170
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_24
	.p2align	4, 0x90
.LBB32_23:                              # %b3172
                                        #   in Loop: Header=BB32_14 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_24:                              # %b3163
                                        #   in Loop: Header=BB32_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB32_3
# %bb.25:                               # %b3165
                                        #   in Loop: Header=BB32_14 Depth=1
	incl	%edi
	jmp	.LBB32_14
.LBB32_3:                               # %b3154
	movl	36(%esp), %edi
	movzbl	str7, %ebp
	testl	%ebp, %ebp
	je	.LBB32_4
# %bb.20:                               # %b3156
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB32_21
# %bb.19:                               # %b3160
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_22
.LBB32_4:                               # %b2123
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
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str8, %ebp
	testl	%ebp, %ebp
	je	.LBB32_5
# %bb.27:                               # %b3128
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB32_28
# %bb.26:                               # %b3132
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_29
.LBB32_21:                              # %b3162
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_22:                              # %b3162
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3138
	jmp	.LBB32_30
.LBB32_5:                               # %b2124
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
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB32_31
# %bb.6:                                # %b3104
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
	jmp	.LBB32_30
.LBB32_28:                              # %b3134
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_29:                              # %b3134
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3110
.LBB32_30:                              # %b3134
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB32_31:                              # %b3134
	movzbl	str3, %edi
	testl	%edi, %edi
	je	.LBB32_38
# %bb.32:                               # %b3150
	movl	$str3+1, %ebx
	.p2align	4, 0x90
.LBB32_33:                              # %b3090
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB32_35
# %bb.34:                               # %b3093
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_36
	.p2align	4, 0x90
.LBB32_35:                              # %b3095
                                        #   in Loop: Header=BB32_33 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_36:                              # %b3086
                                        #   in Loop: Header=BB32_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB32_38
# %bb.37:                               # %b3088
                                        #   in Loop: Header=BB32_33 Depth=1
	incl	%ebx
	jmp	.LBB32_33
.LBB32_38:                              # %b1372
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
	.size	func_b3194, .Lfunc_end32-func_b3194
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3206
	.type	func_b3206,@function
func_b3206:                             # @func_b3206
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
.LBB33_1:                               # %b3206
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB33_3
# %bb.2:                                # %b3818
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_4
	.p2align	4, 0x90
.LBB33_3:                               # %b3819
                                        #   in Loop: Header=BB33_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_4:                               # %b3197
                                        #   in Loop: Header=BB33_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB33_5
# %bb.6:                                # %b3199
                                        #   in Loop: Header=BB33_1 Depth=1
	incl	%ebx
	jmp	.LBB33_1
.LBB33_5:                               # %c269
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3194
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
	.size	func_b3206, .Lfunc_end33-func_b3206
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b4006
	.type	func_b4006,@function
func_b4006:                             # @func_b4006
	.cfi_startproc
# %bb.0:                                # %b4006
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
# %bb.1:                                # %b4008
	movl	44(%esp), %eax
	movl	$-858993459, %ebp               # imm = 0xCCCCCCCD
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	je	.LBB34_2
	.p2align	4, 0x90
.LBB34_5:                               # %b2019
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
	calll	func_b1248
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%ebx)
	leal	1(%ebx), %ecx
	cmpl	$32, %ecx
	jae	.LBB34_7
# %bb.6:                                # %b4000
                                        #   in Loop: Header=BB34_5 Depth=1
	movl	%esi, %eax
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	jne	.LBB34_5
.LBB34_7:                               # %b2013
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3943
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB34_8:                               # %b2010
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%ebx), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%ebx
	jns	.LBB34_8
# %bb.9:                                # %b295
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	jmp	.LBB34_10
.LBB34_2:                               # %b3950
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB34_4
# %bb.3:                                # %b3952
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
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
	calll	func_b3943
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB34_4:                               # %b2070
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
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
	.size	func_b4006, .Lfunc_end34-func_b4006
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3138
	.type	func_b3138,@function
func_b3138:                             # @func_b3138
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
.LBB35_7:                               # %b3147
                                        #   in Loop: Header=BB35_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_8:                               # %b3138
                                        #   in Loop: Header=BB35_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_1:                               # %b3138
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_2
# %bb.6:                                # %b3140
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_7
# %bb.5:                                # %b3145
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_8
.LBB35_2:                               # %b1382
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
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str8, %ebx
	testl	%ebx, %ebx
	je	.LBB35_3
# %bb.10:                               # %b3137
	movl	$str8+1, %edi
	.p2align	4, 0x90
.LBB35_11:                              # %b3114
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_13
# %bb.12:                               # %b3117
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_14
	.p2align	4, 0x90
.LBB35_13:                              # %b3119
                                        #   in Loop: Header=BB35_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_14:                              # %b3110
                                        #   in Loop: Header=BB35_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_3
# %bb.15:                               # %b3112
                                        #   in Loop: Header=BB35_11 Depth=1
	incl	%edi
	jmp	.LBB35_11
.LBB35_3:                               # %b1380
	movl	4(%esi), %esi
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB35_4
# %bb.9:                                # %b3109
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3138, .Lfunc_end35-func_b3138
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3110
	.type	func_b3110,@function
func_b3110:                             # @func_b3110
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
.LBB36_7:                               # %b3119
                                        #   in Loop: Header=BB36_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_8:                               # %b3110
                                        #   in Loop: Header=BB36_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_1:                               # %b3110
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB36_2
# %bb.6:                                # %b3112
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB36_7
# %bb.5:                                # %b3117
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_8
.LBB36_2:                               # %b1380
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
	calll	func_b1248
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
	calll	func_b3959
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB36_4
# %bb.3:                                # %b3109
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2940
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
	.size	func_b3110, .Lfunc_end36-func_b3110
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3056
	.type	func_b3056,@function
func_b3056:                             # @func_b3056
	.cfi_startproc
# %bb.0:                                # %b3056
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
# %bb.5:                                # %b3058
	movl	$str11+1, %esi
	.p2align	4, 0x90
.LBB37_6:                               # %b3055
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1445
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB37_1
# %bb.7:                                # %b3053
                                        #   in Loop: Header=BB37_6 Depth=1
	incl	%esi
	jmp	.LBB37_6
.LBB37_1:                               # %b3048
	movl	32(%esp), %esi
	movzbl	str1, %ebx
	testl	%ebx, %ebx
	je	.LBB37_2
# %bb.8:                                # %b3050
	movl	$str1+1, %edi
	.p2align	4, 0x90
.LBB37_9:                               # %b3042
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_14
# %bb.10:                               # %b3045
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_15
	.p2align	4, 0x90
.LBB37_14:                              # %b3047
                                        #   in Loop: Header=BB37_9 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_15:                              # %b3038
                                        #   in Loop: Header=BB37_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_2
# %bb.16:                               # %b3040
                                        #   in Loop: Header=BB37_9 Depth=1
	incl	%edi
	jmp	.LBB37_9
.LBB37_2:                               # %b1841
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
	calll	func_b1248
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
	calll	func_b4006
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str2, %ebp
	testl	%ebp, %ebp
	je	.LBB37_3
# %bb.11:                               # %b3037
	movl	$str2+1, %ebx
	.p2align	4, 0x90
.LBB37_12:                              # %b3029
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB37_20
# %bb.13:                               # %b3032
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_21
	.p2align	4, 0x90
.LBB37_20:                              # %b3034
                                        #   in Loop: Header=BB37_12 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_21:                              # %b3025
                                        #   in Loop: Header=BB37_12 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB37_3
# %bb.22:                               # %b3027
                                        #   in Loop: Header=BB37_12 Depth=1
	incl	%ebx
	jmp	.LBB37_12
.LBB37_3:                               # %b1842
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3019
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str3, %ebx
	testl	%ebx, %ebx
	je	.LBB37_4
# %bb.17:                               # %b3024
	movl	$str3+1, %edi
	.p2align	4, 0x90
.LBB37_18:                              # %b3013
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_23
# %bb.19:                               # %b3016
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_24
	.p2align	4, 0x90
.LBB37_23:                              # %b3018
                                        #   in Loop: Header=BB37_18 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_24:                              # %b3009
                                        #   in Loop: Header=BB37_18 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_4
# %bb.25:                               # %b3011
                                        #   in Loop: Header=BB37_18 Depth=1
	incl	%edi
	jmp	.LBB37_18
.LBB37_4:                               # %b1372
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
	.size	func_b3056, .Lfunc_end37-func_b3056
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3068
	.type	func_b3068,@function
func_b3068:                             # @func_b3068
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
.LBB38_1:                               # %b3068
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
	calll	func_b1212
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB38_3
# %bb.2:                                # %b3812
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
	calll	func_b1212
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_4
	.p2align	4, 0x90
.LBB38_3:                               # %b3813
                                        #   in Loop: Header=BB38_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_4:                               # %b3059
                                        #   in Loop: Header=BB38_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1436
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB38_5
# %bb.6:                                # %b3061
                                        #   in Loop: Header=BB38_1 Depth=1
	incl	%ebx
	jmp	.LBB38_1
.LBB38_5:                               # %c193
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3056
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
	.size	func_b3068, .Lfunc_end38-func_b3068
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
	.type	raw.6,@object                   # @raw.6
	.local	raw.6
	.comm	raw.6,10,4
	.type	raw.5,@object                   # @raw.5
	.local	raw.5
	.comm	raw.5,4,4
	.type	.Lstr.14,@object                # @str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.14:
	.asciz	"\n"
	.size	.Lstr.14, 2

	.type	.Lstr.13,@object                # @str.13
.Lstr.13:
	.asciz	", frame=0x"
	.size	.Lstr.13, 11

	.type	raw.12,@object                  # @raw.12
	.local	raw.12
	.comm	raw.12,32,1
	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"Exception 0x"
	.size	.Lstr.11, 13

	.type	.Lstr.44,@object                # @str.44
.Lstr.44:
	.asciz	"\n"
	.size	.Lstr.44, 2

	.type	.Lstr.43,@object                # @str.43
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.43:
	.asciz	"user code is at 0x"
	.size	.Lstr.43, 19

	.type	.Lstr.42,@object                # @str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.42:
	.asciz	"\n"
	.size	.Lstr.42, 2

	.type	.Lstr.35,@object                # @str.35
.Lstr.35:
	.asciz	"]\n"
	.size	.Lstr.35, 3

	.type	.Lstr.41,@object                # @str.41
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.41:
	.asciz	"Found header for second user program:\n"
	.size	.Lstr.41, 39

	.type	.Lstr.45,@object                # @str.45
	.p2align	4
.Lstr.45:
	.asciz	"Did not find second user program\n"
	.size	.Lstr.45, 34

	.type	.Lstr.34,@object                # @str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.34:
	.asciz	" ["
	.size	.Lstr.34, 3

	.type	.Lstr.40,@object                # @str.40
.Lstr.40:
	.asciz	"\n"
	.size	.Lstr.40, 2

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"], entry 0x"
	.size	.Lstr.23, 12

	.type	.Lstr.22,@object                # @str.22
.Lstr.22:
	.asciz	"-0x"
	.size	.Lstr.22, 4

	.type	.Lstr.21,@object                # @str.21
.Lstr.21:
	.asciz	"[0x"
	.size	.Lstr.21, 4

	.type	.Lstr.36,@object                # @str.36
.Lstr.36:
	.asciz	"imgline"
	.size	.Lstr.36, 8

	.type	.Lstr.33,@object                # @str.33
.Lstr.33:
	.asciz	": "
	.size	.Lstr.33, 3

	.type	.Lstr.39,@object                # @str.39
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.39:
	.asciz	"Found header for first user program:\n"
	.size	.Lstr.39, 38

	.type	.Lstr.32,@object                # @str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.32:
	.asciz	"cmdline"
	.size	.Lstr.32, 8

	.type	.Lstr.38,@object                # @str.38
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.38:
	.asciz	"\nHalting kernel, returning to mimgload\n"
	.size	.Lstr.38, 40

	.type	.Lstr.31,@object                # @str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.31:
	.asciz	" "
	.size	.Lstr.31, 2

	.type	.Lstr.37,@object                # @str.37
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.37:
	.asciz	"Did not find first user program\n"
	.size	.Lstr.37, 33

	.type	.Lstr.30,@object                # @str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.30:
	.asciz	"Strings:\n"
	.size	.Lstr.30, 10

	.type	.Lstr.24,@object                # @str.24
.Lstr.24:
	.asciz	"\n"
	.size	.Lstr.24, 2

	.type	.Lstr.29,@object                # @str.29
.Lstr.29:
	.asciz	"]"
	.size	.Lstr.29, 2

	.type	.Lstr.28,@object                # @str.28
.Lstr.28:
	.asciz	"-0x"
	.size	.Lstr.28, 4

	.type	.Lstr.27,@object                # @str.27
.Lstr.27:
	.asciz	"[0x"
	.size	.Lstr.27, 4

	.type	.Lstr.20,@object                # @str.20
.Lstr.20:
	.asciz	"]: "
	.size	.Lstr.20, 4

	.type	.Lstr.19,@object                # @str.19
.Lstr.19:
	.asciz	"["
	.size	.Lstr.19, 2

	.type	.Lstr.26,@object                # @str.26
.Lstr.26:
	.asciz	"mmap"
	.size	.Lstr.26, 5

	.type	.Lstr.17,@object                # @str.17
.Lstr.17:
	.asciz	" "
	.size	.Lstr.17, 2

	.type	.Lstr.25,@object                # @str.25
.Lstr.25:
	.asciz	"Memory map:\n"
	.size	.Lstr.25, 13

	.type	.Lstr.18,@object                # @str.18
.Lstr.18:
	.asciz	"header"
	.size	.Lstr.18, 7

	.type	.Lstr.16,@object                # @str.16
.Lstr.16:
	.asciz	"Headers:\n"
	.size	.Lstr.16, 10

	.type	.Lstr.15,@object                # @str.15
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.15:
	.asciz	" Last key pressed:"
	.size	.Lstr.15, 19

.set current, raw.0
.set users, raw.1
.set console, raw.2
.set keyDown, raw.4
.set keyUp, raw.3
.set ticks, raw.5
.set ball, raw.6
.set pos, raw.9
.set dir, raw.10
.set spinpos, raw.8
.set spinner, raw.7
.set str54, .Lstr.11
	.size	str54, 1
.set itoaBuf, raw.12
.set str55, .Lstr.13
	.size	str55, 1
.set str56, .Lstr.14
	.size	str56, 1
.set str44, .Lstr.15
	.size	str44, 1
.set str10, .Lstr.16
	.size	str10, 1
.set str12, .Lstr.25
	.size	str12, 1
.set str14, .Lstr.30
	.size	str14, 1
.set str51, .Lstr.37
	.size	str51, 1
.set str17, .Lstr.31
	.size	str17, 1
.set str45, .Lstr.38
	.size	str45, 1
.set str15, .Lstr.32
	.size	str15, 1
.set str46, .Lstr.39
	.size	str46, 1
.set str18, .Lstr.33
	.size	str18, 1
.set str16, .Lstr.36
	.size	str16, 1
.set str47, .Lstr.40
	.size	str47, 1
.set str19, .Lstr.34
	.size	str19, 1
.set str50, .Lstr.45
	.size	str50, 1
.set str48, .Lstr.41
	.size	str48, 1
.set str20, .Lstr.35
	.size	str20, 1
.set str49, .Lstr.42
	.size	str49, 1
.set str52, .Lstr.43
	.size	str52, 1
.set str53, .Lstr.44
	.size	str53, 1
.set str4, .Lstr.21
	.size	str4, 1
.set str5, .Lstr.22
	.size	str5, 1
.set str6, .Lstr.23
	.size	str6, 1
.set str0, .Lstr.17
	.size	str0, 1
.set str13, .Lstr.26
	.size	str13, 1
.set str1, .Lstr.19
	.size	str1, 1
.set str2, .Lstr.20
	.size	str2, 1
.set str7, .Lstr.27
	.size	str7, 1
.set str8, .Lstr.28
	.size	str8, 1
.set str9, .Lstr.29
	.size	str9, 1
.set str3, .Lstr.24
	.size	str3, 1
.set str11, .Lstr.18
	.size	str11, 1
	.section	".note.GNU-stack","",@progbits
