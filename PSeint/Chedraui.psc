Algoritmo Chedraui
	// Definir arreglos
	Dimensionar nombre(5)
	Dimensionar costo(5)
	Definir cantidadArticulos, i, numeroProducto, cantidadProductos Como Entero
	Definir totalSinIva, totalConIva, iva Como Real
	Definir opc Como Cadena
	// Capturar nombre y costo de los art�culos
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese el nombre del art�culo #', i, ':'
		Leer nombre[i]
		Escribir 'Ingrese el costo del art�culo #', i, ':'
		Leer costo[i]
	FinPara
	// Mostrar los art�culos capturados
	Escribir '===== LISTA DE ART�CULOS ====='
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir i, '. ', nombre[i], ' - $', costo[i]
	FinPara
	// Solicitar el n�mero de productos a capturar
	Escribir '�Cu�ntos productos deseas capturar (m�ximo 10)?'
	Leer cantidadArticulos
	totalSinIva <- 0
	// Capturar los art�culos seleccionados
	Para i<-1 Hasta cantidadArticulos Con Paso 1 Hacer
		Escribir 'Selecciona el n�mero del art�culo (1-10):'
		Leer numeroProducto
		// Verificar si el n�mero de producto es v�lido
		Si numeroProducto>=1 Y numeroProducto<=5 Entonces
			Escribir 'Captura la cantidad de ', nombre[numeroProducto], ':'
			Leer cantidadProductos
			// Calcular el costo total por art�culo
			totalSinIva <- totalSinIva+(costo[numeroProducto]*cantidadProductos)
		SiNo
			Escribir 'N�mero de art�culo inv�lido, intenta de nuevo.'
		FinSi
	FinPara
	// Calcular IVA y total
	iva <- totalSinIva*0.16
	totalConIva <- totalSinIva+iva
	// Mostrar el ticket final
	Escribir '===== TICKET ====='
	Escribir 'Subtotal: $', totalSinIva
	Escribir 'IVA (16%): $', iva
	Escribir 'Total a pagar: $', totalConIva
	// Opci�n para continuar o salir
	Repetir
		Escribir '�Deseas realizar otra compra? (S/N):'
		Leer opc
	Hasta Que opc=='N' O opc=='n'
	Escribir 'Gracias por su compra'
FinAlgoritmo
