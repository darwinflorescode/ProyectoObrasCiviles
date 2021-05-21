<%-- 
    Document   : Encabezado
    Created on : May 14, 2021, 9:35:08 PM
    Author     : DARWINFLORES
--%>
<%

    HttpSession obj = request.getSession(false);

    String nombre = (String) obj.getAttribute("NombreCompleto");
    String usuario = (String) obj.getAttribute("usuario");
    String clave = (String) obj.getAttribute("clave");
    if (usuario == null && clave == null && nombre == null) {

        response.sendRedirect("../");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
   <link rel="icon" href="../Librerias/1.png" type="image/x-icon">
    <title>Proyecto Obras Civiles</title>
    <link rel="stylesheet" type="text/css" href="../Lib/perfect-scrollbar.css">
  <link rel="stylesheet" type="text/css" href="../iconos/css/material-design-iconic-font.min.css">
 <link rel="stylesheet" type="text/css" href="../Lib/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" type="text/css" href="../Lib/jqvmap.min.css">
    <link rel="stylesheet" type="text/css" href="../Librerias/Datatables/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../Librerias/Datatables/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="../Lib/app.css" type="text/css">
  </head>
  <body>
    <div class="be-wrapper be-fixed-sidebar">
      <nav class="navbar navbar-expand fixed-top be-top-header">
        <div class="container-fluid">
          <div class="be-navbar-header"><a class="navbar-brand" href="../principal/">
          <img src="../Librerias/1.png" width="150px">
          </a>
          </div>
          <div class="page-title"><span align="center"><b>Sistema De Control de
                  Obras Civiles y Proyección del Consumo de Materiales - (SCOCPCM</b>)</span></div>
          <div class="be-right-navbar">
            <ul class="nav navbar-nav float-right be-user-nav">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-expanded="false"><img src="../Lib/avatar.png" alt="Avatar"><span class="user-name">Darwin Flores</span></a>
                <div class="dropdown-menu" role="menu">     
                  <div class="user-info">
                      <div class="user-name"><%= nombre%></div>
                    <div class="user-position online">Conectado</div>
                  </div><a class="dropdown-item" href="#"><span class="icon mdi mdi-face"></span>Cuenta</a>
                  <a class="dropdown-item" href="#"><span class="icon mdi mdi-settings"></span>Configuración</a>
                  <a class="dropdown-item" href="../Close" onclick="return confirm('¿Está seguro de Salir?');"><span class="icon mdi mdi-power"></span>Cerrar Sesión</a>
                </div>
              </li>
            </ul>
          
              </li>
            
            </ul>
          </div>
        </div>
      </nav>
      <div class="be-left-sidebar">
        <div class="left-sidebar-wrapper"><a class="left-sidebar-toggle" href="../principal/">Inicio</a>
          <div class="left-sidebar-spacer">
            <div class="left-sidebar-scroll ps ps--active-y">
              <div class="left-sidebar-content">
                <ul class="sidebar-elements">
                  <li class="divider">Menu</li>
                  <li class="active"><a href="../principal/"><i class="icon mdi mdi-home"></i><span>Inicio</span></a>
                  </li>
                  <li class="parent"><a href="#"><i class="icon mdi mdi-account-add"></i><span>Usuarios</span></a>
                    <ul class="sub-menu">
                        <li><a href="../usuarios/">  Administrar <span class="icon mdi mdi-plus-circle-o"></span></a>
                      </li>
                    
                    </ul>
                  </li>
                
                
                  
                </ul>
              </div>
            <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; height: 463px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 407px;"></div></div></div>
          </div>
        </div>
      </div>
      <div class="be-content">
        <div class="main-content container-fluid">
