package practica3;
public class estatica1 {

    public static int[] agregar(int[]num, indice) {
        System.out.println("Ingresar el valor entero:");
        num[indice]= integer.parseInt(System.console().readLine());
        return num;



    public static void main(String[] args) {
        int [] numeros=new int[10];
        int indice=0;
        boolean bandera =true;

        System.out.println("Simulando memoria estatica ");
        String opcion ="";
        do{
            System.out.println("1; Agregar numero");
            System.out.println("2; Mostrar numeros");
            System.out.println("3; Eliminar numero numeros");
            System.out.println("4; Salir");
            opcion= System.console().readLine();
            switch (opcion) {
                case "1": if(indice>9){
                    System.out.prinln("Memoria LLena");
                }else{
                    
                    numeros = agregar numeros(numeros,indice);
                    indice++;
                }
                    
                    break;

                    case "2": for (int i=0;i<indice; i++){
                        System.out.println(numeros[i]);

                    }
                    break;

                    case "3": if(indice==0){
                        System.out.println("Eliminado: "+numeros[indice]);
                    }
                    break;
                    case"4": bandera=false;
                    break;
                     }

                     while(bandera);

            
                default:
                    break;
            }
        }
    
    
    
    }
        
    }

