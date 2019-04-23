/ B library -- setuid

.globl    .setuid
.globl    n7

.text
.setuid:
	.+2
	.+2
	mov	r4,r5
	cmp	(r5)+,(r5)+
	mov	(r5)+,r0
	clr	(r5)
	sys	setuid
	sbc	(r5)+
	jmp	n7
