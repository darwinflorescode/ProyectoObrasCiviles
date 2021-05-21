/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*Funcion que me permite loguearme*/
$(document).ready(function() {
    $('#Usuario').focus();

    /*Funcion que me permite loguearme en el sistema*/
    $('#form_acceso').submit(function(e) {
        e.preventDefault();

        var errores = '';
        if ($('#Usuario').val() == '') {
            errores += "* Usuario Requerido\n";
            $('#Usuario').focus();

        }
        if ($('#Password').val() == '') {
            errores += "* Contraseña Requerida\n";
            $('#Usuario').focus();

        }

        if (errores != '') {
            toastr.error('', 'Usuario y Contraseña son obligatorios');

            errores = '';
            return;

        } else {

            var parametros = $(this).serialize();
            $.ajax({
                type: "POST",
                url: "Login",
                data: parametros,
                beforeSend: function(objeto) {
                    toastr.warning('', '¡Cargando!  Espere un momento...');
                },
                success: function(data) {

                    if (data.trim() == 'Login') {

                        toastr.success(null, '¡Bienvenido! '+$('#Usuario').val());

                        setTimeout(function() {
                            window.location = './principal/';
                        }, 1500);

                    } else {

                        toastr.error('', 'Usuario y/o Contraseña Incorrecta');

                    }


                }

            });
        }

    });
});

