public class ComplejidadEspacial {

    // O(1) espacio adicional
    public static int encontrarMaximo(int[] array) {
        if (array.length == 0) return -1; // o Integer.MIN_VALUE / IllegalArgumentException
        int maximo = array[0]; // solo una variable adicional
        for (int i = 1; i < array.length; i++) {
            if (array[i] > maximo) maximo = array[i];
        }
        return maximo;
    }

    // O(n) espacio: se crea una copia del mismo tamaño
    public static int[] duplicarArray(int[] array) {
        int[] copia = new int[array.length];
        for (int i = 0; i < array.length; i++) {
            copia[i] = array[i] * 2;
        }
        return copia;
    }

    // O(n^2) espacio: matriz n x n
    public static int[][] crearMatrizIdentidad(int n) {
        int[][] matriz = new int[n][n];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                matriz[i][j] = (i == j) ? 1 : 0;
            }
        }
        return matriz;
    }

    // O(n) espacio en recursión (pila de llamadas), O(n) tiempo
    public static int factorialRecursivo(int n) {
        if (n < 0) throw new IllegalArgumentException("n debe ser >= 0");
        if (n == 0 || n == 1) return 1;
        return n * factorialRecursivo(n - 1);
    }

    // O(1) espacio, O(n) tiempo (iterativo)
    public static int factorialIterativo(int n) {
        if (n < 0) throw new IllegalArgumentException("n debe ser >= 0");
        int resultado = 1;
        for (int i = 2; i <= n; i++) {
            resultado *= i;
        }
        return resultado;
    }

    // --- Demo rápida ---
    public static void main(String[] args) {
        int[] datos = {5, 2, 8, 1, 9, 3};

        System.out.println("Máximo (O(1) espacio): " + encontrarMaximo(datos));

        int[] duplicado = duplicarArray(datos);
        System.out.println("Duplicado (O(n) espacio): " + java.util.Arrays.toString(duplicado));

        int[][] identidad = crearMatrizIdentidad(4);
        System.out.println("Matriz identidad 4x4 (O(n^2) espacio):");
        for (int i = 0; i < identidad.length; i++) {
            System.out.println(java.util.Arrays.toString(identidad[i]));
        }

        System.out.println("Factorial recursivo 6 (O(n) espacio recursivo): " + factorialRecursivo(6));
        System.out.println("Factorial iterativo 6 (O(1) espacio): " + factorialIterativo(6));
    }
}
