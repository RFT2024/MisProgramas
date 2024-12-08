// Funci�n para capturar el nombre de un art�culo
Funcion articulo <- CapturaArticulo()
    Definir articulo Como Caracter
    Escribir "Ingrese el nombre del art�culo:"
    Leer articulo
FinFuncion

// Funci�n para capturar el precio de un art�culo
Funcion precio <- CapturaPrecio()
    Definir precio Como Real
    Escribir "Ingrese el precio del art�culo:"
    Leer precio
FinFuncion

// Funci�n para capturar la cantidad de un art�culo
Funcion cantidad <- CapturaCantidad()
    Definir cantidad Como Entero
    Escribir "Ingrese la cantidad del art�culo:"
    Leer cantidad
FinFuncion

// Funci�n para generar el ticket de compra
Funcion GenerarTicket(articulos Por Referencia, cantidades Por Referencia, precios Por Referencia, nart)
    Definir totalSinIVA, totalIVA, granTotal, iva, subtotal Como Real
    totalSinIVA <- 0
    iva <- 0.16
	
    Escribir "----------------------------------"
    Escribir "Ticket de compra:"
    Para i <- 1 Hasta nart Con Paso 1 Hacer
        subtotal <- cantidades[i] * precios[i]
        Escribir "Art�culo: ", articulos[i], " | Cantidad: ", cantidades[i], " | Precio: $", precios[i], " | Subtotal: $", subtotal
        totalSinIVA <- totalSinIVA + subtotal
    FinPara
	
    totalIVA <- totalSinIVA * iva
    granTotal <- totalSinIVA + totalIVA
	
    Escribir "----------------------------------"
    Escribir "Total sin IVA: $", totalSinIVA
    Escribir "IVA (16%): $", totalIVA
    Escribir "Gran Total: $", granTotal
    Escribir "----------------------------------"
FinFuncion

// Subproceso para mostrar el men�
Subproceso Menu()
    Escribir "-----------------------------"
    Escribir "Menu de opciones:"
    Escribir "1.- Capturar art�culos"
    Escribir "2.- Generar Ticket"
    Escribir "3.- Salir"
    Escribir "-----------------------------"
    Escribir "Seleccione una opci�n:"
FinSubproceso

// Algoritmo principal de la tienda
Algoritmo Tienda
    Definir opc Como Caracter
    Definir nart, i Como Entero
    nart <- 0 // Inicialmente no hay art�culos
	
    Dimension articulos[100] // Definimos un tama�o m�ximo de 100 art�culos
    Dimension precios[100]
    Dimension cantidades[100]
	
    Repetir
        Menu() // Muestra el men�
        Leer opc
		
        Segun opc Hacer
            "1": // Capturar art�culos
                Escribir "�Cu�ntos art�culos desea capturar?"
                Leer nart
                Para i <- 1 Hasta nart Con Paso 1 Hacer
                    articulos[i] <- CapturaArticulo() // Captura el nombre del art�culo
                    precios[i] <- CapturaPrecio() // Captura el precio del art�culo
                    cantidades[i] <- CapturaCantidad() // Captura la cantidad del art�culo
                FinPara
            "2": // Generar ticket de compra
                Si nart > 0 Entonces
                    GenerarTicket(articulos, cantidades, precios, nart)
                SiNo
                    Escribir "No se han capturado art�culos."
                FinSi
            "3": // Salir del programa
                Escribir "Saliendo del programa..."
                opc <- "n" // Establece opc para salir del bucle
            De Otro Modo:
                Escribir "Opci�n no v�lida. Intente nuevamente."
        FinSegun
		
    Hasta Que opc = "n" // El ciclo termina cuando opc es "n"
FinAlgoritmo

