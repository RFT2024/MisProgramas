Algoritmo TicketAbarrotes
	
    // Definimos los nombres y precios fijos de los artículos
    Dimension nombre[5]
    Dimension precio[5]
    
    nombre[1] <- "Leche"
    nombre[2] <- "Pan"
    nombre[3] <- "Huevo"
    nombre[4] <- "Azúcar"
    nombre[5] <- "Arroz"
    
    precio[1] <- 20.50
    precio[2] <- 15.00
    precio[3] <- 36.00
    precio[4] <- 10.75
    precio[5] <- 18.25
	
    // Variables para almacenar los productos seleccionados y sus costos
    Dimension seleccion[5]
    totalSinIVA <- 0
    totalIVA <- 0
    i <- 0
    numProductos <- 0
    IVA <- 0.16
	
    // Mostrar el menú de productos
    Escribir "Menú de productos:"
    Para i <- 1 Hasta 5 Hacer
        Escribir i, ". ", nombre[i], " - $", precio[i]
    FinPara
	
    // Solicitar cuántos productos va a capturar el usuario
    Escribir "¿Cuántos productos desea capturar? (máximo 5): "
    Leer numProductos
    
    Si numProductos > 5 Entonces
        Escribir "Error: No puede seleccionar más de 5 productos."
    Sino
        // Solicitar la selección de los productos
        Para i <- 1 Hasta numProductos Hacer
            Escribir "Seleccione el número del producto ", i, ":"
            Leer seleccion[i]
            
            Si seleccion[i] < 1 O seleccion[i] > 5 Entonces
                Escribir "Selección inválida."
            Sino
                totalSinIVA <- totalSinIVA + precio[seleccion[i]]
            FinSi
        FinPara
		
        // Calcular el total con IVA
        totalIVA <- totalSinIVA * (1 + IVA)
		
        // Mostrar el ticket
        Escribir "--------- TICKET ---------"
        Para i <- 1 Hasta numProductos Hacer
            Escribir nombre[seleccion[i]], " - $", precio[seleccion[i]]
        FinPara
        Escribir "Total sin IVA: $", totalSinIVA
        Escribir "IVA (16%): $", totalSinIVA * IVA
        Escribir "Total con IVA: $", totalIVA
        Escribir "--------------------------"
        Escribir "¡Gracias por su compra!"
    FinSi

FinAlgoritmo

