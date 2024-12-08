Proceso HexaToDec
	Definir respuesta Como Caracter;
	respuesta<-'s';
	mientras (respuesta='s') Hacer
		borrar pantalla;
		escribir 'Numero Hexadecimal a convertir: ';
		leer nHexa;
		nDigitos<-longitud(nHexa);
		nDecimal<-0;
		para i<-1 hasta nDigitos con paso 1
			//Digito<-'';
			Digito <- MAYUSCULAS(subCadena(nHexa,i,i));                                      
			segun Digito
				'A':
					numerador<-10;
				'B':
					numerador<-11;
				'C':
					numerador<-12;
				'D':
					numerador<-13;
				'E':
					numerador<-14;
				'F':
					numerador<-15;
				De Otro Modo:
					numerador<-convertirAnumero(Digito);
			FinSegun
			DigitoXBase16<-numerador*16^(nDigitos-i);
			nDecimal<-nDecimal+DigitoXBase16;                                          
			escribir Digito,'*16^',nDigitos-i, ' = ', DigitoXBase16;
		FinPara
		nHexaM<-MAYUSCULAS(nHexa);
		escribir 'El número ', nHexaM, ' Hexadecimal en Decimal es: ', nDecimal;
		escribir '¿ DESEA REALIZAR UNA CONVERSIÓN MÁS ?';
		leer respuesta;
	FinMientras
FinProceso
