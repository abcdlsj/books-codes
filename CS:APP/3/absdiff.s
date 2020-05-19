	.file	"absdiff.c"
	.text
	.globl	absdiff
	.type	absdiff, @function
absdiff:
.LFB0:
	.cfi_startproc
	cmpl	%esi, %edi
	jle	.L2
	subl	%esi, %edi
	movslq	%edi, %rax
	ret
.L2:
	subl	%edi, %esi
	movslq	%esi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	absdiff, .-absdiff
	.ident	"GCC: (GNU) 9.2.0"
	.section	.note.GNU-stack,"",@progbits
