Algoritmo Calculadora_basica
	//Escribir 'Calculadora basica';
	Escribir 'Elije una de las siguientes operaciones';
	Escribir '1: Suma';
	Escribir '2: Resta';
	Escribir '3: Multiplicación';
	Escribir '4: Division';
	Leer opcion;
	
	
	Segun opcion Hacer
		1:
			Escribir 'Ingresa el 1er numero de la suma';
			Leer num1;
			Escribir 'Ingresa el 2do numero de la suma';
			Leer num2;
			resultado = num1 + num2;
			Escribir 'El resultado de la suma es: ',resultado;
		2:
			Escribir 'Ingresa el 1er numero de la resta';
			Leer num1;
			Escribir 'Ingresa el 2do numero de la resta';
			Leer num2;
			resultado = num1 - num2;
			Escribir 'El resultado de la resta es: ',resultado;
		3:
			Escribir 'Ingresa el 1er numero de la Multiplicación';
			Leer num1;
			Escribir 'Ingresa el 2do numero de la Multiplicación';
			Leer num2;
			resultado = num1 * num2;
			Escribir 'El resultado de la Multiplicación es: ',resultado;
		4:
			Escribir 'Ingresa el 1er numero de la División';
			Leer num1;
			Escribir 'Ingresa el 2do numero de la División';
			Leer num2;
			resultado = num1 / num2;
			Escribir 'El resultado de la División es: ',resultado;
		De Otro Modo:
			Escribir 'Opcion No valida , por favor solo selecciona las opciones del Menú';
	Fin Segun
	
	
	
	
FinAlgoritmo
