﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="QRBookWeb.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title></title>
<meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, minimum-scale=1.0">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" >
<link rel="stylesheet" href="assets/css/estilos.css">
    <script type="text/javascript">
        /*function iniciado(datos) {
            //console.log("xD");
            //console.log(datos);
            var JSONobj = JSON.parse(datos);
            //console.log(JSONobj);
            window.localStorage.setItem('correo', JSONobj.correo);
            window.localStorage.setItem('usuario', JSONobj.usuario);
            window.localStorage.setItem('password', JSONobj.password);
            window.localStorage.setItem('nombre', JSONobj.nombre);
            window.localStorage.setItem('apellido1', JSONobj.apellido1);
            window.localStorage.setItem('apellido2', JSONobj.apellido2);
            window.localStorage.setItem('foto', JSONobj.foto);
            location.replace("index.aspx");
        }*/

        /*function iniciado() {
            window.localStorage.setItem('user', '1');
            location.replace("index.aspx");
        }*/

    </script>
</head>

<body class="hidden">
    <!--PRECARGA-->
    <div class="centrado" id="onload">
            <div class="loadingio-spinner-blocks-a73ijrg8fkr">
                <div class="ldio-hetvfw5zgq">
                    <div style='left: 38px; top: 38px; animation-delay: 0s'></div>
                    <div style='left: 80px; top: 38px; animation-delay: 0.125s'></div>
                    <div style='left: 122px; top: 38px; animation-delay: 0.25s'></div>
                    <div style='left: 38px; top: 80px; animation-delay: 0.875s'></div>
                    <div style='left: 122px; top: 80px; animation-delay: 0.375s'></div>
                    <div style='left: 38px; top: 122px; animation-delay: 0.75s'></div>
                    <div style='left: 80px; top: 122px; animation-delay: 0.625s'></div>
                    <div style='left: 122px; top: 122px; animation-delay: 0.5s'></div>
                </div>
            </div>
        </div>


<!--CABECERA-->
        <header>
            <a name="Inicio"/>
            <nav id="nav">
                <div class="contenedor-nav ">
                    <div class="logo">
                        <img alt="logo" src="img/Logo.png" width="100px"/>
                    </div>
                    <div class="enlaces" id="enlaces">
                        <a href="index.aspx#Inicio" id="enlace-inicio" class="btn-header">Inicio</a>
                        <a href="index.aspx#Informacion" id="enlace-info" class="btn-header">Información</a>
                        <a href="index.aspx#Desarrollo" id="enlace-app" class="btn-header">Desarrollo</a>
                        <a href="index.aspx#Equipo" id="enlace-equipo" class="btn-header">Conocenos</a>
                         <!--<div class="dropdown" id="dropdown">
                        <input type="image"  src="img/user-img.png" height="60px"  width="50px" id="user"  onclick="location.href = 'user.aspx';" /> 
                          <div class="dropdown-content">
                            <a href="user.aspx">Perfil</a>
                            <a onclick="salir()">Salir</a>
                          </div>
                        </div> -->
                        <input id="registro" class="btn-registro" type="button" onclick="location.href='registro.aspx';" value="Registro" />
                        <input id="inicio" class="btn-inicio" type="button" onclick="location.href = 'login.aspx';" value="Inicio de sesion" style="margin-right: 15px" />
                       <!--<a href="#" id="enlace-contacto" class="btn-header">Inicio</a>--> 
                    </div>
                    <div class="icono" id="open">
                        <span>&#9776;</span>
                    </div>
                </div>
            </nav>
        </header>

<div class="separacion">
    <form id="form1" runat="server" class="formulario">
    <h1>Login</h1>
     <div class="contenedor">
     
         <div class="input-contenedor">
         <i class="fas fa-envelope icon"></i>
         <input runat="server" type="text" id="user" placeholder="Usuario o Correo Electronico" maxlength="50">
         
         </div>
         
         <div class="input-contenedor">
        <i class="fas fa-key icon"></i>
         <input runat="server" type="password" id="pass" placeholder="Contraseña" maxlength="30">
         
         </div>
         <asp:Button id="btnLogin" class="button" runat="server" Text="Iniciar sesión" OnClick="Login_Click"/>
         <p>Al registrarte, aceptas nuestras Condiciones de uso y Política de privacidad.</p>
         <p>¿No tienes una cuenta? <a class="link" href="registro.aspx">Registrate </a></p>
     </div>
        <script src="assets/js/main.js"></script>
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/filtro.js"></script>
        <script src="assets/js/user.js"></script>

    </form>
    </div>
</body>

</html>
