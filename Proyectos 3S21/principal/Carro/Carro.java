public class Carro {

    
    String modelo;
    int velocidadMaxima;
    float consumoPromedio;

    
    public Carro(String modelo, int velocidadMaxima, float consumoPromedio) {
        this.modelo = modelo;
        this.velocidadMaxima = velocidadMaxima;
        this.consumoPromedio = consumoPromedio;
    }

    
    public static void main(String[] args) {
        System.out.println("Ejemplo Carro\n");

        
        Carro miCarro = new Carro("Toyota Corolla", 220, 14.5f);

        
        System.out.println("Modelo: " + miCarro.modelo);
        System.out.println("Velocidad máxima: " + miCarro.velocidadMaxima + " km/h");
        System.out.println("Consumo promedio: " + miCarro.consumoPromedio + " km/l");
    }
}
