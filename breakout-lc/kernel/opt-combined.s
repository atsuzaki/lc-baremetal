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
	calll	func_b1179
	cmpl	$10, %edi
	jne	.LBB1_2
# %bb.1:                                # %b1710
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	movl	%eax, (%esp)
	movl	$13, 8(%esp)
	movl	$0, 4(%esp)
	calll	func_b1179
.LBB1_2:                                # %b1711
	movl	%edi, (%esp)
	calll	func_b1400
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
	.p2align	4, 0x90                         # -- Begin function func_b1179
	.type	func_b1179,@function
func_b1179:                             # @func_b1179
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
.LBB2_3:                                # %b2547
	movw	$1016, %dx                      # imm = 0x3F8
	movl	%ecx, %eax
	#APP
	outb	%al, %dx
	#NO_APP
	retl
.Lfunc_end2:
	.size	func_b1179, .Lfunc_end2-func_b1179
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1400
	.type	func_b1400,@function
func_b1400:                             # @func_b1400
	.cfi_startproc
# %bb.0:                                # %b1400
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
# %bb.7:                                # %b1405
	cmpl	$10, %edx
	je	.LBB3_1
# %bb.8:                                # %b1407
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
# %bb.9:                                # %b3905
	movb	%cl, console+5
	jmp	.LBB3_10
.LBB3_1:                                # %b1402
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB3_3
# %bb.2:                                # %b3901
	movb	%al, console+4
	jmp	.LBB3_10
.LBB3_3:                                # %b1404
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
.LBB3_4:                                # %b3892
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
	calll	func_b1187
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB3_4
.LBB3_5:                                # %b1185.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB3_6:                                # %b1185
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
	.size	func_b1400, .Lfunc_end3-func_b1400
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1187
	.type	func_b1187,@function
func_b1187:                             # @func_b1187
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
.LBB4_1:                                # %b1187
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
	.size	func_b1187, .Lfunc_end4-func_b1187
	.cfi_endproc
                                        # -- End function
	.globl	keyboardInterrupt               # -- Begin function keyboardInterrupt
	.p2align	4, 0x90
	.type	keyboardInterrupt,@function
keyboardInterrupt:                      # @keyboardInterrupt
	.cfi_startproc
# %bb.0:                                # %keyboardInterrupt
	pushl	%ebx
	.cfi_def_cfa_offset 8
	pushl	%edi
	.cfi_def_cfa_offset 12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset %esi, -16
	.cfi_offset %edi, -12
	.cfi_offset %ebx, -8
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
	movzbl	%al, %esi
	movzbl	str57, %ebx
	testl	%ebx, %ebx
	je	.LBB5_7
# %bb.1:                                # %b2942
	movl	$str57+1, %edi
	.p2align	4, 0x90
.LBB5_2:                                # %b2934
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB5_4
# %bb.3:                                # %b2937
                                        #   in Loop: Header=BB5_2 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                # %b2939
                                        #   in Loop: Header=BB5_2 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB5_5:                                # %b2930
                                        #   in Loop: Header=BB5_2 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB5_7
# %bb.6:                                # %b2932
                                        #   in Loop: Header=BB5_2 Depth=1
	incl	%edi
	jmp	.LBB5_2
.LBB5_7:                                # %b1327
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
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
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end5:
	.size	keyboardInterrupt, .Lfunc_end5-keyboardInterrupt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1215
	.type	func_b1215,@function
func_b1215:                             # @func_b1215
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %ecx
	movl	4(%esp), %eax
	cmpl	%ecx, %eax
	ja	.LBB6_2
# %bb.1:                                # %b888
	addl	$48, %eax
	movzbl	%al, %eax
	retl
.LBB6_2:                                # %b889
	addl	$87, %eax
	movzbl	%al, %eax
	retl
.Lfunc_end6:
	.size	func_b1215, .Lfunc_end6-func_b1215
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3930
	.type	func_b3930,@function
func_b3930:                             # @func_b3930
	.cfi_startproc
# %bb.0:                                # %b3930
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
	ja	.LBB7_2
# %bb.1:                                # %b3932
	movl	28(%esp), %ebx
	shrl	$4, %ebx
	je	.LBB7_2
	.p2align	4, 0x90
.LBB7_5:                                # %b1984
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
	calll	func_b1215
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%edi)
	leal	1(%edi), %eax
	cmpl	$32, %eax
	jae	.LBB7_7
# %bb.6:                                # %b3927
                                        #   in Loop: Header=BB7_5 Depth=1
	shrl	$4, %ebx
	jne	.LBB7_5
.LBB7_7:                                # %b1985
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3914
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB7_8:                                # %b1982
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%edi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%edi
	jns	.LBB7_8
	jmp	.LBB7_9
.LBB7_2:                                # %b3921
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB7_4
# %bb.3:                                # %b3923
	movl	$1, %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
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
	calll	func_b3914
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB7_4:                                # %b2042
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB7_9:                                # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end7:
	.size	func_b3930, .Lfunc_end7-func_b3930
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1409
	.type	func_b1409,@function
func_b1409:                             # @func_b1409
	.cfi_startproc
# %bb.0:                                # %b1409
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB8_12
# %bb.1:                                # %b1397
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	console+4, %eax
	cmpl	$13, %ebx
	je	.LBB8_2
# %bb.8:                                # %b1405
	cmpl	$10, %ebx
	je	.LBB8_2
# %bb.9:                                # %b1407
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
	ja	.LBB8_2
# %bb.10:                               # %b3905
	movb	%cl, console+5
	jmp	.LBB8_11
.LBB8_12:                               # %c32
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
	jmp	func_b1400                      # TAILCALL
.LBB8_2:                                # %b1402
	.cfi_def_cfa_offset 32
	movb	console+1, %cl
	movb	%cl, console+5
	movzbl	console+2, %ecx
	incl	%eax
	cmpl	%ecx, %eax
	ja	.LBB8_4
# %bb.3:                                # %b3901
	movb	%al, console+4
	jmp	.LBB8_11
.LBB8_4:                                # %b1404
	movzbl	console, %ebp
	movzbl	console+1, %esi
	movzbl	console+2, %edi
	movzbl	console+3, %ebx
	movzbl	console+6, %eax
	movl	%eax, 4(%esp)                   # 4-byte Spill
	leal	1(%ebp), %eax
	cmpl	%edi, %eax
	ja	.LBB8_6
	.p2align	4, 0x90
.LBB8_5:                                # %b3892
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
	calll	func_b1187
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	addl	$2, %ebp
	cmpl	%edi, %ebp
	movl	8(%esp), %ebp                   # 4-byte Reload
	jbe	.LBB8_5
.LBB8_6:                                # %b1185.preheader
	leal	(%edi,%edi,4), %eax
	shll	$5, %eax
	leal	753664(%eax,%esi,2), %eax
	movl	4(%esp), %ecx                   # 4-byte Reload
	shll	$8, %ecx
	orl	$32, %ecx
	.p2align	4, 0x90
.LBB8_7:                                # %b1185
                                        # =>This Inner Loop Header: Depth=1
	movw	%cx, (%eax)
	incl	%esi
	addl	$2, %eax
	cmpl	%ebx, %esi
	jbe	.LBB8_7
.LBB8_11:                               # %b295
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
	.size	func_b1409, .Lfunc_end8-func_b1409
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3914
	.type	func_b3914,@function
func_b3914:                             # @func_b3914
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
.LBB9_1:                                # %b3914
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	movl	%ecx, %edi
	addl	%edx, %edi
	cmpl	%eax, %edi
	ja	.LBB9_3
# %bb.2:                                # %b3916
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	%esi, (%esp)
	calll	func_b1409
	xorl	%eax, %eax
	movl	$1, %ecx
	jmp	.LBB9_1
.LBB9_3:                                # %b295
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end9:
	.size	func_b3914, .Lfunc_end9-func_b3914
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
	calll	func_b1215
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
	calll	func_b1215
	orl	%edi, %eax
	movw	%ax, 753816
	movl	$75, %edi
	movl	$753814, %ebp                   # imm = 0xB8096
	.p2align	4, 0x90
.LBB10_1:                               # %b3950
                                        # =>This Inner Loop Header: Depth=1
	shrl	$4, %esi
	movzbl	1(%ebp), %ebx
	shll	$8, %ebx
	movl	%esi, %eax
	andl	$15, %eax
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	calll	func_b1215
	orl	%ebx, %eax
	movw	%ax, (%ebp)
	decl	%edi
	addl	$-2, %ebp
	cmpl	$69, %edi
	jg	.LBB10_1
# %bb.2:                                # %b1584
	movl	8(%esp), %ebx                   # 4-byte Reload
	testb	$3, %bl
	jne	.LBB10_11
# %bb.3:                                # %b1239
	movzbl	pos, %esi
	movl	%esi, (%esp)
	movl	$32, 4(%esp)
	calll	func_b820
	cmpb	$0, dir
	je	.LBB10_9
# %bb.4:                                # %b3947
	leal	1(%esi), %eax
	cmpl	$69, %eax
	jae	.LBB10_7
# %bb.5:                                # %b3945
	movl	%eax, (%esp)
	movl	$62, 4(%esp)
	jmp	.LBB10_6
.LBB10_9:                               # %b3942
	leal	-1(%esi), %eax
	cmpl	$45, %eax
	jle	.LBB10_10
# %bb.8:                                # %b3940
	movl	%eax, (%esp)
	movl	$60, 4(%esp)
.LBB10_6:                               # %b3945
	movl	%eax, %esi
	calll	func_b820
	movl	%esi, %eax
	movb	%al, pos
	testb	$15, %bl
	jne	.LBB10_16
	jmp	.LBB10_12
.LBB10_7:                               # %b1242
	movl	%esi, (%esp)
	movl	$124, 4(%esp)
	calll	func_b820
	movb	$0, dir
.LBB10_11:                              # %b857
	testb	$15, %bl
	jne	.LBB10_16
.LBB10_12:                              # %b855
	movzbl	current, %eax
	incl	%eax
	cmpl	$2, %eax
	jae	.LBB10_14
# %bb.13:                               # %b3935
	andl	$1, %eax
	movb	%al, current
	jmp	.LBB10_15
.LBB10_14:                              # %b2270
	movb	$0, current
.LBB10_15:                              # %b1580
	movzbl	spinpos, %eax
	movzbl	spinner(%eax), %ecx
	incb	%al
	andb	$3, %al
	movb	%al, spinpos
	movzbl	753823, %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movw	%ax, 753822
.LBB10_16:                              # %b982
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
.LBB10_10:                              # %b1245
	.cfi_def_cfa_offset 32
	movl	%esi, (%esp)
	movl	$124, 4(%esp)
	calll	func_b820
	movb	$1, dir
	testb	$15, %bl
	jne	.LBB10_16
	jmp	.LBB10_12
.Lfunc_end10:
	.size	timerInterrupt, .Lfunc_end10-timerInterrupt
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b820
	.type	func_b820,@function
func_b820:                              # @func_b820
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
.Lfunc_end11:
	.size	func_b820, .Lfunc_end11-func_b820
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
	je	.LBB12_1
# %bb.4:                                # %b2927
	movl	$str54+1, %esi
	.p2align	4, 0x90
.LBB12_5:                               # %b2919
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB12_11
# %bb.6:                                # %b2922
                                        #   in Loop: Header=BB12_5 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB12_12
	.p2align	4, 0x90
.LBB12_11:                              # %b2924
                                        #   in Loop: Header=BB12_5 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB12_12:                              # %b2915
                                        #   in Loop: Header=BB12_5 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.LBB12_1
# %bb.13:                               # %b2917
                                        #   in Loop: Header=BB12_5 Depth=1
	incl	%esi
	jmp	.LBB12_5
.LBB12_1:                               # %b1321
	movl	20(%esp), %esi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str55, %ebx
	testl	%ebx, %ebx
	je	.LBB12_2
# %bb.8:                                # %b2914
	movl	$str55+1, %edi
	.p2align	4, 0x90
.LBB12_9:                               # %b2906
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB12_14
# %bb.10:                               # %b2909
                                        #   in Loop: Header=BB12_9 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB12_15
	.p2align	4, 0x90
.LBB12_14:                              # %b2911
                                        #   in Loop: Header=BB12_9 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB12_15:                              # %b2902
                                        #   in Loop: Header=BB12_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB12_2
# %bb.16:                               # %b2904
                                        #   in Loop: Header=BB12_9 Depth=1
	incl	%edi
	jmp	.LBB12_9
.LBB12_2:                               # %b1317
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str56, %eax
	testl	%eax, %eax
	je	.LBB12_3
# %bb.7:                                # %b2901
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str56+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB12_3:                               # %b295
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end12:
	.size	unhandled, .Lfunc_end12-unhandled
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2898
	.type	func_b2898,@function
func_b2898:                             # @func_b2898
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
.LBB13_1:                               # %b2898
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB13_3
# %bb.2:                                # %b3776
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB13_4
	.p2align	4, 0x90
.LBB13_3:                               # %b3777
                                        #   in Loop: Header=BB13_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB13_4:                               # %b2889
                                        #   in Loop: Header=BB13_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB13_5
# %bb.6:                                # %b2891
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
	.size	func_b2898, .Lfunc_end13-func_b2898
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
	movb	$0, itoaBuf
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$1
	.cfi_adjust_cfa_offset 4
	pushl	$itoaBuf+1
	.cfi_adjust_cfa_offset 4
	calll	func_b2528
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	$1, ticks
	movl	$796679213, spinner             # imm = 0x2F7C5C2D
	movb	$0, spinpos
	movb	$55, pos
	movb	$1, dir
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
	calll	func_b1251
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
	calll	func_b3968
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str44, %edi
	testl	%edi, %edi
	je	.LBB14_7
# %bb.1:                                # %b3734
	movl	$str44+1, %esi
	.p2align	4, 0x90
.LBB14_2:                               # %b3726
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_4
# %bb.3:                                # %b3729
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_5
	.p2align	4, 0x90
.LBB14_4:                               # %b3731
                                        #   in Loop: Header=BB14_2 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_5:                               # %b3731
                                        #   in Loop: Header=BB14_2 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB14_7
# %bb.6:                                # %b3724
                                        #   in Loop: Header=BB14_2 Depth=1
	incl	%esi
	jmp	.LBB14_2
.LBB14_7:                               # %b1380
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
	calll	func_b1251
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
	calll	func_b3968
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str10, %eax
	testl	%eax, %eax
	je	.LBB14_9
# %bb.8:                                # %b3719
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str10+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3716
	jmp	.LBB14_57
.LBB14_9:                               # %b1948
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
	calll	func_b3045
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB14_11
# %bb.10:                               # %b3701
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str12+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3698
	jmp	.LBB14_57
.LBB14_11:                              # %b1949
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
	calll	func_b3183
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB14_13
# %bb.12:                               # %b3683
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3680
	jmp	.LBB14_57
.LBB14_13:                              # %b1950
	.cfi_def_cfa_offset 32
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB14_15
# %bb.14:                               # %b3602
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3596
	jmp	.LBB14_33
.LBB14_15:                              # %b3579
	.cfi_def_cfa_offset 32
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB14_17
# %bb.16:                               # %b3581
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_17:                              # %b3567
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB14_20
# %bb.18:                               # %b3578
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_27
# %bb.19:                               # %b3573
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_28
.LBB14_20:                              # %b3560
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB14_24
# %bb.21:                               # %b3819
	leal	1(%esi), %edi
.LBB14_22:                              # %b3556
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB14_24
# %bb.23:                               # %b3554
                                        #   in Loop: Header=BB14_22 Depth=1
	incl	%edi
	jmp	.LBB14_22
.LBB14_24:                              # %b3543
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB14_29
# %bb.25:                               # %b3545
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB14_31
# %bb.26:                               # %b3549
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_32
.LBB14_27:                              # %b3575
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_28:                              # %b3575
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3472
	jmp	.LBB14_33
.LBB14_29:                              # %b2118
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB14_34
# %bb.30:                               # %b3534
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	jmp	.LBB14_33
.LBB14_31:                              # %b3551
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_32:                              # %b3551
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3432
.LBB14_33:                              # %b2119
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_34:                              # %b2119
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB14_37
# %bb.35:                               # %b3599
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_42
# %bb.36:                               # %b3526
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_43
.LBB14_37:                              # %b3494
	.cfi_def_cfa_offset 32
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB14_39
# %bb.38:                               # %b3496
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_39:                              # %b3482
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB14_44
# %bb.40:                               # %b3493
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_51
# %bb.41:                               # %b3488
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_52
.LBB14_42:                              # %b3528
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_43:                              # %b3528
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3510
	jmp	.LBB14_57
.LBB14_44:                              # %b3459
	.cfi_def_cfa_offset 32
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB14_48
# %bb.45:                               # %b3818
	leal	1(%esi), %edi
.LBB14_46:                              # %b3455
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB14_48
# %bb.47:                               # %b3453
                                        #   in Loop: Header=BB14_46 Depth=1
	incl	%edi
	jmp	.LBB14_46
.LBB14_48:                              # %b3442
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB14_53
# %bb.49:                               # %b3444
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB14_55
# %bb.50:                               # %b3448
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_56
.LBB14_51:                              # %b3490
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_52:                              # %b3490
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3472
	jmp	.LBB14_57
.LBB14_53:                              # %b2124
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB14_58
# %bb.54:                               # %b3426
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	jmp	.LBB14_57
.LBB14_55:                              # %b3450
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_56:                              # %b3450
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3432
.LBB14_57:                              # %b3701
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_58:                              # %b3701
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
.LBB14_60:                              # %b3421
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %ebx
	je	.LBB14_62
# %bb.61:                               # %b3419
                                        #   in Loop: Header=BB14_60 Depth=1
	decl	%ebx
	addl	$12, %esi
	cmpl	%ebx, %eax
	jne	.LBB14_60
	jmp	.LBB14_63
.LBB14_62:                              # %b3356
	movl	$1, %eax
	subl	%ecx, %eax
	cmpl	%ebx, %eax
	jne	.LBB14_70
.LBB14_63:                              # %b3208
	movzbl	str51, %edi
	testl	%edi, %edi
	je	.LBB14_117
# %bb.64:                               # %b3210
	movl	$str51+1, %esi
	.p2align	4, 0x90
.LBB14_65:                              # %b3202
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_67
# %bb.66:                               # %b3205
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_68
	.p2align	4, 0x90
.LBB14_67:                              # %b3207
                                        #   in Loop: Header=BB14_65 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_68:                              # %b3207
                                        #   in Loop: Header=BB14_65 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB14_117
# %bb.69:                               # %b3200
                                        #   in Loop: Header=BB14_65 Depth=1
	incl	%esi
	jmp	.LBB14_65
.LBB14_70:                              # %b3358
	movl	%ecx, 8(%esp)                   # 4-byte Spill
	movzbl	str46, %edi
	testl	%edi, %edi
	je	.LBB14_77
# %bb.71:                               # %b3410
	movl	$str46+1, %ebp
	.p2align	4, 0x90
.LBB14_72:                              # %b3411
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_74
# %bb.73:                               # %b3412
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_75
	.p2align	4, 0x90
.LBB14_74:                              # %b3418
                                        #   in Loop: Header=BB14_72 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_75:                              # %b3418
                                        #   in Loop: Header=BB14_72 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebp), %edi
	testl	%edi, %edi
	je	.LBB14_77
# %bb.76:                               # %b3417
                                        #   in Loop: Header=BB14_72 Depth=1
	incl	%ebp
	jmp	.LBB14_72
.LBB14_77:                              # %b3364
	movl	8(%esp), %eax                   # 4-byte Reload
	leal	-2(%eax,%ebx), %edi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b2990
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str47, %ebp
	testl	%ebp, %ebp
	je	.LBB14_84
# %bb.78:                               # %b3401
	movl	$str47+1, %ebx
	.p2align	4, 0x90
.LBB14_79:                              # %b3402
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB14_81
# %bb.80:                               # %b3403
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_82
	.p2align	4, 0x90
.LBB14_81:                              # %b3409
                                        #   in Loop: Header=BB14_79 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_82:                              # %b3409
                                        #   in Loop: Header=BB14_79 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB14_84
# %bb.83:                               # %b3408
                                        #   in Loop: Header=BB14_79 Depth=1
	incl	%ebx
	jmp	.LBB14_79
.LBB14_84:                              # %b3400
	testl	%edi, %edi
	je	.LBB14_101
# %bb.85:                               # %b3817
	leal	12(%esi), %edi
	movzbl	str48, %ebp
	testl	%ebp, %ebp
	je	.LBB14_92
# %bb.86:                               # %b3988
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str48+1, %ebx
	.p2align	4, 0x90
.LBB14_87:                              # %b3988
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB14_89
# %bb.88:                               # %b3992
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_90
	.p2align	4, 0x90
.LBB14_89:                              # %b3993
                                        #   in Loop: Header=BB14_87 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_90:                              # %b3993
                                        #   in Loop: Header=BB14_87 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB14_92
# %bb.91:                               # %b3995
                                        #   in Loop: Header=BB14_87 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB14_87
.LBB14_92:                              # %b3987
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2990
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str49, %ebp
	testl	%ebp, %ebp
	je	.LBB14_99
# %bb.93:                               # %b3991
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movl	$str49+1, %ebx
	.p2align	4, 0x90
.LBB14_94:                              # %b3991
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB14_96
# %bb.95:                               # %b3996
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_97
	.p2align	4, 0x90
.LBB14_96:                              # %b3997
                                        #   in Loop: Header=BB14_94 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_97:                              # %b3997
                                        #   in Loop: Header=BB14_94 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB14_99
# %bb.98:                               # %b3998
                                        #   in Loop: Header=BB14_94 Depth=1
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	incl	%ebx
	jmp	.LBB14_94
.LBB14_99:                              # %b3990
	movl	8(%esi), %esi
	movzbl	str52, %eax
	testl	%eax, %eax
	je	.LBB14_108
# %bb.100:                              # %b3283
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str52+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3277
	jmp	.LBB14_110
.LBB14_101:                             # %b3221
	.cfi_def_cfa_offset 32
	movzbl	str50, %edi
	testl	%edi, %edi
	je	.LBB14_117
# %bb.102:                              # %b3223
	movl	$str50+1, %esi
	.p2align	4, 0x90
.LBB14_103:                             # %b3215
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB14_105
# %bb.104:                              # %b3218
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB14_106
	.p2align	4, 0x90
.LBB14_105:                             # %b3220
                                        #   in Loop: Header=BB14_103 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB14_106:                             # %b3220
                                        #   in Loop: Header=BB14_103 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB14_117
# %bb.107:                              # %b3213
                                        #   in Loop: Header=BB14_103 Depth=1
	incl	%esi
	jmp	.LBB14_103
.LBB14_108:                             # %b1756
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB14_121
# %bb.109:                              # %b3986
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
.LBB14_110:                             # %b3986
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_111:                             # %b3986
	movl	8(%edi), %esi
	movzbl	str52, %eax
	testl	%eax, %eax
	je	.LBB14_113
# %bb.112:                              # %b3280
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str52+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3259
	jmp	.LBB14_115
.LBB14_113:                             # %b1744
	.cfi_def_cfa_offset 32
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB14_122
# %bb.114:                              # %b3983
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3238
.LBB14_115:                             # %b1640
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB14_116:                             # %b1640
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
.LBB14_117:                             # %b3195
	movzbl	str45, %eax
	testl	%eax, %eax
	je	.LBB14_119
# %bb.118:                              # %b3197
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str45+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
.LBB14_121:                             # %b3985
	.cfi_def_cfa_offset 32
	movl	%esi, users+52
	jmp	.LBB14_111
.LBB14_122:                             # %b3982
	movl	%esi, users+124
	jmp	.LBB14_116
.Lfunc_end14:
	.size	kernel, .Lfunc_end14-kernel
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2528
	.type	func_b2528,@function
func_b2528:                             # @func_b2528
	.cfi_startproc
# %bb.0:
	movl	8(%esp), %eax
	movl	4(%esp), %ecx
	cmpl	$31, %eax
	ja	.LBB15_3
	.p2align	4, 0x90
.LBB15_2:                               # %b2529
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%ecx)
	incl	%eax
	incl	%ecx
	cmpl	$31, %eax
	jbe	.LBB15_2
.LBB15_3:                               # %b2192
	retl
.Lfunc_end15:
	.size	func_b2528, .Lfunc_end15-func_b2528
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b1251
	.type	func_b1251,@function
func_b1251:                             # @func_b1251
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
.LBB16_1:                               # %b1251
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
	.size	func_b1251, .Lfunc_end16-func_b1251
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3968
	.type	func_b3968,@function
func_b3968:                             # @func_b3968
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
.LBB17_1:                               # %b3968
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	movl	%eax, %esi
	addl	%ecx, %esi
	cmpl	%ebp, %esi
	ja	.LBB17_3
# %bb.2:                                # %b1253
                                        #   in Loop: Header=BB17_1 Depth=1
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	56(%esp)
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1251
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
	.size	func_b3968, .Lfunc_end17-func_b3968
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3045
	.type	func_b3045,@function
func_b3045:                             # @func_b3045
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
.LBB18_3:                               # %b3787
                                        #   in Loop: Header=BB18_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3027
.LBB18_4:                               # %b3045
                                        #   in Loop: Header=BB18_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$12, %edi
.LBB18_1:                               # %b3045
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB18_6
# %bb.2:                                # %b3047
                                        #   in Loop: Header=BB18_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str0, %edx
	testl	%edx, %edx
	je	.LBB18_3
# %bb.5:                                # %b3788
                                        #   in Loop: Header=BB18_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str0+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b3039
	jmp	.LBB18_4
.LBB18_6:                               # %b417
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end18:
	.size	func_b3045, .Lfunc_end18-func_b3045
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3716
	.type	func_b3716,@function
func_b3716:                             # @func_b3716
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
.LBB19_1:                               # %b3716
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_3
# %bb.2:                                # %b3803
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_4
	.p2align	4, 0x90
.LBB19_3:                               # %b3804
                                        #   in Loop: Header=BB19_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_4:                               # %b3804
                                        #   in Loop: Header=BB19_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB19_6
# %bb.5:                                # %b3709
                                        #   in Loop: Header=BB19_1 Depth=1
	incl	%esi
	jmp	.LBB19_1
.LBB19_6:                               # %b1362
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
	calll	func_b3045
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str12, %eax
	testl	%eax, %eax
	je	.LBB19_8
# %bb.7:                                # %b3706
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str12+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3698
	jmp	.LBB19_60
.LBB19_8:                               # %b1360
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
	calll	func_b3183
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB19_10
# %bb.9:                                # %b3688
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3680
	jmp	.LBB19_60
.LBB19_10:                              # %b1358
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB19_12
# %bb.11:                               # %b3668
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3596
	jmp	.LBB19_30
.LBB19_12:                              # %b3658
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB19_14
# %bb.13:                               # %b3660
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_14:                              # %b3646
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB19_17
# %bb.15:                               # %b3657
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_24
# %bb.16:                               # %b3652
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_25
.LBB19_17:                              # %b3639
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB19_21
# %bb.18:                               # %b3798
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB19_19:                              # %b3635
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB19_21
# %bb.20:                               # %b3633
                                        #   in Loop: Header=BB19_19 Depth=1
	incl	%edi
	jmp	.LBB19_19
.LBB19_21:                              # %b3622
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB19_26
# %bb.22:                               # %b3624
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB19_28
# %bb.23:                               # %b3628
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_29
.LBB19_24:                              # %b3654
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_25:                              # %b3654
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3472
	jmp	.LBB19_30
.LBB19_26:                              # %b2023
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB19_31
# %bb.27:                               # %b3613
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	jmp	.LBB19_30
.LBB19_28:                              # %b3630
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_29:                              # %b3630
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3432
.LBB19_30:                              # %b1958
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_31:                              # %b1958
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB19_38
# %bb.32:                               # %b3665
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB19_33:                              # %b3514
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_35
# %bb.34:                               # %b3517
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_36
	.p2align	4, 0x90
.LBB19_35:                              # %b3519
                                        #   in Loop: Header=BB19_33 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_36:                              # %b3510
                                        #   in Loop: Header=BB19_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB19_38
# %bb.37:                               # %b3512
                                        #   in Loop: Header=BB19_33 Depth=1
	incl	%ebx
	jmp	.LBB19_33
.LBB19_38:                              # %b3505
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB19_40
# %bb.39:                               # %b3507
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB19_40:                              # %b3499
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB19_47
# %bb.41:                               # %b3504
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB19_42:                              # %b3476
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB19_44
# %bb.43:                               # %b3479
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_45
	.p2align	4, 0x90
.LBB19_44:                              # %b3481
                                        #   in Loop: Header=BB19_42 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_45:                              # %b3472
                                        #   in Loop: Header=BB19_42 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB19_47
# %bb.46:                               # %b3474
                                        #   in Loop: Header=BB19_42 Depth=1
	incl	%ebx
	jmp	.LBB19_42
.LBB19_47:                              # %b3471
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB19_51
# %bb.48:                               # %b3795
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB19_49:                              # %b3467
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB19_51
# %bb.50:                               # %b3465
                                        #   in Loop: Header=BB19_49 Depth=1
	incl	%edi
	jmp	.LBB19_49
.LBB19_51:                              # %b3460
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB19_58
# %bb.52:                               # %b3462
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB19_53:                              # %b3436
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB19_55
# %bb.54:                               # %b3439
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB19_56
	.p2align	4, 0x90
.LBB19_55:                              # %b3441
                                        #   in Loop: Header=BB19_53 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB19_56:                              # %b3432
                                        #   in Loop: Header=BB19_53 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB19_58
# %bb.57:                               # %b3434
                                        #   in Loop: Header=BB19_53 Depth=1
	incl	%edi
	jmp	.LBB19_53
.LBB19_58:                              # %b1352
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB19_61
# %bb.59:                               # %b3431
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3716, .Lfunc_end19-func_b3716
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3183
	.type	func_b3183,@function
func_b3183:                             # @func_b3183
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
.LBB20_3:                               # %b3793
                                        #   in Loop: Header=BB20_1 Depth=1
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3165
.LBB20_4:                               # %b3183
                                        #   in Loop: Header=BB20_1 Depth=1
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movl	%edi, %ecx
	movl	$8, %edi
.LBB20_1:                               # %b3183
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB20_6
# %bb.2:                                # %b3185
                                        #   in Loop: Header=BB20_1 Depth=1
	addl	%ecx, %edi
	decl	%esi
	movzbl	str0, %edx
	testl	%edx, %edx
	je	.LBB20_3
# %bb.5:                                # %b3794
                                        #   in Loop: Header=BB20_1 Depth=1
	pushl	%ecx
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	pushl	$str0+1
	.cfi_adjust_cfa_offset 4
	pushl	%edx
	.cfi_adjust_cfa_offset 4
	calll	func_b3177
	jmp	.LBB20_4
.LBB20_6:                               # %b417
	.cfi_def_cfa_offset 16
	addl	$4, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end20:
	.size	func_b3183, .Lfunc_end20-func_b3183
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3698
	.type	func_b3698,@function
func_b3698:                             # @func_b3698
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
.LBB21_1:                               # %b3698
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_3
# %bb.2:                                # %b3801
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_4
	.p2align	4, 0x90
.LBB21_3:                               # %b3802
                                        #   in Loop: Header=BB21_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_4:                               # %b3802
                                        #   in Loop: Header=BB21_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB21_6
# %bb.5:                                # %b3691
                                        #   in Loop: Header=BB21_1 Depth=1
	incl	%esi
	jmp	.LBB21_1
.LBB21_6:                               # %b1360
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
	calll	func_b3183
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str14, %eax
	testl	%eax, %eax
	je	.LBB21_8
# %bb.7:                                # %b3688
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str14+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3680
	jmp	.LBB21_58
.LBB21_8:                               # %b1358
	.cfi_def_cfa_offset 16
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB21_10
# %bb.9:                                # %b3668
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3596
	jmp	.LBB21_28
.LBB21_10:                              # %b3658
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB21_12
# %bb.11:                               # %b3660
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_12:                              # %b3646
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB21_15
# %bb.13:                               # %b3657
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_22
# %bb.14:                               # %b3652
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_23
.LBB21_15:                              # %b3639
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB21_19
# %bb.16:                               # %b3798
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB21_17:                              # %b3635
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB21_19
# %bb.18:                               # %b3633
                                        #   in Loop: Header=BB21_17 Depth=1
	incl	%edi
	jmp	.LBB21_17
.LBB21_19:                              # %b3622
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB21_24
# %bb.20:                               # %b3624
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB21_26
# %bb.21:                               # %b3628
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_27
.LBB21_22:                              # %b3654
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_23:                              # %b3654
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3472
	jmp	.LBB21_28
.LBB21_24:                              # %b2023
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB21_29
# %bb.25:                               # %b3613
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	jmp	.LBB21_28
.LBB21_26:                              # %b3630
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_27:                              # %b3630
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3432
.LBB21_28:                              # %b1958
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_29:                              # %b1958
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB21_36
# %bb.30:                               # %b3665
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB21_31:                              # %b3514
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_33
# %bb.32:                               # %b3517
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_34
	.p2align	4, 0x90
.LBB21_33:                              # %b3519
                                        #   in Loop: Header=BB21_31 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_34:                              # %b3510
                                        #   in Loop: Header=BB21_31 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB21_36
# %bb.35:                               # %b3512
                                        #   in Loop: Header=BB21_31 Depth=1
	incl	%ebx
	jmp	.LBB21_31
.LBB21_36:                              # %b3505
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB21_38
# %bb.37:                               # %b3507
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB21_38:                              # %b3499
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB21_45
# %bb.39:                               # %b3504
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB21_40:                              # %b3476
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB21_42
# %bb.41:                               # %b3479
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_43
	.p2align	4, 0x90
.LBB21_42:                              # %b3481
                                        #   in Loop: Header=BB21_40 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_43:                              # %b3472
                                        #   in Loop: Header=BB21_40 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB21_45
# %bb.44:                               # %b3474
                                        #   in Loop: Header=BB21_40 Depth=1
	incl	%ebx
	jmp	.LBB21_40
.LBB21_45:                              # %b3471
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB21_49
# %bb.46:                               # %b3795
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB21_47:                              # %b3467
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB21_49
# %bb.48:                               # %b3465
                                        #   in Loop: Header=BB21_47 Depth=1
	incl	%edi
	jmp	.LBB21_47
.LBB21_49:                              # %b3460
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB21_56
# %bb.50:                               # %b3462
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB21_51:                              # %b3436
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB21_53
# %bb.52:                               # %b3439
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB21_54
	.p2align	4, 0x90
.LBB21_53:                              # %b3441
                                        #   in Loop: Header=BB21_51 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB21_54:                              # %b3432
                                        #   in Loop: Header=BB21_51 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB21_56
# %bb.55:                               # %b3434
                                        #   in Loop: Header=BB21_51 Depth=1
	incl	%edi
	jmp	.LBB21_51
.LBB21_56:                              # %b1352
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB21_59
# %bb.57:                               # %b3431
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3698, .Lfunc_end21-func_b3698
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3680
	.type	func_b3680,@function
func_b3680:                             # @func_b3680
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
.LBB22_1:                               # %b3680
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_3
# %bb.2:                                # %b3799
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_4
	.p2align	4, 0x90
.LBB22_3:                               # %b3800
                                        #   in Loop: Header=BB22_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_4:                               # %b3800
                                        #   in Loop: Header=BB22_1 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %edi
	testl	%edi, %edi
	je	.LBB22_6
# %bb.5:                                # %b3673
                                        #   in Loop: Header=BB22_1 Depth=1
	incl	%esi
	jmp	.LBB22_1
.LBB22_6:                               # %b1358
	movl	4104, %esi
	movzbl	str17, %eax
	testl	%eax, %eax
	je	.LBB22_8
# %bb.7:                                # %b3668
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str17+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3596
	jmp	.LBB22_26
.LBB22_8:                               # %b3658
	.cfi_def_cfa_offset 16
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB22_10
# %bb.9:                                # %b3660
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_10:                              # %b3646
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB22_13
# %bb.11:                               # %b3657
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_20
# %bb.12:                               # %b3652
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_21
.LBB22_13:                              # %b3639
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB22_17
# %bb.14:                               # %b3798
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB22_15:                              # %b3635
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB22_17
# %bb.16:                               # %b3633
                                        #   in Loop: Header=BB22_15 Depth=1
	incl	%edi
	jmp	.LBB22_15
.LBB22_17:                              # %b3622
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB22_22
# %bb.18:                               # %b3624
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB22_24
# %bb.19:                               # %b3628
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_25
.LBB22_20:                              # %b3654
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_21:                              # %b3654
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3472
	jmp	.LBB22_26
.LBB22_22:                              # %b2023
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB22_27
# %bb.23:                               # %b3613
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	jmp	.LBB22_26
.LBB22_24:                              # %b3630
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_25:                              # %b3630
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b3432
.LBB22_26:                              # %b1958
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_27:                              # %b1958
	movl	4108, %esi
	movzbl	str17, %edi
	testl	%edi, %edi
	je	.LBB22_34
# %bb.28:                               # %b3665
	movl	$str17+1, %ebx
	.p2align	4, 0x90
.LBB22_29:                              # %b3514
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_31
# %bb.30:                               # %b3517
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_32
	.p2align	4, 0x90
.LBB22_31:                              # %b3519
                                        #   in Loop: Header=BB22_29 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_32:                              # %b3510
                                        #   in Loop: Header=BB22_29 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB22_34
# %bb.33:                               # %b3512
                                        #   in Loop: Header=BB22_29 Depth=1
	incl	%ebx
	jmp	.LBB22_29
.LBB22_34:                              # %b3505
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB22_36
# %bb.35:                               # %b3507
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB22_36:                              # %b3499
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB22_43
# %bb.37:                               # %b3504
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB22_38:                              # %b3476
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB22_40
# %bb.39:                               # %b3479
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_41
	.p2align	4, 0x90
.LBB22_40:                              # %b3481
                                        #   in Loop: Header=BB22_38 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_41:                              # %b3472
                                        #   in Loop: Header=BB22_38 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB22_43
# %bb.42:                               # %b3474
                                        #   in Loop: Header=BB22_38 Depth=1
	incl	%ebx
	jmp	.LBB22_38
.LBB22_43:                              # %b3471
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB22_47
# %bb.44:                               # %b3795
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB22_45:                              # %b3467
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB22_47
# %bb.46:                               # %b3465
                                        #   in Loop: Header=BB22_45 Depth=1
	incl	%edi
	jmp	.LBB22_45
.LBB22_47:                              # %b3460
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB22_54
# %bb.48:                               # %b3462
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB22_49:                              # %b3436
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB22_51
# %bb.50:                               # %b3439
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB22_52
	.p2align	4, 0x90
.LBB22_51:                              # %b3441
                                        #   in Loop: Header=BB22_49 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB22_52:                              # %b3432
                                        #   in Loop: Header=BB22_49 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB22_54
# %bb.53:                               # %b3434
                                        #   in Loop: Header=BB22_49 Depth=1
	incl	%edi
	jmp	.LBB22_49
.LBB22_54:                              # %b1352
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB22_56
# %bb.55:                               # %b3431
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3680, .Lfunc_end22-func_b3680
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3596
	.type	func_b3596,@function
func_b3596:                             # @func_b3596
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
.LBB23_1:                               # %b3596
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_3
# %bb.2:                                # %b3796
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_4
	.p2align	4, 0x90
.LBB23_3:                               # %b3797
                                        #   in Loop: Header=BB23_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_4:                               # %b3587
                                        #   in Loop: Header=BB23_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_5
# %bb.28:                               # %b3589
                                        #   in Loop: Header=BB23_1 Depth=1
	incl	%edi
	jmp	.LBB23_1
.LBB23_5:                               # %b3584
	movzbl	str15, %eax
	testl	%eax, %eax
	je	.LBB23_7
# %bb.6:                                # %b3586
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str15+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB23_7:                               # %b3586
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB23_8
# %bb.12:                               # %b3504
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB23_13:                              # %b3476
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB23_18
# %bb.14:                               # %b3479
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_19
	.p2align	4, 0x90
.LBB23_18:                              # %b3481
                                        #   in Loop: Header=BB23_13 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_19:                              # %b3472
                                        #   in Loop: Header=BB23_13 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB23_8
# %bb.20:                               # %b3474
                                        #   in Loop: Header=BB23_13 Depth=1
	incl	%ebx
	jmp	.LBB23_13
.LBB23_8:                               # %b3471
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB23_9
# %bb.15:                               # %b3795
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB23_16:                              # %b3467
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB23_9
# %bb.17:                               # %b3465
                                        #   in Loop: Header=BB23_16 Depth=1
	incl	%edi
	jmp	.LBB23_16
.LBB23_9:                               # %b3460
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB23_10
# %bb.22:                               # %b3462
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB23_23:                              # %b3436
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB23_25
# %bb.24:                               # %b3439
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB23_26
	.p2align	4, 0x90
.LBB23_25:                              # %b3441
                                        #   in Loop: Header=BB23_23 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB23_26:                              # %b3432
                                        #   in Loop: Header=BB23_23 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB23_10
# %bb.27:                               # %b3434
                                        #   in Loop: Header=BB23_23 Depth=1
	incl	%edi
	jmp	.LBB23_23
.LBB23_10:                              # %b1352
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB23_11
# %bb.21:                               # %b3431
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3596, .Lfunc_end23-func_b3596
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b2990
	.type	func_b2990,@function
func_b2990:                             # @func_b2990
	.cfi_startproc
# %bb.0:                                # %b2990
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
# %bb.10:                               # %b2992
	movl	$str4+1, %edi
	.p2align	4, 0x90
.LBB24_11:                              # %b2974
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_16
# %bb.12:                               # %b2977
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_17
	.p2align	4, 0x90
.LBB24_16:                              # %b2979
                                        #   in Loop: Header=BB24_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_17:                              # %b2970
                                        #   in Loop: Header=BB24_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_1
# %bb.18:                               # %b2972
                                        #   in Loop: Header=BB24_11 Depth=1
	incl	%edi
	jmp	.LBB24_11
.LBB24_1:                               # %b1334
	movl	(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str5, %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.13:                               # %b2969
	movl	$str5+1, %edi
	.p2align	4, 0x90
.LBB24_14:                              # %b2961
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_22
# %bb.15:                               # %b2964
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_23
	.p2align	4, 0x90
.LBB24_22:                              # %b2966
                                        #   in Loop: Header=BB24_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_23:                              # %b2957
                                        #   in Loop: Header=BB24_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_2
# %bb.24:                               # %b2959
                                        #   in Loop: Header=BB24_14 Depth=1
	incl	%edi
	jmp	.LBB24_14
.LBB24_2:                               # %b1332
	movl	4(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str6, %ebx
	testl	%ebx, %ebx
	je	.LBB24_3
# %bb.19:                               # %b2956
	movl	$str6+1, %edi
	.p2align	4, 0x90
.LBB24_20:                              # %b2948
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB24_28
# %bb.21:                               # %b2951
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB24_29
	.p2align	4, 0x90
.LBB24_28:                              # %b2953
                                        #   in Loop: Header=BB24_20 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB24_29:                              # %b2944
                                        #   in Loop: Header=BB24_20 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB24_3
# %bb.30:                               # %b2946
                                        #   in Loop: Header=BB24_20 Depth=1
	incl	%edi
	jmp	.LBB24_20
.LBB24_3:                               # %b1330
	movl	8(%esi), %edi
	movl	%edi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf
	shrl	$4, %edi
	je	.LBB24_25
# %bb.4:                                # %b1984.preheader
	movl	$1, %eax
	.p2align	4, 0x90
.LBB24_5:                               # %b1984
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
	calll	func_b1215
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%esi)
	leal	1(%esi), %eax
	cmpl	$32, %eax
	jae	.LBB24_7
# %bb.6:                                # %b3927
                                        #   in Loop: Header=BB24_5 Depth=1
	shrl	$4, %edi
	jne	.LBB24_5
.LBB24_7:                               # %b1985
	pushl	$32
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3914
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB24_8:                               # %b1982
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%esi), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%esi
	jns	.LBB24_8
	jmp	.LBB24_9
.LBB24_25:                              # %b3921
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB24_27
# %bb.26:                               # %b3923
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	$32
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
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
	calll	func_b3914
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB24_27:                              # %b2042
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
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
	.size	func_b2990, .Lfunc_end24-func_b2990
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3510
	.type	func_b3510,@function
func_b3510:                             # @func_b3510
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
.LBB25_11:                              # %b3519
                                        #   in Loop: Header=BB25_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_12:                              # %b3510
                                        #   in Loop: Header=BB25_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_1:                               # %b3510
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_2
# %bb.10:                               # %b3512
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB25_11
# %bb.9:                                # %b3517
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_12
.LBB25_2:                               # %b3505
	.cfi_def_cfa_offset 16
	movzbl	str16, %eax
	testl	%eax, %eax
	je	.LBB25_4
# %bb.3:                                # %b3507
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str16+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB25_4:                               # %b3507
	movzbl	str18, %edi
	testl	%edi, %edi
	je	.LBB25_5
# %bb.13:                               # %b3504
	movl	$str18+1, %ebx
	.p2align	4, 0x90
.LBB25_14:                              # %b3476
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB25_19
# %bb.15:                               # %b3479
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_20
	.p2align	4, 0x90
.LBB25_19:                              # %b3481
                                        #   in Loop: Header=BB25_14 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_20:                              # %b3472
                                        #   in Loop: Header=BB25_14 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB25_5
# %bb.21:                               # %b3474
                                        #   in Loop: Header=BB25_14 Depth=1
	incl	%ebx
	jmp	.LBB25_14
.LBB25_5:                               # %b3471
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB25_6
# %bb.16:                               # %b3795
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB25_17:                              # %b3467
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB25_6
# %bb.18:                               # %b3465
                                        #   in Loop: Header=BB25_17 Depth=1
	incl	%edi
	jmp	.LBB25_17
.LBB25_6:                               # %b3460
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB25_7
# %bb.23:                               # %b3462
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB25_24:                              # %b3436
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB25_26
# %bb.25:                               # %b3439
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB25_27
	.p2align	4, 0x90
.LBB25_26:                              # %b3441
                                        #   in Loop: Header=BB25_24 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB25_27:                              # %b3432
                                        #   in Loop: Header=BB25_24 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB25_7
# %bb.28:                               # %b3434
                                        #   in Loop: Header=BB25_24 Depth=1
	incl	%edi
	jmp	.LBB25_24
.LBB25_7:                               # %b1352
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB25_8
# %bb.22:                               # %b3431
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3510, .Lfunc_end25-func_b3510
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3472
	.type	func_b3472,@function
func_b3472:                             # @func_b3472
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
.LBB26_11:                              # %b3481
                                        #   in Loop: Header=BB26_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_12:                              # %b3472
                                        #   in Loop: Header=BB26_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB26_1:                               # %b3472
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_2
# %bb.10:                               # %b3474
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_11
# %bb.9:                                # %b3479
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_12
.LBB26_2:                               # %b3471
	.cfi_def_cfa_offset 16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB26_3
# %bb.6:                                # %b3795
	leal	1(%esi), %edi
	.p2align	4, 0x90
.LBB26_7:                               # %b3467
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %eax
	testl	%eax, %eax
	je	.LBB26_3
# %bb.8:                                # %b3465
                                        #   in Loop: Header=BB26_7 Depth=1
	incl	%edi
	jmp	.LBB26_7
.LBB26_3:                               # %b3460
	movzbl	str19, %ebx
	testl	%ebx, %ebx
	je	.LBB26_4
# %bb.14:                               # %b3462
	movl	$str19+1, %edi
	.p2align	4, 0x90
.LBB26_15:                              # %b3436
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB26_17
# %bb.16:                               # %b3439
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB26_18
	.p2align	4, 0x90
.LBB26_17:                              # %b3441
                                        #   in Loop: Header=BB26_15 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB26_18:                              # %b3432
                                        #   in Loop: Header=BB26_15 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB26_4
# %bb.19:                               # %b3434
                                        #   in Loop: Header=BB26_15 Depth=1
	incl	%edi
	jmp	.LBB26_15
.LBB26_4:                               # %b1352
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB26_5
# %bb.13:                               # %b3431
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3472, .Lfunc_end26-func_b3472
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3432
	.type	func_b3432,@function
func_b3432:                             # @func_b3432
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
.LBB27_7:                               # %b3441
                                        #   in Loop: Header=BB27_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB27_8:                               # %b3432
                                        #   in Loop: Header=BB27_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB27_1:                               # %b3432
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB27_2
# %bb.6:                                # %b3434
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB27_7
# %bb.5:                                # %b3439
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB27_8
.LBB27_2:                               # %b1352
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str20, %eax
	testl	%eax, %eax
	je	.LBB27_4
# %bb.3:                                # %b3431
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str20+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3432, .Lfunc_end27-func_b3432
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3277
	.type	func_b3277,@function
func_b3277:                             # @func_b3277
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
.LBB28_1:                               # %b3277
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB28_3
# %bb.2:                                # %b3805
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB28_4
	.p2align	4, 0x90
.LBB28_3:                               # %b3806
                                        #   in Loop: Header=BB28_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB28_4:                               # %b3268
                                        #   in Loop: Header=BB28_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB28_5
# %bb.9:                                # %b3270
                                        #   in Loop: Header=BB28_1 Depth=1
	incl	%edi
	jmp	.LBB28_1
.LBB28_5:                               # %b1537
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB28_6
# %bb.8:                                # %b3262
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3228
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB28_7
.LBB28_6:                               # %b1541
	movl	%esi, users+52
.LBB28_7:                               # %b1541
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end28:
	.size	func_b3277, .Lfunc_end28-func_b3277
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3228
	.type	func_b3228,@function
func_b3228:                             # @func_b3228
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
.LBB29_1:                               # %b3228
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB29_3
# %bb.2:                                # %b3231
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB29_4
	.p2align	4, 0x90
.LBB29_3:                               # %b3233
                                        #   in Loop: Header=BB29_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB29_4:                               # %b3224
                                        #   in Loop: Header=BB29_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB29_5
# %bb.6:                                # %b3226
                                        #   in Loop: Header=BB29_1 Depth=1
	incl	%edi
	jmp	.LBB29_1
.LBB29_5:                               # %b1541
	movl	%esi, users+52
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end29:
	.size	func_b3228, .Lfunc_end29-func_b3228
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3259
	.type	func_b3259,@function
func_b3259:                             # @func_b3259
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
.LBB30_1:                               # %b3259
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB30_3
# %bb.2:                                # %b3807
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_3:                               # %b3808
                                        #   in Loop: Header=BB30_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB30_4:                               # %b3250
                                        #   in Loop: Header=BB30_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB30_5
# %bb.9:                                # %b3252
                                        #   in Loop: Header=BB30_1 Depth=1
	incl	%edi
	jmp	.LBB30_1
.LBB30_5:                               # %b1548
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str53, %eax
	testl	%eax, %eax
	je	.LBB30_6
# %bb.8:                                # %b3249
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	pushl	$str53+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b3238
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB30_7
.LBB30_6:                               # %b1552
	movl	%esi, users+124
.LBB30_7:                               # %b1552
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end30:
	.size	func_b3259, .Lfunc_end30-func_b3259
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3238
	.type	func_b3238,@function
func_b3238:                             # @func_b3238
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
.LBB31_1:                               # %b3238
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB31_3
# %bb.2:                                # %b3241
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB31_4
	.p2align	4, 0x90
.LBB31_3:                               # %b3243
                                        #   in Loop: Header=BB31_1 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB31_4:                               # %b3234
                                        #   in Loop: Header=BB31_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB31_5
# %bb.6:                                # %b3236
                                        #   in Loop: Header=BB31_1 Depth=1
	incl	%edi
	jmp	.LBB31_1
.LBB31_5:                               # %b1552
	movl	%esi, users+124
	popl	%esi
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	retl
.Lfunc_end31:
	.size	func_b3238, .Lfunc_end31-func_b3238
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3165
	.type	func_b3165,@function
func_b3165:                             # @func_b3165
	.cfi_startproc
# %bb.0:                                # %b3165
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
# %bb.7:                                # %b3167
	movl	$str13+1, %esi
	.p2align	4, 0x90
.LBB32_8:                               # %b3164
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB32_1
# %bb.9:                                # %b3162
                                        #   in Loop: Header=BB32_8 Depth=1
	incl	%esi
	jmp	.LBB32_8
.LBB32_1:                               # %b3157
	movl	32(%esp), %esi
	movzbl	str1, %ebx
	testl	%ebx, %ebx
	je	.LBB32_2
# %bb.10:                               # %b3159
	movl	$str1+1, %edi
	.p2align	4, 0x90
.LBB32_11:                              # %b3151
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB32_16
# %bb.12:                               # %b3154
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_17
	.p2align	4, 0x90
.LBB32_16:                              # %b3156
                                        #   in Loop: Header=BB32_11 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_17:                              # %b3147
                                        #   in Loop: Header=BB32_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB32_2
# %bb.18:                               # %b3149
                                        #   in Loop: Header=BB32_11 Depth=1
	incl	%edi
	jmp	.LBB32_11
.LBB32_2:                               # %b1877
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
	calll	func_b1215
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
	calll	func_b3977
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str2, %ebx
	testl	%ebx, %ebx
	je	.LBB32_3
# %bb.13:                               # %b3146
	movl	$str2+1, %edi
	.p2align	4, 0x90
.LBB32_14:                              # %b3138
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB32_23
# %bb.15:                               # %b3141
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_24
	.p2align	4, 0x90
.LBB32_23:                              # %b3143
                                        #   in Loop: Header=BB32_14 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_24:                              # %b3134
                                        #   in Loop: Header=BB32_14 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB32_3
# %bb.25:                               # %b3136
                                        #   in Loop: Header=BB32_14 Depth=1
	incl	%edi
	jmp	.LBB32_14
.LBB32_3:                               # %b3125
	movl	36(%esp), %edi
	movzbl	str7, %ebp
	testl	%ebp, %ebp
	je	.LBB32_4
# %bb.20:                               # %b3127
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB32_21
# %bb.19:                               # %b3131
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_22
.LBB32_4:                               # %b2095
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
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str8, %ebp
	testl	%ebp, %ebp
	je	.LBB32_5
# %bb.27:                               # %b3099
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB32_28
# %bb.26:                               # %b3103
	movw	$1021, %dx                      # imm = 0x3FD
	#APP
	inb	%dx, %al
	#NO_APP
	movzbl	%al, %eax
	andl	$96, %eax
	subl	$4, %esp
	.cfi_adjust_cfa_offset 4
	pushl	$13
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_29
.LBB32_21:                              # %b3133
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_22:                              # %b3133
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3109
	jmp	.LBB32_30
.LBB32_5:                               # %b2096
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
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB32_31
# %bb.6:                                # %b3075
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
	jmp	.LBB32_30
.LBB32_28:                              # %b3105
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_29:                              # %b3105
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$8, %esp
	.cfi_adjust_cfa_offset -8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b3081
.LBB32_30:                              # %b3105
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB32_31:                              # %b3105
	movzbl	str3, %edi
	testl	%edi, %edi
	je	.LBB32_38
# %bb.32:                               # %b3121
	movl	$str3+1, %ebx
	.p2align	4, 0x90
.LBB32_33:                              # %b3061
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %edi
	jne	.LBB32_35
# %bb.34:                               # %b3064
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB32_36
	.p2align	4, 0x90
.LBB32_35:                              # %b3066
                                        #   in Loop: Header=BB32_33 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB32_36:                              # %b3057
                                        #   in Loop: Header=BB32_33 Depth=1
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %edi
	testl	%edi, %edi
	je	.LBB32_38
# %bb.37:                               # %b3059
                                        #   in Loop: Header=BB32_33 Depth=1
	incl	%ebx
	jmp	.LBB32_33
.LBB32_38:                              # %b1336
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
	.size	func_b3165, .Lfunc_end32-func_b3165
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3177
	.type	func_b3177,@function
func_b3177:                             # @func_b3177
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
.LBB33_1:                               # %b3177
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB33_3
# %bb.2:                                # %b3789
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB33_4
	.p2align	4, 0x90
.LBB33_3:                               # %b3790
                                        #   in Loop: Header=BB33_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB33_4:                               # %b3168
                                        #   in Loop: Header=BB33_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB33_5
# %bb.6:                                # %b3170
                                        #   in Loop: Header=BB33_1 Depth=1
	incl	%ebx
	jmp	.LBB33_1
.LBB33_5:                               # %c272
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3165
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
	.size	func_b3177, .Lfunc_end33-func_b3177
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3977
	.type	func_b3977,@function
func_b3977:                             # @func_b3977
	.cfi_startproc
# %bb.0:                                # %b3977
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
# %bb.1:                                # %b3979
	movl	44(%esp), %eax
	movl	$-858993459, %ebp               # imm = 0xCCCCCCCD
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	je	.LBB34_2
	.p2align	4, 0x90
.LBB34_5:                               # %b1991
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
	calll	func_b1215
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movb	%al, itoaBuf(%ebx)
	leal	1(%ebx), %ecx
	cmpl	$32, %ecx
	jae	.LBB34_7
# %bb.6:                                # %b3971
                                        #   in Loop: Header=BB34_5 Depth=1
	movl	%esi, %eax
	mull	%ebp
	movl	%edx, %esi
	shrl	$3, %esi
	jne	.LBB34_5
.LBB34_7:                               # %b1985
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	$0
	.cfi_adjust_cfa_offset 4
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	pushl	$1
	.cfi_adjust_cfa_offset 4
	calll	func_b3914
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	.p2align	4, 0x90
.LBB34_8:                               # %b1982
                                        # =>This Inner Loop Header: Depth=1
	movzbl	itoaBuf(%ebx), %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	decl	%ebx
	jns	.LBB34_8
# %bb.9:                                # %b295
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	jmp	.LBB34_10
.LBB34_2:                               # %b3921
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB34_4
# %bb.3:                                # %b3923
	movl	$1, %esi
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
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
	calll	func_b3914
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB34_4:                               # %b2042
	movzbl	itoaBuf, %eax
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
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
	.size	func_b3977, .Lfunc_end34-func_b3977
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3109
	.type	func_b3109,@function
func_b3109:                             # @func_b3109
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
.LBB35_7:                               # %b3118
                                        #   in Loop: Header=BB35_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_8:                               # %b3109
                                        #   in Loop: Header=BB35_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB35_1:                               # %b3109
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_2
# %bb.6:                                # %b3111
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_7
# %bb.5:                                # %b3116
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_8
.LBB35_2:                               # %b1346
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
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str8, %ebx
	testl	%ebx, %ebx
	je	.LBB35_3
# %bb.10:                               # %b3108
	movl	$str8+1, %edi
	.p2align	4, 0x90
.LBB35_11:                              # %b3085
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB35_13
# %bb.12:                               # %b3088
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB35_14
	.p2align	4, 0x90
.LBB35_13:                              # %b3090
                                        #   in Loop: Header=BB35_11 Depth=1
	.cfi_def_cfa_offset 16
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB35_14:                              # %b3081
                                        #   in Loop: Header=BB35_11 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB35_3
# %bb.15:                               # %b3083
                                        #   in Loop: Header=BB35_11 Depth=1
	incl	%edi
	jmp	.LBB35_11
.LBB35_3:                               # %b1344
	movl	4(%esi), %esi
	movl	%esi, %eax
	andl	$15, %eax
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$9
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB35_4
# %bb.9:                                # %b3080
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3109, .Lfunc_end35-func_b3109
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3081
	.type	func_b3081,@function
func_b3081:                             # @func_b3081
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
.LBB36_7:                               # %b3090
                                        #   in Loop: Header=BB36_1 Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB36_8:                               # %b3081
                                        #   in Loop: Header=BB36_1 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
.LBB36_1:                               # %b3081
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB36_2
# %bb.6:                                # %b3083
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB36_7
# %bb.5:                                # %b3088
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB36_8
.LBB36_2:                               # %b1344
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
	calll	func_b1215
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
	calll	func_b3930
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str9, %eax
	testl	%eax, %eax
	je	.LBB36_4
# %bb.3:                                # %b3080
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	$str9+1
	.cfi_adjust_cfa_offset 4
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b2898
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
	.size	func_b3081, .Lfunc_end36-func_b3081
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3027
	.type	func_b3027,@function
func_b3027:                             # @func_b3027
	.cfi_startproc
# %bb.0:                                # %b3027
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
# %bb.5:                                # %b3029
	movl	$str11+1, %esi
	.p2align	4, 0x90
.LBB37_6:                               # %b3026
                                        # =>This Inner Loop Header: Depth=1
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%eax
	.cfi_adjust_cfa_offset 4
	calll	func_b1409
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%esi), %eax
	testl	%eax, %eax
	je	.LBB37_1
# %bb.7:                                # %b3024
                                        #   in Loop: Header=BB37_6 Depth=1
	incl	%esi
	jmp	.LBB37_6
.LBB37_1:                               # %b3019
	movl	32(%esp), %esi
	movzbl	str1, %ebx
	testl	%ebx, %ebx
	je	.LBB37_2
# %bb.8:                                # %b3021
	movl	$str1+1, %edi
	.p2align	4, 0x90
.LBB37_9:                               # %b3013
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_14
# %bb.10:                               # %b3016
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_15
	.p2align	4, 0x90
.LBB37_14:                              # %b3018
                                        #   in Loop: Header=BB37_9 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_15:                              # %b3009
                                        #   in Loop: Header=BB37_9 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_2
# %bb.16:                               # %b3011
                                        #   in Loop: Header=BB37_9 Depth=1
	incl	%edi
	jmp	.LBB37_9
.LBB37_2:                               # %b1813
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
	calll	func_b1215
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
	calll	func_b3977
	addl	$32, %esp
	.cfi_adjust_cfa_offset -32
	movzbl	str2, %ebp
	testl	%ebp, %ebp
	je	.LBB37_3
# %bb.11:                               # %b3008
	movl	$str2+1, %ebx
	.p2align	4, 0x90
.LBB37_12:                              # %b3000
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB37_20
# %bb.13:                               # %b3003
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_21
	.p2align	4, 0x90
.LBB37_20:                              # %b3005
                                        #   in Loop: Header=BB37_12 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_21:                              # %b2996
                                        #   in Loop: Header=BB37_12 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB37_3
# %bb.22:                               # %b2998
                                        #   in Loop: Header=BB37_12 Depth=1
	incl	%ebx
	jmp	.LBB37_12
.LBB37_3:                               # %b1814
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	calll	func_b2990
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	str3, %ebx
	testl	%ebx, %ebx
	je	.LBB37_4
# %bb.17:                               # %b2995
	movl	$str3+1, %edi
	.p2align	4, 0x90
.LBB37_18:                              # %b2984
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebx
	jne	.LBB37_23
# %bb.19:                               # %b2987
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB37_24
	.p2align	4, 0x90
.LBB37_23:                              # %b2989
                                        #   in Loop: Header=BB37_18 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB37_24:                              # %b2980
                                        #   in Loop: Header=BB37_18 Depth=1
	pushl	%ebx
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%edi), %ebx
	testl	%ebx, %ebx
	je	.LBB37_4
# %bb.25:                               # %b2982
                                        #   in Loop: Header=BB37_18 Depth=1
	incl	%edi
	jmp	.LBB37_18
.LBB37_4:                               # %b1336
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
	.size	func_b3027, .Lfunc_end37-func_b3027
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function func_b3039
	.type	func_b3039,@function
func_b3039:                             # @func_b3039
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
.LBB38_1:                               # %b3039
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
	calll	func_b1179
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	cmpl	$10, %ebp
	jne	.LBB38_3
# %bb.2:                                # %b3783
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
	calll	func_b1179
	addl	$4, %esp
	.cfi_adjust_cfa_offset -4
	jmp	.LBB38_4
	.p2align	4, 0x90
.LBB38_3:                               # %b3784
                                        #   in Loop: Header=BB38_1 Depth=1
	.cfi_def_cfa_offset 32
	subl	$12, %esp
	.cfi_adjust_cfa_offset 12
.LBB38_4:                               # %b3030
                                        #   in Loop: Header=BB38_1 Depth=1
	pushl	%ebp
	.cfi_adjust_cfa_offset 4
	calll	func_b1400
	addl	$16, %esp
	.cfi_adjust_cfa_offset -16
	movzbl	(%ebx), %ebp
	testl	%ebp, %ebp
	je	.LBB38_5
# %bb.6:                                # %b3032
                                        #   in Loop: Header=BB38_1 Depth=1
	incl	%ebx
	jmp	.LBB38_1
.LBB38_5:                               # %c196
	subl	$8, %esp
	.cfi_adjust_cfa_offset 8
	pushl	%edi
	.cfi_adjust_cfa_offset 4
	pushl	%esi
	.cfi_adjust_cfa_offset 4
	calll	func_b3027
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
	.size	func_b3039, .Lfunc_end38-func_b3039
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
	.type	raw.4,@object                   # @raw.4
	.local	raw.4
	.comm	raw.4,32,1
	.type	.Lstr.3,@object                 # @str.3
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
.Lstr.3:
	.asciz	"got keyboard interrupt, key: 0x"
	.size	.Lstr.3, 32

	.type	raw.6,@object                   # @raw.6
	.local	raw.6
	.comm	raw.6,4,1
	.type	raw.7,@object                   # @raw.7
	.local	raw.7
	.comm	raw.7,1,1
	.type	raw.9,@object                   # @raw.9
	.local	raw.9
	.comm	raw.9,1,1
	.type	raw.8,@object                   # @raw.8
	.local	raw.8
	.comm	raw.8,1,1
	.type	raw.5,@object                   # @raw.5
	.local	raw.5
	.comm	raw.5,4,4
	.type	.Lstr.12,@object                # @str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.12:
	.asciz	"\n"
	.size	.Lstr.12, 2

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	", frame=0x"
	.size	.Lstr.11, 11

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"Exception 0x"
	.size	.Lstr.10, 13

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
	.asciz	" Context switching kernel has booted!"
	.size	.Lstr.13, 38

.set current, raw.0
.set users, raw.1
.set console, raw.2
.set str57, .Lstr.3
	.size	str57, 1
.set itoaBuf, raw.4
.set ticks, raw.5
.set pos, raw.8
.set dir, raw.9
.set spinpos, raw.7
.set spinner, raw.6
.set str54, .Lstr.10
	.size	str54, 1
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
