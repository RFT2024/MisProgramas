Algoritmo Sistetmas_de_conversiones
	Definir numero,opcion Como Entero
	Definir resultado Como Cadena
	Escribir "Ingresa el número a convertir:"
	Leer numero
	Escribir "Selecciona la base de conversión:"
	Escribir "1.Binario"
	Escribir "2. Octal"
	Escribir "3.Hexadecimal"
	Leer opcion
	Segun opcion Hacer
		
	Caso 1:
		resultado <- ""
		Mientras numero <> 0 Hacer
			resultado <- ConvertirATexto(numero MOD 2) + resultado
			numero <- Trunc(numero /2)
		Fin Mientras
		Escribir "El número en binario es: ", resultado
		
	Caso 2:
		resultado <- ""
		Mientras numero <> 0 Hacer
			resultado <- ConvertirATexto(numero MOD 8) + resultado
			numero <- Trunc(numero / 8)
		Fin Mientras
		Escribir "El número en Octal es: ", resultado
		
		Caso 3:
			resultado <- ""
			Mientras numero <> 0 Hacer
				residuo <- numero MOD 16
				Si residuo >= 10 Entonces
					Segun residuo Hacer
						Caso 10:
							resultado <- "A" + resultado
						Caso 11:
							resultado <- "B" + resultado
						Caso 12:
							resultado <- "C" + resultado
						Caso 13:
							resultado <- "D" + resultado
						Caso 14:
							resultado <- "E" + resultado
						Caso 15:
							resultado <- "F" + resultado
							
					Fin Segun
				SiNo
					resultado <- ConvertirATexto(residuo) + resultado
				FinSi
				numero <- Trunc(numero / 16)
			Fin Mientras
			Escribir "El número es hexadecimal es: ", resultado
		De Otro Modo:
			Escribir "Opcion invalida."
	Fin Segun
	
FinAlgoritmo
