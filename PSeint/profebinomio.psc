Algoritmo binomio
	//Definir n Como Entero;
	Escribir " binomio expresado a la (a+b)^n";
	Escribir "Ingrese la potencia a desarrollar";
	Leer n;
	Para i <- 0 Hasta n Con Paso 1 Hacer
		si i = 0 Entonces
			Escribir Sin Saltar "a^",(n-i);
		SiNo
			si i=n Entonces
				Escribir Sin Saltar "b^",1;
			SiNo
				Escribir Sin Saltar "a^",(n-i),"b^",i;
				
			FinSi
			
		FinSi
		
		si i<n Entonces
			Escribir Sin Saltar "+";
			
		FinSi
	Fin Para
	
	
FinAlgoritmo