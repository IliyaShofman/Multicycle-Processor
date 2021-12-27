; performs vector store, load, add
; Calculates elementwise (1,4,9,16) + (3,5,7,9)
; with (1,4,9,16) preloaded at memory address 128
; saves result to memory address 100

; syntax notes: anything after a ";" will be a disregarded, single line comment
; syntax notes: all instructions must begin on a tab 
; syntax notes: register arguments kA,kB no space between, A,B = {0,1,2,3}

	sub k0,k0
	sub k1,k1
	ori 16	
	shiftl k1,2
	add k0,k1		;k0 = 64
	sub k2,k2
	sub k1,k1
	ori 2
	add k2,k1		; k2 = 2
	sub k3,k3
	sub k1,k1
	ori 1
	add k3,k1		; k3 = 1
	sub k1,k1
	ori 3			; k1 = 3
	store k1,(k0)	; MEM[64] = 3
	add k0,k3		; k0 = 65
	add k1,k2		; k1 = 5
	store k1,(k0)	; MEM[65] = 5
	add k0,k3		; k0 = 66
	add k1,k2		; k1 = 7
	store k1,(k0)	; MEM[66] = 7
	add k0,k3		; k0 = 67
	add k1,k2		; k1 = 9
	store k1,(k0)	; MEM[67] = 9
	
	; now have (3,5,7,9) stored 
	; in memory location 96 to 99
	
	sub k1,k1
	ori 16	
	shiftl k1,3		; k1 = 128, where (1,4,9,16) is stored
	stop			; REPLACE WITH: 0x1A: vload v0, (k1)
	

	sub k1,k1		
	ori 16
	shiftl k1,2		; k2 = 64, where (3,5,7,9) is stored
	stop 			; REPLACE WITH: 0x5A: vload v1, (k1)
	
	stop			; REPLACE WITH: 0x1E: vadd v0, v1
	
	sub k0,k0
	sub k1,k1
	ori 16
	shiftl k1,3
	add k0,k1		; k0 = 128
	sub k1,k1
	ori 28
	sub k0,k1		; k0 = 128-28 = 100
	
	stop			; REPLACE WITH: 0x0C: vstore v0, (k0)
	
	stop 			; actually stop
	
	; expected return in memory: 
	; 96: 	3	5	7	9
	; 100: 	1	4	9	16
	; 104: 	4	9	16	25
	
	