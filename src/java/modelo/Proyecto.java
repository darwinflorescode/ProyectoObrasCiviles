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
public class Proyecto extends ConexionServer {

    private int idproyecto;
    private String codigo;
    private String nombre;
    private String descripcion;
    private String tipoObra;
    private String lugar;
    private String fechaInicio;
    private String fechaFin;
    private double presupuesto;
    private Cliente cliente;
    Statement state;
    ResultSet result;

    public Proyecto() {
    }

    public Proyecto(int idproyecto, String codigo, String nombre, String descripcion, String tipoObra, String lugar, String fechaInicio, String fechaFin, double presupuesto, Cliente cliente) {
        this.idproyecto = idproyecto;
        this.codigo = codigo;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.tipoObra = tipoObra;
        this.lugar = lugar;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.presupuesto = presupuesto;
        this.cliente = cliente;
    }

//    //Función para buscar todos los Proyectos
//    public ArrayList<Proyecto> consultarRegistros() {
//        ArrayList<Proyecto> proyect = new ArrayList();
//
//        try {
//
//            String miQuery = "select Proyecto.*, Cliente.* from Proyecto, Cliente order by idproyecto desc";
//            state = getConexion().createStatement();
//            result = state.executeQuery(miQuery);
//            while (result.next()) {
//                proyect.add(new Proyecto(result.getInt("idproyecto"), result.getString("codigo"),
//                        result.getString("nombres"), result.getString("descripcion"), result.getString("tipoobra"),
//                        result.getString("lugar"), result.getString("fechainicio"),result.getString("fechafin"),result.getDouble(presupuesto)));
//
//            }
//
//        } catch (SQLException ex) {
//            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return proyect;
//    }

}
