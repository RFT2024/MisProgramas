Funcion Ticket ( articulos,nart )
	para i<-1 Hasta nart  Con Paso 1 Hacer
		Escribir articulos[i]
	FinPara
	
Fin Funcion

Funcion articulo <- CapturaArticulos
	Escribir "Nombre del articulo"
	Leer  articulo
Fin Funcion



Funcion tamano <- tamano_arreglo
	Escribir "Cuantos articulos deseas"
	leer articulos
	tamano<-articulos
Fin Funcion


Funcion Menu 
	Escribir "Menu de opciones"
	Escribir ""
	Escribir "1.- Capturar articulo"
	Escribir "2.- Generar Ticket"
	Escribir "3.- Salir"
	Escribir ""
	Escribir "Que opcion desea"
Fin Funcion



Algoritmo Tienda
	opc<-"a"
	nart<-tamano_arreglo
	Dimension articulo[nart]
	Repetir
		Menu
		Leer opc
		Segun opc Hacer
			"1":
			    Para i<-1 Hasta nart Con Paso 1 Hacer
					articulo[i]<-CapturaArticulos
				Fin Para
			"2":
				Ticket(articulo, nart)
			"3":
				Escribir "salir"
			De Otro Modo:
				Escribir "No existe la opcion"
		Fin Segun
	Hasta Que expresion_logica
	
FinAlgoritmo
