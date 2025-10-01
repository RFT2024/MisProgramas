package practica4;

import java.util.ArrayList;

public class Dinamica {
    static ArrayList<String> lista = mew ArrayList<String>();

    public static void agregar(String valor) {
        lista.add(valor);


    }

    public static void mostrar() {
        for (int i = 0; i< lista.size(); i++) {
            System.out.println("Valor posicion " + i + ": " + lista.get(i) );
            
        }
    }


    public static void eliminar (int indice) {
        if(lista.size() ==0) {
            System.out.println("lista vacia");

        }else {
            String valor = lista.remove(indice);
            System.out.println("Eliminado: " +valor);

        }

    }
public static void main(String[] args) {
    boolean bandera = true;
    String opcion = "";

    do{
        System.out.println("1; Agregar valor");
        System.out.println("1; Mostrar valores");
        System.out.println("1; Eliminar valor");
        System.out.println("1; Salir");
        opcion = System.console().readLine();
        switch (opcion) {
            case "1":
            System.out.print("Ingresa el valor a agregar: " String valor = System.console().readLine(); agregar valor);

                break;
                case "2":
                mostrar();
                break;
                case "3":
                System.out.print("Ingresa el indice a eliminar: ");
                int indice = Integer.parseInt(System.console().readLine());
                eliminar (indice);
                break;
                case "4":
                bandera = false;
                break;
        
            default:
                break;
        }
        
        }while (bandera) {
            
    }
}

}