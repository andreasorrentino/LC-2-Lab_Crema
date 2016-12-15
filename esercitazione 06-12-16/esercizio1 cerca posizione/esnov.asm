	.orig	x3000
	lea	r0,array
	ld	r1,var
	jsr	cerca_pos
halt

cerca_pos
	st	r2,svr2
	st	r3,svr3
	st	r4,svr4
	add	r4,r1,#0
	not	r4,r4
	add	r4,r4,#1
	and	r3,r3,#0	;contatore
ciclo	ldr	r2,r0,#0	;carico il valore pos
	brz	nontrovato
	add	r3,r3,#1
	add	r2,r4,r2	;R2=R4-R2
	brz	trovato
	add	r0,r0,#1
	brnzp	ciclo

trovato	add	r0,r3,#0
	ld	r2,svr2
	ld	r3,svr3
	ld	r4,svr4
	ret
nontrovato	and	r0,r0,#0
		ld	r2,svr2
		ld	r4,svr4
		ld	r3,svr3
	ret

svr1	.blkw 1
svr3	.blkw 1
svr2	.blkw 1
svr4	.blkw 1 
var	.fill 44
array	.blkw 1 15
	.blkw 1 32
	.blkw 1 -3
	.blkw 1 44
	.blkw 0
.end