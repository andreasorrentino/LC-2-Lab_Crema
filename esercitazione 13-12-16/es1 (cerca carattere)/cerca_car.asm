	.orig	x3000
	lea	r0,frase
	ld	r1,var1
	ld	r2,var2
	jsr	TROVA_COPPIA

halt
;sottoprogramma
TROVA_COPPIA
	st	r1,svr1
	st 	r2,svr2
	st	r3,svr3
	st	r4,svr4
	st	r5,svr5
	not	r1,r1	
	add	r1,r1,#1	;complemento a due prima lettera
	not	r2,r2
	add	r2,r2,#1	;complemento a due seconda lettera
	and	r3,r3,#0	;inizializzo a 0 il contatore r3
ciclo	ldr	r4,r0,#0
	brz	fine		;controllo se è finita la stringa
	add	r5,r4,r1
	brz	tr_pl
	add	r0,r0,#1	;vado avanti nella stringa
	add	r3,r3,#1
	brnzp	ciclo

tr_pl	add	r3,r3,#1
	add	r0,r0,#1
	ldr	r4,r0,#0
	brz	fine
	add	r5,r4,r2
	brz	trovato
	brnzp	ciclo

trovato
	add	r0,r3,#0
	ld	r1,svr1
	ld	r2,svr2
	ld	r3,svr3
	ld	r4,svr4
	ld	r5,svr5
	ret

fine	and	r0,r0,#0
	ld	r1,svr1
	ld	r2,svr2
	ld	r3,svr3
	ld	r4,svr4
	ld	r5,svr5
	ret

;variabili
svr1	.blkw 1
svr2	.blkw 1
svr3	.blkw 1
svr4	.blkw 1
svr5	.blkw 1
frase	.stringz "ciao camccmfdssfma"
var1	.fill 109
var2	.fill 97
.end