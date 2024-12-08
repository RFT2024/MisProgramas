Proceso FactorialPascal
    Definir numero, resultado Como Entero;
	
    // Solicitar n�mero positivo
    Repetir
        Escribir "Ingrese un n�mero positivo: ";
        Leer numero;
        Si numero < 0 Entonces
            Escribir "El n�mero debe ser mayor o igual a 0.";
        FinSi
    Hasta Que numero >= 0
	
    // Calcular el factorial
    resultado = Factorial(numero);
	
    // Mostrar el resultado
    Escribir "El factorial de ", numero, " es: ", resultado;
FinProceso

Funcion Factorial(numero) Como Entero
    Definir resultado Como Entero;
    resultado = 1;
FinFuncion

	
    // Calcular factorial para n�meros mayores a 0
    Para i = 1 Hasta numero Hacer
        resultado = resultado * i;
    Fin Para
	
    Devolver resultado
FinFuncion

