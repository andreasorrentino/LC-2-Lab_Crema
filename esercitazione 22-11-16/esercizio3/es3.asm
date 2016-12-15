	.orig	x3000
	ld	r1,var1
	ld	r0,var2
;complemento a due salvato in r1
	not	r1,r1
	add	r1,r1,#1
	add	r3,r0,r1
	brz	code1
	lea	r0,stringa2
	puts

	brnzp	finese	; jmp finese

code1	;codice
	lea	r0,stringa1
	puts
	brnzp finese;

finese

halt

var1 	.fill	4
var2	.fill	4

stringa1	.stringz	"valori uguali"
stringa2	.stringz	"valori diversi"
.end