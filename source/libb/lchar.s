/ B library -- lchar

.globl    .lchar
.globl    n7

.text
.lchar:	.+2
	.+2
	mov	r4,r5
	cmp	(r5)+,(r5)+
	mov	(r5)+,r0
	asl	r0
	add	(r5)+,r0
	mov	(r5)+,r1
	movb	r1,(r0)
	jmp	n7
