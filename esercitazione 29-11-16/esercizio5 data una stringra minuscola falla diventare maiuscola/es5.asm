	.orig	x3000
	lea	r0,frase
	jsr	cambio
	lea	r0,frase
	puts	
halt	

cambio	ldr	r1,r0,#0
	brz	fineok
	ld	r2,max
	ld	r3,min
	ld	r5,val
	add	r4,r1,#0
	add	r4,r4,r2
	brzp	controllo2	;andiamo a fare il secondo controllo
	brn	avanti
avanti	add	r0,r0,#1
	brnzp	cambio
controllo2	add	r4,r1,#0
	add	r4,r4,r3
	brp	avanti
	brnz	cambio1
cambio1	add	r1,r1,r5
	str	r1,r0,#0
	add	r0,r0,#1
	brnzp	cambio
	
fineok	ret
	
	
	

frase	.stringz "questo e' un testo scritto grande"
val	.fill	-32
max	.fill	-97
min	.fill	-122
.end