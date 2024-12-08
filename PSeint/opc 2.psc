Algoritmo decimalBinario
	imprimir "Ingresa un numero: "
	leer num
	
	Si num = 0 Entonces
		resultado = 0
	SiNo
		
		nuevoNum<-num
		Mientras nuevoNum >= 1 Hacer
			cociente = num/2;
			residuo = num%2;
			//nuevoNum = cociente;
			imprimir cociente
			imprimir residuo
			nuevoNum<-cociente
		Fin Mientras
	Fin Si
	//imprimir cociente
	//imprimir residuo
FinAlgoritmo
