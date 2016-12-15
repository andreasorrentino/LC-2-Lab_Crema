;sottoprogramma
	.orig	x3000

;main code
	ld	r1,var1
	ld	r2,var2
	jsr	differenza

halt
;sottoprogramma
; r0 <= r1-r2
differenza	;non si può usare r7!!!!
	
	not 	r2,r2
	add 	r2,r2,#1
	add	r0,r1,r2

	ret

;variabili

var1	.fill	10
var2	.fill	4

.end