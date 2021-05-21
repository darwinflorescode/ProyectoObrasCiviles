/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author DARWINFLORES
 */
public class ConexionServer {
    private String username = "usuarioSQL";
    private String password = "123";
    private String host = "DARWINFLORES-PC";
    private String port = "1433";
    private String database = "ProyectoObrasCiviles";
    private String classname = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private String url = "jdbc:sqlserver://" + host + ":" + port + ";databaseName=" + database+";";
    private Connection conn;
    
       public ConexionServer() {
        try {
            Class.forName(classname);
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            System.out.println("Error " + e);
        } catch (SQLException e) {
            System.out.println("Error " + e);
        }

    }
    
    public Connection getConexion()
    {
        return conn;
    }
    
    
}
