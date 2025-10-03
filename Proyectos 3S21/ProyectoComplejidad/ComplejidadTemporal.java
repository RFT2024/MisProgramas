public class ComplejidadTemporal {

    // O(1): acceso constante
    public static int accesoConstante(int[] array) {
        return array[0];
    }

    // O(n): suma lineal
    public static int sumaLineal(int[] array) {
        int suma = 0;
        for (int i = 0; i < array.length; i++) {
            suma += array[i];
        }
        return suma;
    }

    // O(n^2): bubble sort (ordenamiento burbuja)
    public static void bubbleSort(int[] array) {
        int n = array.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
    }

    // O(log n): búsqueda binaria (REQUIERE arreglo ORDENADO)
    public static int busquedaBinaria(int[] array, int objetivo) {
        int izquierda = 0, derecha = array.length - 1;
        while (izquierda <= derecha) {
            int medio = izquierda + (derecha - izquierda) / 2;
            if (array[medio] == objetivo) return medio;
            if (array[medio] < objetivo) izquierda = medio + 1;
            else derecha = medio - 1;
        }
        return -1;
    }

    // O(2^n): Fibonacci recursivo simple (didáctico)
    public static int fibonacciExponencial(int n) {
        if (n <= 1) return n;
        return fibonacciExponencial(n - 1) + fibonacciExponencial(n - 2);
    }

    // --- Demo rápida ---
    public static void main(String[] args) {
        int[] datos = {7, 3, 9, 1, 4, 8};

        System.out.println("O(1) accesoConstante: " + accesoConstante(datos));
        System.out.println("O(n) sumaLineal: " + sumaLineal(datos));

        // Ordenamos copia para no afectar 'datos' original
        int[] copia = java.util.Arrays.copyOf(datos, datos.length);
        bubbleSort(copia);
        System.out.println("Ordenado (bubbleSort): " + java.util.Arrays.toString(copia));

        int idx = busquedaBinaria(copia, 9);
        System.out.println("Búsqueda binaria de 9 (en ordenado): índice = " + idx);

        System.out.println("Fibonacci exponencial de 10: " + fibonacciExponencial(10));
    }
}
