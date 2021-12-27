; store value 20 to address 10
; transfer value from k1 to k2 using store/load combination
; syntax notes: anything after a ";" will be a disregarded, single line comment
; syntax notes: all instructions must begin on a tab 
; syntax notes: register arguments kA,kB no space between, A,B = {0,1,2,3}

	sub 	k1,k1		; k1 = 0
	sub 	k0,k0		; k0 = 0
	ori		10			; k1 = 10
	add 	k0,k1		; k0 = 10
	sub 	k1,k1		; k1 = 0
	ori		20			; k1 = 20
	store	k1,(k0)		; MEM[k0] = k1
	load 	k2,(k0)		; k2 = MEM[k0]
	stop