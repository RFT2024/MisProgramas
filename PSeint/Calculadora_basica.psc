Algoritmo Calculadora_basica
	//Escribir 'Calculadora basica';
	Escribir 'Elije una de las siguientes operaciones';
	Escribir '1: Suma';
	Escribir '2: Resta';
	Escribir '3: Multiplicaci�n';
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
			Escribir 'Ingresa el 1er numero de la Multiplicaci�n';
			Leer num1;
			Escribir 'Ingresa el 2do numero de la Multiplicaci�n';
			Leer num2;
			resultado = num1 * num2;
			Escribir 'El resultado de la Multiplicaci�n es: ',resultado;
		4:
			Escribir 'Ingresa el 1er numero de la Divisi�n';
			Leer num1;
			Escribir 'Ingresa el 2do numero de la Divisi�n';
			Leer num2;
			resultado = num1 / num2;
			Escribir 'El resultado de la Divisi�n es: ',resultado;
		De Otro Modo:
			Escribir 'Opcion No valida , por favor solo selecciona las opciones del Men�';
	Fin Segun
	
	
	
	
FinAlgoritmo
