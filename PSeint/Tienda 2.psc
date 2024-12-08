// Función para capturar el nombre de un artículo
Funcion articulo <- CapturaArticulo()
    Definir articulo Como Caracter
    Escribir "Ingrese el nombre del artículo:"
    Leer articulo
FinFuncion

// Función para capturar el precio de un artículo
Funcion precio <- CapturaPrecio()
    Definir precio Como Real
    Escribir "Ingrese el precio del artículo:"
    Leer precio
FinFuncion

// Función para capturar la cantidad de un artículo
Funcion cantidad <- CapturaCantidad()
    Definir cantidad Como Entero
    Escribir "Ingrese la cantidad del artículo:"
    Leer cantidad
FinFuncion

// Función para generar el ticket de compra
Funcion GenerarTicket(articulos Por Referencia, cantidades Por Referencia, precios Por Referencia, nart)
    Definir totalSinIVA, totalIVA, granTotal, iva, subtotal Como Real
    totalSinIVA <- 0
    iva <- 0.16
	
    Escribir "----------------------------------"
    Escribir "Ticket de compra:"
    Para i <- 1 Hasta nart Con Paso 1 Hacer
        subtotal <- cantidades[i] * precios[i]
        Escribir "Artículo: ", articulos[i], " | Cantidad: ", cantidades[i], " | Precio: $", precios[i], " | Subtotal: $", subtotal
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

// Subproceso para mostrar el menú
Subproceso Menu()
    Escribir "-----------------------------"
    Escribir "Menu de opciones:"
    Escribir "1.- Capturar artículos"
    Escribir "2.- Generar Ticket"
    Escribir "3.- Salir"
    Escribir "-----------------------------"
    Escribir "Seleccione una opción:"
FinSubproceso

// Algoritmo principal de la tienda
Algoritmo Tienda
    Definir opc Como Caracter
    Definir nart, i Como Entero
    nart <- 0 // Inicialmente no hay artículos
	
    Dimension articulos[100] // Definimos un tamaño máximo de 100 artículos
    Dimension precios[100]
    Dimension cantidades[100]
	
    Repetir
        Menu() // Muestra el menú
        Leer opc
		
        Segun opc Hacer
            "1": // Capturar artículos
                Escribir "¿Cuántos artículos desea capturar?"
                Leer nart
                Para i <- 1 Hasta nart Con Paso 1 Hacer
                    articulos[i] <- CapturaArticulo() // Captura el nombre del artículo
                    precios[i] <- CapturaPrecio() // Captura el precio del artículo
                    cantidades[i] <- CapturaCantidad() // Captura la cantidad del artículo
                FinPara
            "2": // Generar ticket de compra
                Si nart > 0 Entonces
                    GenerarTicket(articulos, cantidades, precios, nart)
                SiNo
                    Escribir "No se han capturado artículos."
                FinSi
            "3": // Salir del programa
                Escribir "Saliendo del programa..."
                opc <- "n" // Establece opc para salir del bucle
            De Otro Modo:
                Escribir "Opción no válida. Intente nuevamente."
        FinSegun
		
    Hasta Que opc = "n" // El ciclo termina cuando opc es "n"
FinAlgoritmo

