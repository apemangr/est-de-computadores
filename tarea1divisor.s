.global _start
_start:			  mov r0, #4 		// Ingresar dividendo, al finalizar representará el resto
				      mov r1, #-3 	// Ingresar divisor
				      mov r2, #0		// Cuociente
				      cmp r0, r1  	// Compara dividendo y divisor
				      blt lessthan 	// Compara si es menor el divisor
				      bgt	greaterthan // Compara si es mayor el diviso
greaterthan: 	cmp r0, r3 		// Compara el divisor con 0
				      ble end			// Termina el programa si el divisor es 0 o menor
				      cmp r1, #0		// Compara el divisor con 0
    			    blt gtsumar		// Si el divisor es menor que 0 salta a gtsumar:
	    		    sub r0, r1 		// Resta el divisor al dividendo
		    	    add r2, #1		// Suma uno al cuociente
			        b greaterthan	// Vuelve al loop
gtsumar:	    cmp r0,  r1		// Compara el divisor con el 0
				      ble end			// Termina el programa si el divisor es menor al dividendo
				      add r0, r1 		// Suma el divisor al dividendo
				      sub r2, #1		// Resta uno al cuociente
				      b gtsumar		// Vuelve al loop
lessthan:	    cmp r0, r1 		// Compara el divisor con 0
				      bge end			// Termina el programa si el divisor es 0 o mayor
				      cmp r1, #0
				      blt ltrestar
				      add r0, r1 		// Suma el divisor al dividendo
				      sub r2, #1		// Resta uno al cuociente
				      b lessthan		// Vuelve al loop
ltrestar:	    cmp r0, r1 		// Compara el divisor con 0
				      bge end			// Termina el programa si el divisor es 0 o mayor
				      sub r0, r1 		// Resta el divisor al dividendo
				      add r2, #1		// Suma uno al cuociente
				      b ltrestar  	// Vuelve al loop
end:			    b end			// Loop final
