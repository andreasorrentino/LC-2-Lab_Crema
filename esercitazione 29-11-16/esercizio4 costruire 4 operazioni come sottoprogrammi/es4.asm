	;r3 somma r4 moltiplicazione r5divisione r6 sottrazione
	.orig	x3000	
	ld	r1,var1
	ld	r2,var2
	jsr	somma
	jsr	moltiplicazione
	jsr	sottrazione
	jsr	divisione
	halt
somma	
	st	r3,vr3
	add	r3,r1,r2
	st	r3,sm
	ld	r3,vr3
	ret

moltiplicazione
	st	r3,vr3
	st	r4,vr4
	add	r3,r1,#0
	add	r4,r1,#0
molt	add	r4,r4,r2
	add	r3,r3,#-1
	brz	fine
	brnzp	molt
fine	st	r4,mol
	ld	r3,vr3
	ld	r4,vr4
	ret

divisione
	st	r3,vr3
	st	r4,vr4
	st	r5,vr5
	and	r5,r5,#0
	add	r3,r2,#0
	add	r4,r1,#0
	not	r3,r3
	add	r3,r3,#1
divi	add	r5,r5,#1
	add	r4,r4,r3
	brnz	fine1
	brnzp	divi
	
fine1	not	r4,r4
	add	r4,r4,#1
	st	r5,dv1
	st	r4,dv2
	ld	r3,vr3
	ld	r4,vr4
	ld	r5,vr5
	ret

sottrazione
	st	r3,vr3
	st	r4,vr4
	not	r4,r4
	add	r4,r4,#1
	add	r3,r1,r4
	st	r3,sot
	ld	r3,vr3
	ret


vr3	.blkw	1
vr4	.blkw	1
vr5	.blkw	1
vr6	.blkw	1
sm	.blkw	1
sot	.blkw	1
dv1	.blkw	1
dv2	.blkw	1
mol	.blkw	1
var1	.fill 10
var2	.fill 15

.end