	.orig	x3000
	ld	r0,val1		;ne esistono 3 tipi ld,ldi,ldr
	lea	r1,val1	;salvo l'indirizzo di memoria di address_var1 in r1


;ci sono 3 store: 1) st, 2)sti, 3)str
	st	r1,address_var1


;caricare in r2 il valore di r0 usando l'indirizzamento indiretto
	ldi	r3,address_var1

;output di una stringa
	lea	r0,stringa
	puts
	
	lea	r0,stringa
	add	r0,r0,#1
	puts

;indirizzamento base + index
	ldr	r2,r0,#0
;stampiamo il valore di r2
	add 	r0,r2,#0
	out
	
;sostituire il carattere ! con ?
	lea 	r0,stringa
	ld	r1,var
	str	r1,r0,#4
	puts
halt

	
val1	.fill 2
address_var1	.fill 0
stringa	.stringz	"Ciao!"
var	.fill	63


	.end