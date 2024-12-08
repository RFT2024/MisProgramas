Funcion ConvertirADecimal <- numeroBinario ( Devuelve Entero )
	
	
Fin Funcion


Algoritmo Conversor_de_Base
	Escribir 'Ingresa tu numero: '
	Leer numeroEntrada
	
	
	Escribir 'Ingresa la base del numero de entrada (2,8,10 o 16): '
	Leer baseEntrada
	
	Escribir 'Ingresa la base destino: '
	Leer baseDestino
	
	Mientras baseDestino < 1 o baseDestino  > 50 Hacer
		Escribir 'La base de destino '
		Escribir 'Ingresa la base destino: '
		Leer baseDestino
	Fin Mientras
	
	//convertir el numero de entrada a base decimal
	Si baseEntrada = 2 Entonces
		numeroDecimal <- ConvertirANumero(numeroEntrada)
	FinSi
	
	Si baseEntrada = 8 Entonces
		numeroDecimal <- ConvertirANumero(numeroEntrada)
	FinSi
	
	Si baseEntrada = 10 Entonces
		numeroDecimal <- ConvertirANumero(numeroEntrada)
	FinSi
	
	Si baseEntrada = 16 Entonces
		numeroDecimal <- ConvertirANumero(numeroEntrada)
	FinSi
	
	//convertir el numero decimal a base destimo
	resultado <- ''
	Mientras numeroDecimal > 0 Hacer
		residuo <- numeroDecimal % baseDestino
		
		resultado <- ConvertirATexto(residuo) + resultado
		numeroDecimal <- Trunc(numeroDecimal / baseDestino)
	Fin Mientras
	
	Escribir 'El numero en base ', baseDestino, 'es: ', resultado
	
FinAlgoritmo






