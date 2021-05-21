<%-- 
    Document   : index
    Created on : May 14, 2021, 9:44:15 PM
    Author     : DARWINFLORES
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../principal/Encabezado.jsp" %>

<script>
    function cargar_vista() {

        $("#loader").fadeIn('slow');
        $.ajax({
            type: 'GET',
            url: '../usuarios/mostrar.jsp',
            beforeSend: function (objeto) {
                $('#loader').html('<img src="../Lib/loading.gif"> Cargando...');
            },
            success: function (data) {
                $(".vertabla").html(data).fadeIn('slow');
                $('#loader').html('');

            }
        });


    }
    ;
</script>
<div class="row">
    <div class="col-12 col-lg-12">
        <div class="card card-table">
            <div class="card-header">
                <div class="tools dropdown">
                    <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
                        <span class="icon mdi mdi-more-vert"></span></a>
                    <div class="dropdown-menu dropdown-menu-right" role="menu">
                        <a class="dropdown-item" href="#"><span class="icon mdi mdi-print"></span> Imprimit</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#"><span class="icon mdi mdi-download"></span> Pdf</a>
                    </div>
                </div>
                <div class="title" ><a href="javascript: void()" class="btn btn-space btn-success md-trigger" data-modal="modal"><i class="icon mdi mdi-plus"> </i></a>  Mantenimiento de Usuarios</div>

            </div>
            <div class="add-brand-messages_u"></div>
            <div id="loader" style="position: absolute; text-align: center; top: 320px;  width: 100%;display:none;"></div>


            <div class="vertabla"></div>


        </div>
    </div>
</div>

</div>
<!--Este es el formulario de ingreso de datos del usuario-->
<div class="modal-container colored-header colored-header-success custom-width modal-effect-15  full-width" id="modal">
    <div class="modal-content" >


        <div class="modal-header modal-header-colored" align="center">
            <h2 class="modal-title">NUEVO USUARIO <span class="icon mdi mdi-account-box-o"></span></h2>
            <button class="close modal-close" type="button" data-dismiss="modal" aria-hidden="true"><span class="mdi mdi-close"></span></button>
        </div>
        <div class="modal-body form">
            <form class="formNormal" id="form_user" autocomplete="off" method="POST"  novalidate="">
                <div align="center">
                    <b>DATOS PERSONALES DEL USUARIO</b>
                </div>
                <hr>
                <div class="add-brand-messages_u"></div>
                <div class="row no-margin-y">
                    <div class="form-group col-sm-6">

                        <label for="nombres_n"><b>Nombres: </b> <span class="text-danger">*</span></label>
                        <input class="form-control" data-parsley-minlength="2" name="nombres_n" id="nombres_n" required="true" type="text" placeholder="Nombres">
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="apellidos_n"><b>Apellidos:</b><span class="text-danger">*</span></label>
                        <input class="form-control" data-parsley-minlength="2" name="apellidos_n"  id="apellidos_n" required="true" type="text" placeholder="Apellidos">
                    </div>
                </div>

                <div class="form-group">
                    <label for="cargo_n"><b>Cargo: </b><span class="text-danger">*</span></label>
                    <input class="form-control" name="cargo_n" data-parsley-minlength="2" id="cargo_n" required="true" type="text" placeholder="Cargo del usuario">
                </div>
                <div align="center">
                    <b>DATOS DE INGRESO AL SISTEMA</b>
                </div>
                <hr>
                <div class="row no-margin-y">
                    <div class="form-group col-sm-6">

                        <label for="usuario_n"><b>Usuario: </b> <span class="text-danger">*</span></label>
                        <input class="form-control" id="usuario_n" name="usuario_n" data-parsley-minlength="2" required="true" type="text" placeholder="Usuario">
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="clave_n"><b>Contraseña: </b><span class="text-danger">*</span></label>
                        <input class="form-control" id="clave_n" name="clave_n" required="true" type="password" placeholder="Contraseña">
                    </div>

                </div>
                <div class="row">
                    <div class="form-group col-sm-6">
                        <label for="estado_n"><b>Estado: </b><span class="text-danger">*</span></label>
                        <select class="form-control" id="estado_n" name="estado_n" required="">
                            <option value="">Seleccione...</option>
                            <option value="Activo">Activo</option>
                            <option value="Inactivo">Inactivo</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-6">
                        <div class="modal-footer">
                            <button class="btn btn-secondary modal-close" type="button" data-dismiss="modal"> <span class="icon mdi mdi-close"></span> Cancelar</button>
                            <button class="btn btn-success" type="submit" id="save" ><span class="ticon mdi mdi-save"></span> Guardar</button>
                        </div>
                    </div>
                </div>
            </form>

        </div>


    </div>
</div>
<div class="modal-overlay"></div>

<%@include file="../principal/Pie.jsp" %>

<script type="text/javascript">
    $.fn.niftyModal('setDefaults', {
        overlaySelector: '.modal-overlay',
        contentSelector: '.modal-content',
        closeSelector: '.modal-close',
        classAddAfterOpen: 'modal-show'
    });



    $(document).ready(function () {

        $('form').parsley();
    });


</script>
<script type="text/javascript">

    $(document).ready(function () {
        cargar_vista();
    });

</script>
<script>
    function eliminaruser(id) {
        if (confirm("Estimado Usuario.\n¿Realmente desea eliminar este usuario?\n\n ---------------------------------------\nAdvertencia:\n-Se eliminaran todos los datos relacionados")) {
            $.ajax({
                type: "GET",
                url: "../delete?user&&id=" + id,
                beforeSend: function (objeto) {
                    $('.add-brand-messages_u').html("<div class='alert alert-warning alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                            "<div class='icon'><span class='mdi mdi-alert-triangle'></span></div>" +
                            "<div class='message'>" +
                            "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                            "<strong>&iexcl;Cargando!</strong> &iexcl;Espere un momento por favor!...</div></div>");
                },
                success: function (datos) {
                    if (datos.trim() == "eliminado") {

                        cargar_vista();
                        $('.add-brand-messages_u').html("<div class='alert alert-success alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                                "<div class='icon'><span class='mdi mdi-check'></span></div>" +
                                "<div class='message'>" +
                                "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                                "<strong>&iexcl;Bien!</strong> &iexcl;Datos Almacenados Correctamente!</div></div>");

                    } else {
                        alert("Ha ocurrido un error" + datos);
                    }
                    
                     window.setTimeout(function () {
                        $(".alert-success").fadeTo(500, 0).slideUp(500, function () {
                            $(this).remove();
                        });
                    }, 4000); // /.alert

                }

            });

        } else {
            return false;
        }
    }
    ;

</script>


