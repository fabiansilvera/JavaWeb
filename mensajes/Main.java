
package com.fabian.mensajes;

import java.sql.SQLException;
import java.util.*;

public class Main {
    // prueba de la DB y metodos
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        //conexion.abrirConexion();
        //System.out.println("se conecto");
        mensajeDao mensajeDao = new mensajeDao();
        
       /* mensaje msm = new mensaje("hola desde main", "main");
        int registro = mensajeDao.insertar(msm);
        System.out.println("Se inserto " + registro + "registro");*/
        
       /* mensaje msm = new mensaje(4, "Editado desde java", "el mismisimo");
        int registro = mensajeDao.editar(msm);
        System.out.println("Se edito " + registro + "registro"); */
       /* mensaje msm = new mensaje(6);
        int registro = mensajeDao.eliminar(msm);
        System.out.println("Se elimino " + registro + "registro"); */
        List<mensaje> mensajes = mensajeDao.seleccionar();
        
        for (mensaje mensaje : mensajes) {
            System.out.println(mensaje);
        }
        
        
    }
}
