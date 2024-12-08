Algoritmo sin_titulo
	definir num como caracter
	letras<-"0123456789abcdef"
	
	Escribir 'Ingresa un numero';
	leer num;
	
	Para i<-0 Hasta Longitud(num)-1 Con Paso 1 Hacer
		Para l<-0 Hasta longitud(letras)-1 Con Paso 1 Hacer
			Si Subcadena(num,i,i)=Subcadena(letras,l,l) Entonces
				acum=acum+l*16^(longitud(num)-i-1)
				l=longitud(letras)-1
				cont=cont+1
			finsi
		FinPara
	Fin Para
	
	si cont=Longitud(num) entonces
		escribir hex," Hexadecimal = ",acum," en Decimal"
	sino
		escribir "El numero ",num," no es numero Hexadecimal"
	FinSi
	
	
	//Escribir 'Ingresa un numero';
	//leer num;

	//Escribir 'Sistema de conversiones';
	//Escribir '1. sistema binario';
	//Escribir '2. sistema desimal';
	//Escribir '3. sistema octal';
	//Escribir '4. sistema hexadesimal: ';
	//Escribir 'Selecciona una opcion';
	//Leer opcion;	
	
FinAlgoritmo
