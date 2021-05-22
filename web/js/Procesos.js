/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {


    $('#form_user').submit(function (e) {
        e.preventDefault();
        var errores = ""
        if ($('#nombres_n').val() == '') {
            errores += "<li>Nombres</li>";
        }
        if ($('#apellidos_n').val() == '') {
            errores += "<li>Apellidos</li>";

        }
        if ($('#cargo_n').val() == '') {
            errores += "<li>Cargo</li>";

        }

        if ($('#usuario_n').val() == '') {
            errores += "<li>Usuario</li>";

        }
        if ($('#clave_n').val() == '') {
            errores += "<li>Contraseña</li>";

        }
        if ($('#estado_n').val() == '') {
            errores += "<li>Estado</li>";

        }


        if (errores !== "") {
            $('.add-brand-messages_u').html("<div class='alert alert-danger alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                    "<div class='icon'><span class='mdi mdi-close-circle-o'></span></div>" +
                    "<div class='message'>" +
                    "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                    "<strong>&iexcl;Validacion de Datos!</strong> &iexcl;Complete campos Obligatorios! <ul>" + errores + "</ul></div></div>");
            errores = '';
            return;
        } else {

            var parametros = $(this).serialize();

            $("#save").button('loading');
            $(":submit").attr("disabled", true);
            $.ajax({
                type: "POST",
                url: "../insertardatos?user",
                data: parametros,
                beforeSend: function (objeto) {
                    $('.add-brand-messages_u').html("<div class='alert alert-warning alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                            "<div class='icon'><span class='mdi mdi-alert-triangle'></span></div>" +
                            "<div class='message'>" +
                            "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                            "<strong>&iexcl;Cargando!</strong> &iexcl;Espere un momento por favor!...</div></div>");
                },

                success: function (datos) {

                    if (datos.trim() == "guardado") {
                        cargar_vista();
                        $("#form_user")[0].reset();

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

                    $("#save").button('reset');
                    $(":submit").attr("disabled", false);

                }

            });
        }

    });




    $('#form_user_edit').submit(function (e) {
        e.preventDefault();
        var errores = ""

        if ($('#nombres_e').val() == '') {
            errores += "<li>Nombres</li>";
        }
        if ($('#apellidos_e').val() == '') {
            errores += "<li>Apellidos</li>";

        }
        if ($('#cargo_e').val() == '') {
            errores += "<li>Cargo</li>";

        }

        if ($('#usuario_e').val() == '') {
            errores += "<li>Usuario</li>";

        }

        if ($('#estado_e').val() == '') {
            errores += "<li>Estado</li>";

        }


        if (errores !== "") {
            $('.add-brand-messages_u').html("<div class='alert alert-danger alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                    "<div class='icon'><span class='mdi mdi-close-circle-o'></span></div>" +
                    "<div class='message'>" +
                    "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                    "<strong>&iexcl;Validacion de Datos!</strong> &iexcl;Complete campos Obligatorios! <ul>" + errores + "</ul></div></div>");
            errores = '';
            return;
        } else {

            var parametros = $(this).serialize();

            $("#save_e").button('loading');
            $(":submit").attr("disabled", true);
            $.ajax({
                type: "POST",
                url: "../actualizardatos?user",
                data: parametros,
                beforeSend: function (objeto) {
                    $('.add-brand-messages_u').html("<div class='alert alert-warning alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                            "<div class='icon'><span class='mdi mdi-alert-triangle'></span></div>" +
                            "<div class='message'>" +
                            "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                            "<strong>&iexcl;Cargando!</strong> &iexcl;Espere un momento por favor!...</div></div>");
                },

                success: function (datos) {

                    if (datos.trim() == "guardado") {
                        cargar_vista();


                        $('.add-brand-messages_u').html("<div class='alert alert-success alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                                "<div class='icon'><span class='mdi mdi-check'></span></div>" +
                                "<div class='message'>" +
                                "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                                "<strong>&iexcl;Bien!</strong> &iexcl;Datos Actualizados Correctamente!</div></div>");


                    } else {
                        alert("Ha ocurrido un error" + datos);
                    }

                    window.setTimeout(function () {
                        $(".alert-success").fadeTo(500, 0).slideUp(500, function () {
                            $(this).remove();
                        });
                    }, 4000); // /.alert

                    $("#save_e").button('reset');
                    $(":submit").attr("disabled", false);

                }

            });
        }

    });
    
    
    //Función par guardar datos del clientes
    
        $('#form_').submit(function (e) {
        e.preventDefault();
        var errores = ""
        if ($('#descripcion_n').val() == '') {
            errores += "<li>Descripcion de la Empresa</li>";
        }
        if ($('#nombrecontacto_n').val() == '') {
            errores += "<li>Nombre Persona de Contacto</li>";

        }
   



        if (errores !== "") {
            $('.add-brand-messages_u').html("<div class='alert alert-danger alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                    "<div class='icon'><span class='mdi mdi-close-circle-o'></span></div>" +
                    "<div class='message'>" +
                    "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                    "<strong>&iexcl;Validacion de Datos!</strong> &iexcl;Complete campos Obligatorios! <ul>" + errores + "</ul></div></div>");
            errores = '';
            return;
        } else {

            var parametros = $(this).serialize();

            $("#save").button('loading');
            $(":submit").attr("disabled", true);
            $.ajax({
                type: "POST",
                url: "../insertardatos?client",
                data: parametros,
                beforeSend: function (objeto) {
                    $('.add-brand-messages_u').html("<div class='alert alert-warning alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                            "<div class='icon'><span class='mdi mdi-alert-triangle'></span></div>" +
                            "<div class='message'>" +
                            "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                            "<strong>&iexcl;Cargando!</strong> &iexcl;Espere un momento por favor!...</div></div>");
                },

                success: function (datos) {

                    if (datos.trim() == "guardado") {
                        cargar_vista();
                        $("#form_")[0].reset();

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

                    $("#save").button('reset');
                    $(":submit").attr("disabled", false);

                }

            });
        }

    });
    
    
    //Función par guardar datos del clientes
    
        $('#form_edit').submit(function (e) {
        e.preventDefault();
        var errores = ""
        if ($('#descripcion_e').val() == '') {
            errores += "<li>Descripcion de la Empresa</li>";
        }
        if ($('#nombrecontacto_e').val() == '') {
            errores += "<li>Nombre Persona de Contacto</li>";

        }
   



        if (errores !== "") {
            $('.add-brand-messages_u').html("<div class='alert alert-danger alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                    "<div class='icon'><span class='mdi mdi-close-circle-o'></span></div>" +
                    "<div class='message'>" +
                    "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                    "<strong>&iexcl;Validacion de Datos!</strong> &iexcl;Complete campos Obligatorios! <ul>" + errores + "</ul></div></div>");
            errores = '';
            return;
        } else {

            var parametros = $(this).serialize();

            $("#save_e").button('loading');
            $(":submit").attr("disabled", true);
            $.ajax({
                type: "POST",
                url: "../actualizardatos?client",
                data: parametros,
                beforeSend: function (objeto) {
                    $('.add-brand-messages_u').html("<div class='alert alert-warning alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                            "<div class='icon'><span class='mdi mdi-alert-triangle'></span></div>" +
                            "<div class='message'>" +
                            "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                            "<strong>&iexcl;Cargando!</strong> &iexcl;Espere un momento por favor!...</div></div>");
                },

                success: function (datos) {

                    if (datos.trim() == "guardado") {
                        cargar_vista();
                     

                        $('.add-brand-messages_u').html("<div class='alert alert-success alert-icon alert-icon-border alert-dismissible' role='alert'>" +
                                "<div class='icon'><span class='mdi mdi-check'></span></div>" +
                                "<div class='message'>" +
                                "<button class='close' type='button' data-dismiss='alert' aria-label='Close'><span class='mdi mdi-close' aria-hidden='true'></span></button>" +
                                "<strong>&iexcl;Bien!</strong> &iexcl;Datos Actualizados Correctamente!</div></div>");


                    } else {
                        alert("Ha ocurrido un error" + datos);
                    }

                    window.setTimeout(function () {
                        $(".alert-success").fadeTo(500, 0).slideUp(500, function () {
                            $(this).remove();
                        });
                    }, 4000); // /.alert

                    $("#save_e").button('reset');
                    $(":submit").attr("disabled", false);

                }

            });
        }

    });
    
    
    
    
    
    
    
    
    
    

});



    