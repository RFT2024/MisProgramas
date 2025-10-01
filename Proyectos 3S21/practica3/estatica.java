
package practica3;
public class estatica {

    public static void main (String[] args) {
        int[] num = new int[10];
        System.out.print("Capturar Valores");
        for(int i=0; i < num.length;i++) {
            System.out.print("Capturar valor de la posicion " +i + ":")
        num[i] = integer.parseInt(System.console().readLine());
        }
        System.out.println("Mostrar valores");
        for(int i=0; i<num.length; i++){
            System.out.println("Valor en la posicion " +i+":"+num[i]);
        }
    }
}