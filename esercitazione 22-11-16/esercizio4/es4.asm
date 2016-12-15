	.orig	x3000
	lea	r1,array
	ld 	r2,val1
	and	r3,r3,#0

ciclo	add	r2,r2,#0
	brz	fineciclo
	ldr	r0,r1,#0
	add	r3,r3,r0
	add	r2,r2,#-1
	add	r1,r1,#1
	brnzp	ciclo


fineciclo

halt
;variabili
array	.blkw 1 65
	.blkw 1 66
	.blkw 1 67
	.blkw 1 68
	.blkw 1 0
val1	.fill 5

.end