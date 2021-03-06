<%-- 
    Document   : mostrar
    Created on : May 19, 2021, 2:58:50 PM
    Author     : DARWINFLORES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.User"%>
<%

    User p = new User();
    ArrayList<User> usua = new ArrayList();

    usua = p.consultarRegistros();


%>
<div class="card-body table-responsive">
    <table class="table table-striped table-hover table-fw-widget dataTable no-footer" id="table6" role="grid" aria-describedby="table3_info">
        <thead class="btn-primary">
            <tr>
                <th>ID</th>
                <th>Nombre Completo</th>
                <th>Cargo</th>
                <th>Usuario</th>
                <th>Estado</th>
                <th class="actions">Acciones</th>
            </tr>
        </thead>
        <tbody>

            <%   for (User u : usua) {

            %>

            <tr>
                <td><%= u.getIdusuario()%></td>
                <td class="user-avatar"> <img src="../Lib/avatar.png" alt="Avatar"><%= (u.getNombres() + " " + u.getApellidos())%></td>
                <td><%= u.getCargo()%></td>
                <td><%= u.getUsuario()%></td>
                <%
                    String clase = null;
                    if (u.getEstado().equals("Activo")) {
                        clase = "success";
                    } else {
                        clase = "danger";
                    }
                %>
                <td><span class="badge badge-pill badge-<%=clase%>"><%= u.getEstado()%></span></td>
                <td class="actions" width="10%"> 
                    <div class="btn-group btn-space">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown"><i class="icon icon-left mdi mdi-eye"></i> <span class="icon-dropdown mdi mdi-chevron-down"></span></button>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" href="javascript: void()" onclick="eliminaruser(<%=u.getIdusuario()%>);"><span class="icon mdi mdi-delete"></span> Eliminar</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item md-trigger" href="javascript: void()" onclick="editar_usuario(<%=u.getIdusuario()%>)" data-toggle="modal" data-target="#modal_editar"><span class="icon mdi mdi-edit"></span> Editar</a>
                        </div>
                    </div>
                </td>

        <input type="hidden" id="nombres_e<%= u.getIdusuario()%>" value="<%= u.getNombres()%>">

        <input type="hidden" id="apellidos_e<%= u.getIdusuario()%>" value="<%= u.getApellidos()%>">

        <input type="hidden" id="cargo_e<%= u.getIdusuario()%>" value="<%= u.getCargo()%>">


        <input type="hidden" id="usuario_e<%= u.getIdusuario()%>" value="<%= u.getUsuario()%>">


        <input type="hidden" id="clave_e<%= u.getIdusuario()%>" value="<%= u.getClave()%>">

        <input type="hidden" id="estado_e<%= u.getIdusuario()%>" value="<%= u.getEstado()%>">

        </tr>
        <%
            }

        %>



        </tbody>
    </table>
</div>
<script type="text/javascript">
    $(document).ready(function () {

//-initialize the javascript
        App.init();
        App.dataTables();
        
        
           $.fn.niftyModal('setDefaults', {
        overlaySelector: '.modal-overlay',
        contentSelector: '.modal-content',
        closeSelector: '.modal-close',
        classAddAfterOpen: 'modal-show'
    });

    });
    
    
</script>

