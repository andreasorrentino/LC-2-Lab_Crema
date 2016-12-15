	.orig	x3000
	lea	r0,frase
	jsr	MAIUSC_INI
	lea	r0,frase
	puts

halt
;sottoprogramma
MAIUSC_INI
	st	r1,svr1
	st	r2,svr2
	st	r3,svr3
	st	r4,svr4
	ld	r2,var1
	not	r2,r2
	add	r2,r2,#1	;complemento a due
ciclo	ldr	r1,r0,#0	;carico in r1 il valore
	brz	fine		;salto alla fine
	add	r3,r1,r2
	brnp	tr_lett
	add	r0,r0,#1
	brnzp	ciclo

;trovato lettera verifichiamo che sia minuscola
tr_lett
	ld	r3,var2
	add	r3,r1,r3
	brn	scorri
	ld	r3,var3
	add	r3,r3,r1
	brp	scorri
	add	r1,r1,r2
	str	r1,r0,#0
	brnzp	scorri
tr_lett2
	add	r0,r0,#1
	ldr	r1,r0,#0
	ld	r3,var2
	add	r3,r1,r3
	brn	scorri
	ld	r3,var3
	add	r3,r3,r1
	brp	scorri
;trovato carattere minuscolo
	add	r1,r1,r2
	str	r1,r0,#0
	brnzp	scorri

;va avanti finchè non trova spazio o il terminatore
scorri
	add	r0,r0,#1
	ldr	r1,r0,#0
	brz	fine
	add	r3,r1,r2	;controllo se è uno spazio
	brz	tr_lett2
	brnzp	scorri

fine
	ld	r1,svr1
	ld	r1,svr2
	ld	r3,svr3
	ld	r4,svr4
	ret
	
	

;variabili
svr1	.blkw 1
svr2	.blkw 1
svr3	.blkw 1
svr4	.blkw 1
frase	.stringz	"   a ciao mamma Ladasdasdas cadasdasd 48743"
var1	.fill 32
var2	.fill -97
var3	.fill -122
.end