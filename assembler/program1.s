; this is just a simple loop that counts from 10 to 0

		sub 	k3,k3 		; k3 = 0
		ori		10			; load 10 into k1
		add		k3,k1		; k3 = 10
		sub		k1,k1		; k1 = 0
		ori		1			; load 1 into k1
		
loop	sub		k3,k1
		bnz		loop
		stop
