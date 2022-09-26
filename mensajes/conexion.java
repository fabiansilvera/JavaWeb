package com.fabian.mensajes;
import java.sql.*;
public class conexion {
    private static final String url = "jdbc:mysql://localhost/java?serverTimezone=UTC";
    private static final String usser = "root";
    private static final String password = ;
    
    public static Connection abrirConexion() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url,usser,password);
    }
    
    public static void cerrar(ResultSet rs) throws SQLException{
        rs.close();
    }
    public static void cerrar(PreparedStatement ps) throws SQLException{
        ps.close();
    }
    public static void cerrar(Connection conn) throws SQLException{
        conn.close();
    }
}
