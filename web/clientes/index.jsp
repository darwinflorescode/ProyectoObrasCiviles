<%-- 
    Document   : index
    Created on : May 21, 2021, 3:10:56 PM
    Author     : DARWINFLORES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="../principal/Encabezado.jsp" %>

<script>
    function cargar_vista() {

        $("#loader").fadeIn('slow');
        $.ajax({
            type: 'GET',
            url: '../clientes/mostrar.jsp',
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
                <div class="title" ><a href="javascript: void()" class="btn btn-space btn-success md-trigger" data-modal="modal"><i class="icon mdi mdi-plus"> </i></a>  Administración de Clientes</div>

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
            <h2 class="modal-title">NUEVO CLIENTE <span class="icon mdi mdi-account-box-o"></span></h2>
            <button class="close modal-close" type="button" data-dismiss="modal" aria-hidden="true"><span class="mdi mdi-close"></span></button>
        </div>
        <div class="modal-body form">
            <form class="formNormal" id="form_" autocomplete="off" method="POST"  novalidate="">
                <div align="center">
                    <b>DATOS DEL CLIENTE</b>
                </div>
                <hr>
                <div class="add-brand-messages_u"></div>
                 
                    <div class="form-group">

                        <label for="descripcion_n"><b>Descripción de la Empresa: </b> <span class="text-danger">*</span></label>
                        <textarea class="form-control" data-parsley-minlength="2" name="descripcion_n"  id="descripcion_n" required="" placeholder="Descripción de la Empresa"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="nombrecontacto"><b>Nombre Contacto:</b><span class="text-danger">*</span></label>
                        <input class="form-control" data-parsley-minlength="2" name="nombrecontacto_n"  id="nombrecontacto_n" required="true" type="text" placeholder="Nombre de la persona de contacto de la empresa">
                    </div>
            
                    <div class="form-group">
                        <div class="modal-footer">
                            <button class="btn btn-secondary modal-close" type="button" data-dismiss="modal"> <span class="icon mdi mdi-close"></span> Cancelar</button>
                            <button class="btn btn-success" type="submit" id="save" ><span class="ticon mdi mdi-save"></span> Guardar</button>
                        </div>
                    </div>
              
            </form>

        </div>


    </div>
</div>
<!--Fin formulario de insertar datos-->
<div class="modal-overlay"></div>

<!--Este es el formulario de modificación de datos del usuario-->
<div class="modal fade colored-header colored-header-primary"  id="modal_editar" tabindex="-1" role="dialog" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="width: 100% !important">
        <div class="modal-content">
            <div class="modal-header modal-header-colored" align="center">
                <h2 class="modal-title">MODIFICAR DATOS DEL CLIENTE <span class="icon mdi mdi-account-box-o"></span></h2>
                <button class="close modal-close" type="button" data-dismiss="modal" aria-hidden="true"><span class="mdi mdi-close"></span></button>
            </div>
            <div class="modal-body form">
                <form class="formNormal" id="form_edit" autocomplete="off" method="POST"  novalidate="">
                    <div align="center">
                        <b>DATOS DEL CLIENTE</b>
                    </div>
                    <hr>
                    <div class="add-brand-messages_u"></div>
                    <input type="hidden" name="id" id="id">
                     <div class="form-group">

                        <label for="descripcion_n"><b>Descripción de la Empresa: </b> <span class="text-danger">*</span></label>
                        <textarea class="form-control" data-parsley-minlength="2" name="descripcion_e"  id="descripcion_e" required="" placeholder="Descripción de la Empresa"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="nombrecontacto"><b>Nombre Contacto:</b><span class="text-danger">*</span></label>
                        <input class="form-control" data-parsley-minlength="2" name="nombrecontacto_e"  id="nombrecontacto_e" required="true" type="text" placeholder="Nombre de la persona de contacto de la empresa">
                    </div>

                 
              
                      
                        <div class="form-group">
                            <div class="modal-footer">
                                <button class="btn btn-secondary modal-close" type="button" data-dismiss="modal"> <span class="icon mdi mdi-close"></span> Cancelar</button>
                                <button class="btn btn-success" type="submit" id="save_e" ><span class="ticon mdi mdi-save"></span> Guardar</button>
                            </div>
                        </div>
                    </div>
                </form>

            </div>


        </div>
    </div>
</div>
<!--Fin formulario de modificar datos-->
<div class="modal-overlay"></div>

<%@include file="../principal/Pie.jsp" %>

<script type="text/javascript">



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
    //Elimianr Usuario
    function eliminar(id) {
        if (confirm("Estimado Usuario.\n¿Realmente desea eliminar este Cliente?\n\n ---------------------------------------\nAdvertencia:\n-Se eliminaran todos los datos relacionados")) {
            $.ajax({
                type: "GET",
                url: "../delete?client&&id=" + id,
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



    function editar(id)
    {

        $("#modal_editar").on('shown.bs.modal', function () {
            $('#descripcion_e').focus();
        });


        var descripcion = $('#descripcion_e' + id).val();
        var nombrecontacto = $('#nombrecontacto_e' + id).val();

        $('#descripcion_e').val(descripcion);
        $('#nombrecontacto_e').val(nombrecontacto);
    
        $('#id').val(id);
    }

</script>

