<%-- 
    Document   : mostrar
    Created on : May 21, 2021, 3:11:05 PM
    Author     : DARWINFLORES
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Cliente p = new Cliente();
    ArrayList<Cliente> Client = new ArrayList();

    Client = p.consultarRegistros();


%>
<div class="card-body table-responsive">
    <table class="table table-striped table-hover table-fw-widget dataTable no-footer" id="table6" role="grid" aria-describedby="table3_info">
        <thead class="btn-primary">
            <tr>
                <th>ID</th>
                <th>Nombre Empresa</th>
                <th>Nombre Persona Encarga</th>

                <th class="actions">Acciones</th>
            </tr>
        </thead>
        <tbody>

            <%   for (Cliente u : Client) {

            %>

            <tr>
                <td><%= u.getIdcliente()%></td>
                <td><%= u.getDescripcion()%></td>
                <td><%= u.getNombreContacto()%></td>

                <td class="actions" width="10%"> 
                    <div class="btn-group btn-space">
                        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown"><i class="icon icon-left mdi mdi-eye"></i> <span class="icon-dropdown mdi mdi-chevron-down"></span></button>
                        <div class="dropdown-menu" role="menu">
                            <a class="dropdown-item" href="javascript: void()" onclick="eliminar(<%=u.getIdcliente()%>);"><span class="icon mdi mdi-delete"></span> Eliminar</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item md-trigger" href="javascript: void()" onclick="editar(<%=u.getIdcliente()%>)" data-toggle="modal" data-target="#modal_editar"><span class="icon mdi mdi-edit"></span> Editar</a>
                        </div>
                    </div>
                </td>

        <input type="hidden" id="descripcion_e<%= u.getIdcliente()%>" value="<%= u.getDescripcion()%>">

        <input type="hidden" id="nombrecontacto_e<%= u.getIdcliente()%>" value="<%= u.getNombreContacto()%>">



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

