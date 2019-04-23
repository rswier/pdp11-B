/ B library -- stty

.globl    .stty
.globl    n7

.text
.stty:	.+2
	.+2
	mov	r4,r5
	cmp	(r5)+,(r5)+
	mov	(r5)+,r0
        asl	(r5)
	mov	(r5)+,0f
	clr	(r5)
	sys	stty; 0:..;
	sbc	(r5)+
	jmp	n7
