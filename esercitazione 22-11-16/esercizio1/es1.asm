;prima esercitazione	
	.orig	x3000
	and	r0,r0,#0	;reset registro r0

;caricare un valore numerico -16>-<-15 in un registro ad esempio r1

	and	r1,r1,#0
	add	r1,r1,10	;r1=r1+10
;caricare il valore 18 in r2
	and 	r2,r2,#0
	add 	r2,r2,#10
	add	r2,r2,#8
;copia del valore r2 in r3
	add	r3,r2,#0
;sommare e copiare due registri
	add	r4,r2,r3
;input da tastiera
	in	;salva il carattere in r0
	out	;stampa a video il carattere contenuto in r0
;sommare 1 al valore in input
	in
	add	r0,r0,#1
	out		

	halt

num	.fill	25
	.end
			