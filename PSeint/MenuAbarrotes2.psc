Algoritmo MenuAbarrotesConOperaciones
	
    
    Escribir "Ingrese el número de artículos: "
    Leer nart
    Dimension articulos[nart]
    Dimension precios[nart]
    
    
    Para i <- 1 Hasta nart Con Paso 1 Hacer
        Escribir "Ingrese el nombre del artículo #", i, ":"
        Leer articulos[i]
    Fin Para
    
    
    Para i <- 1 Hasta nart Con Paso 1 Hacer
        Escribir "Ingrese el precio del artículo ", articulos[i], ":"
        Leer precios[i]
    Fin Para
	
    
    totalSinIVA <- 0
    totalIVA <- 0
    IVA <- 0.16
    
    
    Para i <- 1 Hasta nart Con Paso 1 Hacer
        totalSinIVA <- totalSinIVA + precios[i]
    Fin Para
    
    
    totalIVA <- totalSinIVA * (1 + IVA)
    
    
    Escribir "--------- TICKET ---------"
    Para i <- 1 Hasta nart Con Paso 1 Hacer
        Escribir articulos[i], " - $", precios[i]
    Fin Para
    Escribir "Total sin IVA: $", totalSinIVA
    Escribir "IVA (16%): $", totalSinIVA * IVA
    Escribir "Total con IVA: $", totalIVA
    Escribir "--------------------------"
    Escribir "¡Gracias por su compra!"
	
FinAlgoritmo