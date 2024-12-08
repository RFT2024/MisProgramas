// Función para calcular el factorial
Funcion factorial(numero) Como Entero
	Definir f, j Como Entero;
	f <- 1;
	Para j <- 1 Hasta numero Con Paso 1 Hacer
		f <- f * j;
	Fin Para
	Devolver f; // Asegurarse de devolver el valor del factorial correctamente
FinFuncion

Algoritmo  binomio
	// Este programa calcula el desarrollo del binomio (a + b)^n
	Definir n, i, coeficiente Como Entero;
	Escribir "Binomio expresado como (a + b)^n";
	Escribir "Ingrese el valor de n:";
	Leer n;
	
	// Desarrollo del binomio
	Para i <- 0 Hasta n Con Paso 1 Hacer
		// Calcular el coeficiente binomial usando combinaciones: C(n, i) = n! / (i! * (n-i)!)
		coeficiente <- factorial(n) / (factorial(i) * factorial(n - i)); // Corrección en el uso de la función
		
		// Mostrar el coeficiente solo si es mayor a 1
		Si coeficiente <> 1 Entonces
			Escribir Sin Saltar coeficiente, "*";
		FinSi
		
		// Mostrar la parte con 'a' si n-i > 0
		Si (n - i) > 0 Entonces
			Escribir Sin Saltar "a^", (n - i);
		FinSi
		
		// Mostrar la parte con 'b' si i > 0
		Si i > 0 Entonces
			Escribir Sin Saltar "b^", i;
		FinSi
		
		// Agregar el signo '+' entre términos, excepto en el último
		Si i < n Entonces
			Escribir Sin Saltar " + ";
		FinSi
	Fin Para
	
	Escribir ""; // Salto de línea al final
	
FinAlgoritmo


