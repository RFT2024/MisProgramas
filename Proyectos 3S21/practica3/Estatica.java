
package practica3;

import java.util.Scanner;

public class Estatica {

    public static void main(String[] args) {
        int[] num = new int[10];
        Scanner sc = new Scanner(System.in);

        System.out.println("Capturar Valores");
        for (int i = 0; i < num.length; i++) {
            System.out.print("Capturar valor de la posicion " + i + ": ");
            num[i] = Integer.parseInt(sc.nextLine());
        }

        System.out.println("\nMostrar valores");
        for (int i = 0; i < num.length; i++) {
            System.out.println("Valor en la posicion " + i + ": " + num[i]);
        }

        sc.close();
    }
}
