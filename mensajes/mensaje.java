
package com.fabian.mensajes;

public class mensaje {
    private int id;
    private String mensaje;
    private String autor;
    private String fecha;
    
    // Objeto donde utilizar sistema crux y mostrar el mensaje
    public mensaje() {
    }

    public mensaje(int id) {
        this.id = id;
    }

    public mensaje(String mensaje, String autor) {
        this.mensaje = mensaje;
        this.autor = autor;
    }

    public mensaje(int id, String mensaje, String autor) {
        this.id = id;
        this.mensaje = mensaje;
        this.autor = autor;
    }

    public mensaje(int id, String mensaje, String autor, String fecha) {
        this.id = id;
        this.mensaje = mensaje;
        this.autor = autor;
        this.fecha = fecha;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("mensaje{");
        sb.append("id = ").append(id);
        sb.append(", mensaje = ").append(mensaje);
        sb.append(", autor = ").append(autor);
        sb.append(", fecha = ").append(fecha);
        sb.append('}');
        return sb.toString();
    }
    
}
