package practica3;

import java.util.Scanner;

public class Estatica1 {

    public static int[] agregar(int[] num, int indice, Scanner sc) {
        System.out.print("Ingresar el valor entero: ");
        num[indice] = Integer.parseInt(sc.nextLine());
        return num;
    }

    public static void main(String[] args) {
        int[] numeros = new int[10];
        int indice = 0;
        boolean bandera = true;

        Scanner sc = new Scanner(System.in);

        System.out.println("Simulando memoria estatica");

        do {
            System.out.println("\n1. Agregar numero");
            System.out.println("2. Mostrar numeros");
            System.out.println("3. Eliminar ultimo numero");
            System.out.println("4. Salir");
            System.out.print("Opcion: ");

            String opcion = sc.nextLine();

            switch (opcion) {
                case "1":
                    if (indice > 9) {
                        System.out.println("Memoria llena");
                    } else {
                        numeros = agregar(numeros, indice, sc);
                        indice++;
                    }
                    break;

                case "2":
                    if (indice == 0) {
                        System.out.println("No hay numeros guardados");
                    } else {
                        for (int i = 0; i < indice; i++) {
                            System.out.println("[" + i + "] " + numeros[i]);
                        }
                    }
                    break;

                case "3":
                    if (indice == 0) {
                        System.out.println("No hay numeros que eliminar");
                    } else {
                        indice--; // “elimina” quitando el último
                        System.out.println("Eliminado: " + numeros[indice]);
                    }
                    break;

                case "4":
                    bandera = false;
                    break;

                default:
                    System.out.println("Opcion no valida");
                    break;
            }

        } while (bandera);

        sc.close();
    }
}
