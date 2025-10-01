public class Palindrome {

    public static boolean esPalindromo(String cadena, int inicio, int fin) {
        if (inicio >= fin) {
            return true; 
        }
        if (cadena.charAt(inicio) == cadena.charAt(fin)) {
            return esPalindromo(cadena, inicio + 1, fin - 1); 
        }
        return false; 
    }

    public static void main(String[] args) {
        
        String cadena = "Anita lava la tina";

        
        cadena = cadena.replaceAll("\\s+", "").toLowerCase();

        if (esPalindromo(cadena, 0, cadena.length() - 1)) {
            System.out.println("La frase o palabra ES un palíndromo");
        } else {
            System.out.println("La frase o palabra NO es un palíndromo");
        }
    }
}
