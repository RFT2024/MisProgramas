public class Recursivo {

    // Imprime la cadena 's' exactamente 'n' veces usando recursividad
    public static void mensaje(String s, int n) {
        if (n <= 0) return;        // Caso base
        System.out.print(s);       // Trabajo actual
        mensaje(s, n - 1);         // Llamada recursiva
    }

    public static void main(String[] args) {
        // Ejemplo 1: lo que tenías en tu archivo
        mensaje("-", 1);           // Salida: -

        System.out.println();      // Salto de línea

        // Ejemplo 2: más repeticiones
        mensaje("⭐", 5);           // Salida: ⭐⭐⭐⭐⭐

        System.out.println();      // Salto de línea

        // Ejemplo 3: texto
        mensaje("Hola ", 3);       // Salida: Hola Hola Hola 
        System.out.println();
    }
}
