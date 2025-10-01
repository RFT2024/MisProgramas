package mx.edu.tesoem.isc.principal;

import mx.edu.tesoem.isc.informacion.datos.Datos;


public class Principal {
    public static void main(String[] args) {
        Datos persona = new Datos("juan", 25, "juan@hotmail.com");
        System.out.println("Nombre: " + persona.getNombre());
        System.out.println("Edad: "+ persona.getEdad());
        System.out.println("Correo: " + persona.getCorreo());
    }
}