	.orig	x3000
	in
	add	r1,r0,#0
	in
	not	r1,r1
	add	r1,r1,#1	;complemento a due poi la sottrazione e controllo se è zero
	add	r0,r0,r1
	brz	fineok
	lea	r0,ng
	puts
	brnzp fineno

fineok	
	lea	r0,ug
	puts

fineno halt

ug	.stringz	"uguali"
ng	.stringz	"non uguali"
.end
