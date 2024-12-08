Algoritmo Conversor_de_Base
	Escribir 'Ingresa tu numero: '
	Leer numeroEntrada
	
	Escribir 'Ingresa la base destino: '
	Leer baseDestino
	
	Mientras baseDestino < 1 o baseDestino  > 50 Hacer
		Escribir 'La base de destino '
		Leer baseDestino
	Fin Mientras
	
	resultado <- ''
	Mientras numeroEntrada > 0 Hacer
		residuo <- numeroEntrada %baseDestino
		resultado <- ConvertirATexto(residuo) + resultado
		numeroEntrada <- Trunc(numeroEntrada / baseDestino)
	Fin Mientras
	
	Escribir 'El numero en base ' , baseDestino, 'es: ', resultado
FinAlgoritmo

	
	
