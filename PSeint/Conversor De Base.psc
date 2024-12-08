Algoritmo ConversorDeBase
	Escribir 'Ingresa un numero: '
	Leer numero
	
	Escribir 'Ingresa la base destino (entre 2 y 50): '
	Leer baseDestino
	
	Mientras baseDestino < 2 o baseDestino > 50 Hacer
		Escribir 'La base de destino debe estar entre 2 y 50.'
		Leer baseDestino
	Fin Mientras
	
	resultado <- ''
	
	Mientras numero > 0 Hacer
		residuo <- numero % baseDestino
		resultado <- ConvertirATexto(residuo) + resultado
		numero <- Trunc(numero / baseDestino)  // División entera
	Fin Mientras
	
	Escribir 'El numero en base ', baseDestino, ' es: ', resultado
FinAlgoritmo
