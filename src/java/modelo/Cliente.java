/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DARWINFLORES
 */
public class Cliente extends ConexionServer {

    private int idcliente;
    private String descripcion;
    private String nombreContacto;

    Statement state;
    ResultSet result;

    public Cliente() {
    }

    public Cliente(int idcliente, String descripcion, String nombreContacto) {
        this.idcliente = idcliente;
        this.descripcion = descripcion;
        this.nombreContacto = nombreContacto;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getNombreContacto() {
        return nombreContacto;
    }

    public void setNombreContacto(String nombreContacto) {
        this.nombreContacto = nombreContacto;
    }
    
    
    
        public ArrayList<Cliente> consultarRegistros() {
        ArrayList<Cliente> client = new ArrayList();

        try {

            String miQuery = "select * from Cliente order by idcliente desc";
            state = getConexion().createStatement();
            result = state.executeQuery(miQuery);
            while (result.next()) {
                client.add(new Cliente(result.getInt("idcliente"), result.getString("descripcion"), 
                        result.getString("nombrecontacto")));

            }

        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return client;
    }
        
              //Fcunción para insertar los datos del usuario
      public boolean insertardatos() {

        try {
            String miQuery =  "insert into Cliente(descripcion,nombrecontacto)"
                    +"values('"+descripcion+"','"+nombreContacto+"')";
            int estado = 0;
            state = getConexion().createStatement();
            estado = state.executeUpdate(miQuery);
            if (estado == 1) {
                return true;
            } else {
                return false;
            }

        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }
      
        //Función para eliminar datos
        public boolean eliminarDatos() {

        try {
            String miQuery = "delete from Cliente where idcliente='" + idcliente + "'";
            int estado = 0;
            state = getConexion().createStatement();
            estado = state.executeUpdate(miQuery);
            if (estado == 1) {
                return true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }
        
          public boolean modificarDatos() {

        try {
            
           
            String miQuery = "update Cliente set descripcion='" + descripcion + "',nombrecontacto='" + nombreContacto + "' where idcliente=" + idcliente + ";";
            int estado = 0;
            state = getConexion().createStatement();
            estado = state.executeUpdate(miQuery);
            if (estado == 1) {
                return true;
            }

        } catch (SQLException ex) {
            Logger.getLogger(Cliente.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;
    }
        

}
