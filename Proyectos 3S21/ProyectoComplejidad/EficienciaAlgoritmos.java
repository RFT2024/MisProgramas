import java.util.Arrays;

public class EficienciaAlgoritmos {

    // Comparación: Búsqueda lineal vs binaria
    public static class Busquedas {

        // O(n) - Búsqueda lineal (simple pero lenta para grandes datos)
        public static int busquedaLineal(int[] array, int objetivo) {
            for (int i = 0; i < array.length; i++) {
                if (array[i] == objetivo) {
                    return i;
                }
            }
            return -1;
        }

        // O(log n) - Búsqueda binaria (rápida pero requiere array ordenado)
        // OJO: esta versión NO modifica el arreglo original.
        public static int busquedaBinariaEficiente(int[] array, int objetivo) {
            int[] copia = Arrays.copyOf(array, array.length); // no mutar el original
            Arrays.sort(copia); // O(n log n) - costo inicial
            return busquedaBinaria(copia, objetivo);
        }

        private static int busquedaBinaria(int[] array, int objetivo) {
            int izquierda = 0, derecha = array.length - 1;
            while (izquierda <= derecha) {
                int medio = izquierda + (derecha - izquierda) / 2;
                if (array[medio] == objetivo) return medio;
                if (array[medio] < objetivo) izquierda = medio + 1;
                else derecha = medio - 1;
            }
            return -1;
        }
    }

    // Comparación: diferentes enfoques para Fibonacci
    public static class Fibonacci {

        // O(2^n) - MUY ineficiente (solo didáctico)
        public static int fibExponencial(int n) {
            if (n <= 1) return n;
            return fibExponencial(n - 1) + fibExponencial(n - 2);
        }

        // O(n) tiempo, O(n) espacio (memo con arreglo)
        public static int fibMemoization(int n) {
            int[] memo = new int[n + 1];
            Arrays.fill(memo, -1);
            return fibMemoHelper(n, memo);
        }

        private static int fibMemoHelper(int n, int[] memo) {
            if (n <= 1) return n;
            if (memo[n] != -1) return memo[n];
            memo[n] = fibMemoHelper(n - 1, memo) + fibMemoHelper(n - 2, memo);
            return memo[n];
        }

        // O(n) tiempo, O(1) espacio (óptimo iterativo)
        public static int fibIterativo(int n) {
            if (n <= 1) return n;
            int a = 0, b = 1;
            for (int i = 2; i <= n; i++) {
                int temp = a + b;
                a = b;
                b = temp;
            }
            return b;
        }
    }

    // Análisis de casos: Mejor, peor y promedio
    public static class AnalisisCasos {

        // Búsqueda en array no ordenado
        // Mejor: O(1) (si está al inicio)
        // Peor: O(n) (si no está o está al final)
        // Promedio: O(n)
        public static int busquedaConAnalisis(int[] array, int objetivo) {
            for (int i = 0; i < array.length; i++) {
                if (array[i] == objetivo) return i;
            }
            return -1;
        }

        // Algoritmo con diferentes complejidades según entrada
        public static void algoritmoAdaptativo(int[] array) {
            // Si el array está ordenado: se puede usar O(log n)
            // Si no: primero O(n log n) para ordenar y después O(log n)
            if (estaOrdenado(array)) {
                System.out.println("Array ordenado - usando búsqueda binaria (O(log n))");
            } else {
                System.out.println("Array no ordenado - ordenando primero (O(n log n))");
                Arrays.sort(array);
                System.out.println("Ahora búsqueda binaria (O(log n))");
            }
        }

        private static boolean estaOrdenado(int[] array) {
            for (int i = 0; i < array.length - 1; i++) {
                if (array[i] > array[i + 1]) return false;
            }
            return true;
        }
    }

    // (Opcional) un pequeño main de demo
    public static void main(String[] args) {
        int[] datos = {7, 3, 9, 1, 4, 8};

        System.out.println("Lineal (índice de 9): " +
                Busquedas.busquedaLineal(datos, 9));

        System.out.println("Binaria eficiente (índice en arreglo ORDENADO de 9): " +
                Busquedas.busquedaBinariaEficiente(datos, 9));

        System.out.println("Fib exp (6): " + Fibonacci.fibExponencial(6));
        System.out.println("Fib memo (30): " + Fibonacci.fibMemoization(30));
        System.out.println("Fib iter (45): " + Fibonacci.fibIterativo(45));

        AnalisisCasos.algoritmoAdaptativo(datos);
    }
}
