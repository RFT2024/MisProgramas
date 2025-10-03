import java.util.Scanner;
import java.math.BigInteger;

public class Numerofactorial {

    
    public static BigInteger factorial(int n) {
        if (n == 0 || n == 1) {
            return BigInteger.ONE; 
        } else {
            return BigInteger.valueOf(n).multiply(factorial(n - 1)); 
        }
    }

    public static void main(String[] args) {
        System.out.println("Programa calculando factorial\n");

        
        System.out.println("5!  = " + factorial(5));
        System.out.println("10! = " + factorial(10));
        System.out.println("15! = " + factorial(15));
        System.out.println("11! = " + factorial(11));

        
        Scanner sc = new Scanner(System.in);
        System.out.print("\nIngresa un numero para comprobar el factorial: ");
        int num = sc.nextInt();
        System.out.println(num + "! = " + factorial(num));

        sc.close();
    }
}
