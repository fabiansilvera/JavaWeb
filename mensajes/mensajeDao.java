package com.fabian.mensajes;

import static com.fabian.mensajes.conexion.*;
import java.sql.*;
import java.util.*;

public class mensajeDao {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    private mensaje mensaje;

    public List<mensaje> seleccionar() {
        String sql = "SELECT * FROM mensajes";
        List<mensaje> mensajes = new ArrayList();

        try {
            this.conn = abrirConexion();
            this.ps = this.conn.prepareStatement(sql);
            this.rs = this.ps.executeQuery();

            while (this.rs.next()) {
                int id = this.rs.getInt("id_mensaje");
                String msj = this.rs.getString("mensaje");
                String autor = this.rs.getString("autor");
                String fecha = this.rs.getString("fecha");

                this.mensaje = new mensaje(id, msj, autor, fecha);
                mensajes.add(this.mensaje);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(rs);
                cerrar(ps);
                cerrar(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }
        return mensajes;
    }
    
    public int insertar(mensaje mensaje){
        String sql = "INSERT INTO mensajes (mensaje,autor,fecha) VALUES (?,?,CURRENT_TIME())";
        int registro = 0;
        try {
            this.conn = abrirConexion();
            this.ps = this.conn.prepareStatement(sql);
            this.ps.setString(1, mensaje.getMensaje());
            this.ps.setString(2, mensaje.getAutor());
            registro = this.ps.executeUpdate();

        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(ps);
                cerrar(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }
        return registro;
    }
    
    public int editar(mensaje mensaje){
        String sql = "UPDATE mensajes SET mensaje=?,autor=? WHERE id_mensaje=?";
        int registro = 0;
        try {
            this.conn = abrirConexion();
            this.ps = this.conn.prepareStatement(sql);
            this.ps.setString(1, mensaje.getMensaje());
            this.ps.setString(2, mensaje.getAutor());
            this.ps.setInt(3, mensaje.getId());
            registro = this.ps.executeUpdate();

        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(ps);
                cerrar(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }
        return registro;
    }
    
    public int eliminar(mensaje mensaje){
        String sql = "DELETE FROM mensajes WHERE id_mensaje=?";
        int registro = 0;
        try {
            this.conn = abrirConexion();
            this.ps = this.conn.prepareStatement(sql);
            this.ps.setInt(1, mensaje.getId());
            registro = this.ps.executeUpdate();

        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace(System.out);
        } finally {
            try {
                cerrar(ps);
                cerrar(conn);
            } catch (SQLException ex) {
                ex.printStackTrace(System.out);
            }

        }
        return registro;
    }
    
    
}
