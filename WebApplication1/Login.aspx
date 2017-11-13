<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <link href="CSS/estilos.css" rel="stylesheet" />
    <link rel="icon" href="Imagenes/favicon.ico" />
    <link rel="shortcut icon" href="Imagenes/favicon.ico" />
    <title>Informes Parciales</title>
    <script>
        function nobackbutton() {
            window.location.hash = "no-back-button";
            window.location.hash = "Again-No-back-button" //chrome
            window.onhashchange = function () { window.location.hash = "no-back-button"; }
        }

    </script>
    
</head>
<body onload="nobackbutton()">

    <br />
    <div>
        
        <br />
    <h1>Presentación Informes Parciales</h1>
        <form id="form1" runat="server">

            <div>

                <h2 > Iniciar Sesión </h2>
                <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                <asp:TextBox ID="TexUsuario" placeholder="&#128272; NombreUsuario"  runat="server" Height="40px" Width="250px"></asp:TextBox>
                 <br />
                 <br />
                <asp:Label ID="Label2" runat="server" Text="  Contraseña:"></asp:Label>
                <asp:TextBox ID="Textpassword" type="password" placeholder="&#128272; Contraseña" runat="server" Height="40px" Width="250px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="IniciarSesion" runat="server" OnClick="IniciarSesion_Click"  Text="INGRESAR" Height="40px" Width="250px" />
                <br />
                <asp:Label ID="Resultado" runat="server" Text="" Visible="false"></asp:Label>
                
            </div>
        </form>
        <br />
       

       <p class="estiloletra"> <a href="http://200.21.7.94/" class="url" target="_blank">
            <img src="Imagenes/logo_giecom.png"/></a>
      <a href="http://www.udla.edu.co/v10/" class="udla" target="_blank">
           <img src="Imagenes/logo_amazonia.gif" />
        </a></p>
         <br />
      <p class="estiloreservado"><a>Universidad de la Amanazonia 2016 - Todos los derechos reservados</a></p>
    </div>

</body>
</html>
