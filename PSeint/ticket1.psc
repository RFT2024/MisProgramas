Proceso ticket1
	// Definir variables
	Definir nombreArticulos Como cadena
	Definir costoArticulos Como Real
	Definir cantidadArticulos, i, numeroProductos, cantidadProductos Como Entero
	Definir totalSinIva, totalConIva, iva Como Real
	
	// Definir el m�ximo de art�culos que se pueden capturar (hasta 10)
	Definir nombreArticulos[10] Como cadena
	Definir costoArticulos[10] Como Real
	
	// Asignar los art�culos y sus costos
	nombreArticulos[1] <- "Pan"
	costoArticulos[1] <- 10.50
	nombreArticulos[2] <- "Leche"
	costoArticulos[2] <- 15.75
	nombreArticulos[3] <- "Huevos"
	costoArticulos[3] <- 30.00
	nombreArticulos[4] <- "Az�car"
	costoArticulos[4] <- 12.00
	nombreArticulos[5] <- "Sal"
	costoArticulos[5] <- 5.50
	nombreArticulos[6] <- "Aceite"
	costoArticulos[6] <- 25.00
	nombreArticulos[7] <- "Frijoles"
	costoArticulos[7] <- 18.00
	nombreArticulos[8] <- "Arroz"
	costoArticulos[8] <- 14.00
	nombreArticulos[9] <- "Refresco"
	costoArticulos[9] <- 20.00
	nombreArticulos[10] <- "Jab�n"
	costoArticulos[10] <- 7.00
	
	// Mostrar el men� de art�culos
	Escribir "===== MEN� DE ART�CULOS ====="
	Para i <- 1 Hasta 10 Con Paso 1 Hacer
		Escribir i, ". ", nombreArticulos[i], " - $", costoArticulos[i]
	Fin Para
	
	// Solicitar el n�mero de productos a capturar
	Escribir "�Cu�ntos productos deseas capturar (m�ximo 10)?"
	Leer cantidadArticulos
	
	totalSinIva <- 0
	
	// Capturar los art�culos seleccionados
	Para i <- 1 Hasta cantidadArticulos Con Paso 1 Hacer
		Escribir "Selecciona el n�mero del art�culo (1-10):"
		Leer numeroProductos
		
		// Verificar si el n�mero de producto es v�lido
		Si numeroProductos >= 1 Y numeroProductos <= 10 Entonces
			Escribir "Captura la cantidad de ", nombreArticulos[numeroProductos], ":"
			Leer cantidadProductos
			// Calcular el costo total por art�culo
			totalSinIva <- totalSinIva + (costoArticulos[numeroProductos] * cantidadProductos)
		SiNo
			Escribir "N�mero de art�culo inv�lido, intenta de nuevo."
		FinSi
	Fin Para
	
	// Calcular IVA y total
	iva <- totalSinIva * 0.16
	totalConIva <- totalSinIva + iva
	
	// Mostrar el ticket final
	Escribir "===== TICKET ====="
	Escribir "Subtotal: $", totalSinIva
	Escribir "IVA (16%): $", iva
	Escribir "Total a pagar: $", totalConIva
	Escribir "Gracias por su compra"
	
FinProceso

