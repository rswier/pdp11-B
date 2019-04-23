/ B library -- putchar

.globl	.putchar
.globl	n7
.globl	n11
.globl	.flush
.globl	.fout

.text
.putchar:
	.+2
	.+2
	mov	r4,r5
	cmp	(r5)+,(r5)+
	mov	(r5)+,ch
	mov	.fout,r0
	tstb	ch+1
	beq	1f
	swab	ch
	sys	write; ch; 02
	0403
1:
	sys	write; ch; 01
2:
	jmp	n7

.flush:
	.+2
	n11

ch:	.=.+2
.fout:	1