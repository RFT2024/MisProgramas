import java.util.Arrays;

public class TestComplejidad {
    public static void main(String[] args) {
        int[] array = {5, 2, 8, 1, 9, 3};
        int objetivo = 8;

        // === COMPLEJIDAD TEMPORAL ===
        System.out.println("=== COMPLEJIDAD TEMPORAL ===");

        long inicio = System.nanoTime();
        int resultadoLineal = ComplejidadTemporal.sumaLineal(array);
        long fin = System.nanoTime();
        System.out.println("Suma lineal O(n): " + resultadoLineal + " - Tiempo: " + (fin - inicio) + " ns");

        // Preparar copia ORDENADA para búsqueda binaria
        int[] copiaOrdenada = Arrays.copyOf(array, array.length);
        Arrays.sort(copiaOrdenada);

        inicio = System.nanoTime();
        int idxBinaria = ComplejidadTemporal.busquedaBinaria(copiaOrdenada, objetivo);
        fin = System.nanoTime();
        System.out.println(
            "Búsqueda binaria O(log n): índice=" + idxBinaria +
            " - Arreglo ordenado=" + Arrays.toString(copiaOrdenada) +
            " - Tiempo: " + (fin - inicio) + " ns"
        );

        // === EFICIENCIA FIBONACCI ===
        System.out.println("\n=== EFICIENCIA FIBONACCI ===");
        int n = 10;

        inicio = System.nanoTime();
        int fibIterativo = EficienciaAlgoritmos.Fibonacci.fibIterativo(n);
        fin = System.nanoTime();
        System.out.println("Fibonacci iterativo O(n): " + fibIterativo + " - Tiempo: " + (fin - inicio) + " ns");

        inicio = System.nanoTime();
        int fibMemo = EficienciaAlgoritmos.Fibonacci.fibMemoization(n);
        fin = System.nanoTime();
        System.out.println("Fibonacci memoization O(n): " + fibMemo + " - Tiempo: " + (fin - inicio) + " ns");

        // Solo para n pequeño por la complejidad exponencial (O(2^n))
        if (n <= 10) {
            inicio = System.nanoTime();
            int fibExp = EficienciaAlgoritmos.Fibonacci.fibExponencial(n);
            fin = System.nanoTime();
            System.out.println("Fibonacci exponencial O(2^n): " + fibExp + " - Tiempo: " + (fin - inicio) + " ns");
        }

        // === ANÁLISIS DE CASOS ===
        System.out.println("\n=== ANALISIS DE CASOS ===");
        // Ojo: algoritmoAdaptativo puede ordenar el array in-place
        int[] copiaParaAnalisis = Arrays.copyOf(array, array.length);
        EficienciaAlgoritmos.AnalisisCasos.algoritmoAdaptativo(copiaParaAnalisis);
    }
}
