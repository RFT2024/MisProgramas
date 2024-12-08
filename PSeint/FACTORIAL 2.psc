Proceso Factorial
    Definir numero, resultado, i Como Entero;
    Escribir "Ingresa un numero para calcular su factorial: ";
    Leer numero; 
    resultado = 1;
    Para i <- 1 Hasta numero Hacer
        resultado = resultado * i;
    Fin Para
    Escribir "El factorial de ", numero , " es: " , resultado;
FinProceso