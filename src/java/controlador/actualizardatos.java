/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cliente;
import modelo.User;

/**
 *
 * @author DARWINFLORES
 */
public class actualizardatos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            if (request.getParameter("user") != null) {
                User u = new User();
                u.setIdusuario(Integer.parseInt(request.getParameter("id_user")));
                u.setNombres(request.getParameter("nombres_e"));
                u.setApellidos(request.getParameter("apellidos_e"));
                u.setCargo(request.getParameter("cargo_e"));
                u.setUsuario(request.getParameter("usuario_e"));
                u.setClave(request.getParameter("clave_e"));
                u.setEstado(request.getParameter("estado_e"));

                if (u.modificarDatos()) {
                    out.println("guardado");
                } else {
                    out.println("error1");
                }

            } else if (request.getParameter("client") != null) {
                Cliente client = new Cliente();
                client.setIdcliente(Integer.parseInt(request.getParameter("id")));
                client.setDescripcion(request.getParameter("descripcion_e"));
                client.setNombreContacto(request.getParameter("nombrecontacto_e"));
              

                if (client.modificarDatos()) {
                    out.println("guardado");
                } else {
                    out.println("error1");
                }

            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
