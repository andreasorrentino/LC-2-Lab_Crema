	.orig	x3000
	lea	r0,frase
	lea	r1,frase1	
	jsr	ANNULLA_SPAZI
halt

;sottoprogramma
ANNULLA_SPAZI
	st	r0,svr0
	st	r3,svr3
	st	r4,svr4
	st	r5,svr5
	ld	r3,ct
	not	r3,r3
	add	r3,r3,#1	;complemento a due del valore spazio
	and	r2,r2,#0	;azzeramento contatore
	ldr	r5,r0,#0	;carico il primo carattere
	brz	fine
	add	r4,r5,r3	;R4= carattere meno lo spazio
	brnp	trovato
	brnzp	c_spaz

trovato	str	r5,r1,#0
	add	r1,r1,#1
	add	r0,r0,#1
	ldr	r5,r0,#0
	brz	fine
	add	r4,r5,r3
	brnp	trovato
	brnzp	spazio1

c_spaz	add	r0,r0,#1
	add	r2,r2,#1	;incremento il contatore
	ldr	r5,r0,#0
	brz	fine
	add	r4,r5,r3
	brnp	trovato
	brnzp	c_spaz

spazio1	str	r5,r1,#0
	add	r1,r1,#1
	add	r0,r0,#1
	ldr	r5,r0,#0
	brz	u_spaz
	add	r4,r5,r3
	brnp	trovato
	brnzp	c_spaz

u_spaz	add	r2,r2,#1
	add	r1,r1,#-1
	brnzp	fine

	


fine	and	r5,r5,#0
	str	r5,r1,#0
	st	r0,svr0
	st	r1,svr0
	lea	r0,frase1
	puts
	ld	r0,svr0
	ld	r1,svr1
	ld	r3,svr3
	ld	r4,svr4
	ld	r5,svr5
	ret
	



;variabili
svr0	.blkw 1
svr1	.blkw 1
svr3	.blkw 1
svr4	.blkw 1
svr5	.blkw 1
ct	.fill 32
frase1	.blkw 150
frase	.stringz " un esempio di parole con spazi dsadasdasdasdas     dasdasdsadas  sdasdsdsa          asdasdasdasdsa     "

.end