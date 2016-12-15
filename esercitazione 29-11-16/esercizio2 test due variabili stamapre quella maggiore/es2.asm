	.orig	x3000
	in 
	add	r1,r0,#0
	in
	st	r0,var		;salva r0
	not	r0,r0
	add	r0,r0,#1	;complemento a due
	add	r2,r1,r0
	brp	pos
	brn	neg
	brnzp	fine

pos	add	r0,r1,#0
	out
	brnzp 	fine
neg	ld	r0,var
	out
	brnzp	fine


fine halt

var	.blkw	1


.end