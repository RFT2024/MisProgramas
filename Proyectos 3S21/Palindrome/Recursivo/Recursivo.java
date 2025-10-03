public class Recursivo {

    
    public static void mensaje(String s, int n) {
        if (n <= 0) return;        
        System.out.print(s);       
        mensaje(s, n - 1);         
    }

    public static void main(String[] args) {
        
        mensaje("-", 1);           

        System.out.println();      

        
        mensaje("⭐", 5);           

        System.out.println();      

        
        mensaje("Hola ", 3);       
        System.out.println();
    }
}
