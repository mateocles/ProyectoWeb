<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="WebApplication1.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Formulario de Registro </title>


    <link href="CSS/estilo1.css" rel="stylesheet" />
    <link rel="icon" href="Imagenes/favicon.ico" />
    <link rel="shortcut icon" href="Imagenes/favicon.ico" />
    <script src="scripts/ValidacionFor.js"></script>
    <script src="scripts/jquery.js"></script>
    <style type="text/css">
       
       
    </style>
</head>

<body>

    <form id="form1" runat="server" method="post" class="auto-style3" onsubmit="return validar();">
        <div>

            <h2 class="form-titulo">Formulario de Registro </h2>
            <div class="contenedor-inputs">
                <table class="auto-style4" >
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Labelnombreusuario" runat="server" Text="Nombres:" ></asp:Label>
                            <br />
                            <asp:TextBox ID="nombre" name="nombre" placeholder="Nombres" type="text" runat="server" CssClass="input-80" required="required" pattern="^[a-zA-Z ]*$"  ></asp:TextBox>
                            <asp:Label ID="Labelcedula" runat="server" type="text" Text="Número Cedula:"></asp:Label>
                            <br />
                            <asp:TextBox ID="cedula" runat="server" type="text" name="cedula"
                                placeholder="CedulaCiudadania" CssClass="input-80" required="required" pattern="[0-9]{10}" title="ESTE CAMPO VAN SOLO NUMEROS"></asp:TextBox>
                            <asp:Label ID="Labelcorreo" runat="server" Text="Correo:"></asp:Label>
                            <br />
                            <asp:TextBox ID="correo" runat="server" type="email" name="correo"
                                placeholder="Correo electronico" CssClass="input-80" required="required"></asp:TextBox>
                            
                             <asp:Label ID="Labelusuario" runat="server" Text="Usuario:"></asp:Label>
                            <br />
                            <asp:TextBox type="text" name="usuario"
                                placeholder="Usuario" CssClass="input-80" required="required" ID="usuario" runat="server"></asp:TextBox>
                             <br />
                       <asp:Label ID="Label1" class="input-80" runat="server" Text="Contraseña:"></asp:Label>
                            <br />
                           <asp:TextBox type="password" ID="clave1" runat="server" name="clave"
                                placeholder="Contraseña" class="input-80" required="required"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            <asp:Label ID="Labelapellidos" runat="server" type="text" Text="Apellidos:" title="ESTE CAMPO VAN SOLO LETRAS"></asp:Label>
                            <br />
                            <asp:TextBox ID="apellidos" runat="server" name="apellidos"
                                placeholder="Apellidos" type="text" CssClass="input-80" required="required" pattern="^[a-zA-Z ]*$" ></asp:TextBox>

                            <asp:Label ID="Labelnacionalidad" runat="server" Text="Nacionalidad:"></asp:Label>
                            <br />
                            <asp:TextBox ID="nacionalidad" runat="server" name="nacionalidad:"
                                placeholder="Nacionalidad" class="input-80" required="required" pattern="^[a-zA-Z ]*$" title="ESTE CAMPO VAN SOLO LETRAS"></asp:TextBox>
                              <br />

                              <asp:Label ID="Labelfecha"  Cssclass="input-80"  runat="server" Text="Fecha Nacimiento:"></asp:Label>
                            <br />
                          
                            <asp:TextBox type="date" ID="fechanacimiento" Cssclass="input-80"  runat="server" name="fechanacimiento" step="1" min="1950-01-01" max="2015-12-31" value="Y-m-d" required="required"></asp:TextBox>
                            <br />
                            <asp:Label ID="Labeltelefono" runat="server" Text="Telefono:"></asp:Label>
                            <asp:TextBox ID="telefono" type="text" runat="server" name="telefono"
                                placeholder="Telefono" CssClass="input-80" required="required" pattern="[0-9]{10}" title="ESTE CAMPO VAN SOLO NUMERO"></asp:TextBox>
                          
                            <br />
                            <asp:Label ID="Labelcontraseña1" class="input-80" runat="server" Text="Repita la Contraseña:"></asp:Label>
                            <br />
                            <asp:TextBox type="password" ID="clave" runat="server" name="clave"
                                placeholder="Contraseña" class="input-80" required="required"></asp:TextBox>
                        </td>
                    </tr>

                </table>
              
              
              

                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="clave1" ControlToValidate="clave" ErrorMessage="La contraseña no coincide"></asp:CompareValidator>
              
              
              

                <br />
                <asp:Button ID="RegistrarUsuario" type="reset" runat="server" Height="40px"  Text="Registrar" Width="152px" required="required" OnClick="RegistrarUsuario_Click"/>
              


                <br />
                <p class="estiloletra1"><a href="Login.aspx">Volver</a></p>
            </div>

        </div>
    </form>
    <br />


</body>
</html>
