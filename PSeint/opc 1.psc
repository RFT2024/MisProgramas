Algoritmo decimalABinario
	Escribir 'Se realizara la conversion de Decimal a Binario'
	Escribir 'Ingrese el valor del Decimal a ser convertido'
	Leer n
	Escribir n,' = ' Sin Saltar
	
	Si n=0 Entonces
		Escribir 0 Sin Saltar
	FinSi
	bit <- 1
	Mientras bit <= n Hacer
		bit <- bit2
	FinMientras
	bit <- bit/2
	Mientras bit>=1 Hacer
		Si n>=bit Entonces
			Escribir 1 Sin Saltar
			n <- n-bit
		SiNo
			Escribir 0 Sin Saltar
		FinSi
		bit <- bit/2
	FinMientras
	Escribir 'b'
	Escribir 'La transformacion a binario es de: ',restado5	
Fin Algoritmo
	
