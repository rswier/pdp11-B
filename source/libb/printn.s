/ B library -- printn

.globl    .printn
.globl    n11

.text
.printn:
	.+2
	.+2
	mov	4(r4),r0
	sys	close
	jmp	n11
