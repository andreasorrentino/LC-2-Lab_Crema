	.orig	x3000
	lea	r0,array
	and	r5,r5,#0
	add	r5,r5,#5
	and	r3,r3,#0

somma	ldr	r1,r0,#0
	add	r3,r3,r1
	add	r0,r0,#1
	add	r5,r5,#-1
	brz	fine
	brnzp somma
fine	st	r3,tot
	

 halt

tot	.fill	0
array	.blkw	1 3
	.blkw	1 4
	.blkw	1 0
	.blkw	1 1
	.blkw	1 2
	
.end