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
public class User extends ConexionServer{
    private int idusuario;
    private String nombres;
    private String apellidos;
    private String cargo;
    private String usuario;
    private String clave;
    private String estado;
    
    Statement state;
    ResultSet result;

    public User() {
    }

    public User(int idusuario, String nombres, String apellidos, String cargo, String usuario, String clave, String estado) {
        this.idusuario = idusuario;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.cargo = cargo;
        this.usuario = usuario;
        this.clave = clave;
        this.estado = estado;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    //Función para buscar todos los usuarios
      public ArrayList<User> consultarRegistros() {
        ArrayList<User> userr = new ArrayList();

        try {

            String miQuery = "select * from Usuario order by idusuario desc";
            state = getConexion().createStatement();
            result = state.executeQuery(miQuery);
            while (result.next()) {
                userr.add(new User(result.getInt("idusuario"), result.getString("nombres"), 
                        result.getString("apellidos"), result.getString("cargo"), result.getString("usuario"),
                        result.getString("clave"), result.getString("estado")));

            }

        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return userr;
    }
      
      //Función para buscar todos los usuarios
      public ArrayList<User> sesion() {
        ArrayList<User> userr = new ArrayList();

        try {

            String miQuery = "select * from Usuario where usuario='"+usuario+"' and DecryptByPassphrase('clave',clave) ='"+clave+"'";
            state = getConexion().createStatement();
            result = state.executeQuery(miQuery);
            while (result.next()) {
                userr.add(new User(result.getInt("idusuario"), result.getString("nombres"), 
                        result.getString("apellidos"), result.getString("cargo"), result.getString("usuario"),
                        result.getString("clave"), result.getString("estado")));

            }

        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }

        return userr;
    }
      //Fcunción para insertar los datos del usuario
      public boolean insertardatos() {

        try {
            String miQuery =  "insert into Usuario(nombres,apellidos,cargo,usuario,clave,estado)"
                    +"values('"+nombres+"','"+apellidos+"','"+cargo+"','"+usuario+"',EncryptbyPassphrase('clave','"+clave+"'),'"+estado+"')";
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
            String miQuery = "delete from Usuario where idusuario='" + idusuario + "'";
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
            
            String pass="";
            if (clave.isEmpty()) {
                pass="";   
            }else
            {
                pass="clave=EncryptbyPassphrase('clave','"+clave+"'),";
            }
            String miQuery = "update Usuario set nombres='" + nombres + "',apellidos='" + apellidos + "',usuario='" + usuario + "',"+pass+"cargo='" + cargo + "',estado='" + estado + "' where idusuario=" + idusuario + ";";
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
    
}
