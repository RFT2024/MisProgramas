Algoritmo Chedraui
	// Definir arreglos
	Dimensionar nombre(5)
	Dimensionar costo(5)
	Definir cantidadArticulos, i, numeroProducto, cantidadProductos Como Entero
	Definir totalSinIva, totalConIva, iva Como Real
	Definir opc Como Cadena
	// Capturar nombre y costo de los artículos
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese el nombre del artículo #', i, ':'
		Leer nombre[i]
		Escribir 'Ingrese el costo del artículo #', i, ':'
		Leer costo[i]
	FinPara
	// Mostrar los artículos capturados
	Escribir '===== LISTA DE ARTÍCULOS ====='
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir i, '. ', nombre[i], ' - $', costo[i]
	FinPara
	// Solicitar el número de productos a capturar
	Escribir '¿Cuántos productos deseas capturar (máximo 10)?'
	Leer cantidadArticulos
	totalSinIva <- 0
	// Capturar los artículos seleccionados
	Para i<-1 Hasta cantidadArticulos Con Paso 1 Hacer
		Escribir 'Selecciona el número del artículo (1-10):'
		Leer numeroProducto
		// Verificar si el número de producto es válido
		Si numeroProducto>=1 Y numeroProducto<=5 Entonces
			Escribir 'Captura la cantidad de ', nombre[numeroProducto], ':'
			Leer cantidadProductos
			// Calcular el costo total por artículo
			totalSinIva <- totalSinIva+(costo[numeroProducto]*cantidadProductos)
		SiNo
			Escribir 'Número de artículo inválido, intenta de nuevo.'
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
	// Opción para continuar o salir
	Repetir
		Escribir '¿Deseas realizar otra compra? (S/N):'
		Leer opc
	Hasta Que opc=='N' O opc=='n'
	Escribir 'Gracias por su compra'
FinAlgoritmo
