<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="WebApplication1.PerfilUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            height: 323px;
            width: 583px;
        }
        .auto-style6 {
            display: block;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: none;
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            border: 1px solid #d2d6de;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
        .auto-style7 {
            width: 212px;
        }
        .auto-style8 {
            width: 179px;
        }
        .auto-style9 {
            width: 189px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
         
            <div class="contenedor-inputs">
              <center class="auto-style3">
             

             
                  <div class="panel panel-primary" style="width: 586px">
            <div class="panel-heading">
              <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f"><os-p key="8834a47e782911b35cf14b8ec9fe779f">Datos Personales</os-p></h3>

            </div>
            
                <table  class="auto-style4" >
                    <tr>
                        <td class="auto-style7">
                            <br />

         
                <asp:Image ID="Image4" runat="server" Height="164px" class="img-circle" alt="User Image" Width="169px" />

          
            </td>
                        <td class="auto-style9">
                            <asp:Label ID="Labelnombreusuario0" runat="server" Text="Nombres:" ></asp:Label>
                            <br />
                            <asp:TextBox ID="Textboxnombre" name="nombre" readonly = 'true'  type="text"   runat="server" cssclass="auto-style6" required="required" pattern="^[a-zA-Z ]*$" Height="22px" Width="148px"  ></asp:TextBox>
                            <asp:Label ID="Labelcedula0" runat="server" type="text" Text="Número Cedula:"></asp:Label>
                            <br />
                            <asp:TextBox ID="Textboxcedula" runat="server" type="text"  readonly = 'true' name="cedula"
                                 cssclass="auto-style6" required="required" pattern="[0-9]{10}" title="ESTE CAMPO VAN SOLO NUMEROS" Height="21px" Width="148px"></asp:TextBox>
                            <asp:Label ID="Labelcorreo0" runat="server" Text="Correo:"></asp:Label>
                            <br />
                            <asp:TextBox ID="Textboxcorreo" runat="server" type="email"  readonly = 'true' name="correo"
                               cssclass="auto-style6" required="required" Height="23px" Width="148px" ></asp:TextBox>
                            
                             <asp:Label ID="Labelusuario0" runat="server" Text="Usuario:"></asp:Label>
                            <br />
                            <asp:TextBox type="text" name="usuario"
                                cssclass="auto-style6" required="required"  readonly = 'true' ID="Textboxusuario" runat="server" Height="26px" Width="148px"></asp:TextBox>
                       <asp:Label ID="Label2" class="input-80" runat="server" Text="Cambiar Contraseña:"></asp:Label>
                            <br />
                           <asp:TextBox type="password" ID="texboxcontraseña1" runat="server"    name="clave"
                                placeholder="Contraseña"  readonly = 'true' cssclass="auto-style6" required="required" Height="21px" Width="148px"></asp:TextBox>
                        </td>
                        <td class="auto-style8">
                            <asp:Label ID="Labelapellidos" runat="server" type="text"  readonly = 'true' Text="Apellidos:" title="ESTE CAMPO VAN SOLO LETRAS"></asp:Label>
                            <br />
                            <asp:TextBox ID="Textboxapellido" runat="server" name="apellidos"
                                type="text"  readonly = 'true' cssclass="auto-style6" required="required" pattern="^[a-zA-Z ]*$" Height="23px" Width="147px" ></asp:TextBox>

                            <asp:Label ID="Labelnacionalidad" runat="server" Text="Nacionalidad:"></asp:Label>
                            <br />
                            <asp:TextBox ID="Texboxnacionalidad" runat="server"  readonly = 'true' name="nacionalidad"
                                 cssclass="auto-style6" required="required" pattern="^[a-zA-Z ]*$" title="ESTE CAMPO VAN SOLO LETRAS" Height="23px" Width="148px"></asp:TextBox>

                              <asp:Label ID="Labelfecha"  Cssclass="input-80"  runat="server" Text="Fecha Nacimiento:"></asp:Label>
                            <br />
                          
                           <asp:TextBox ID="TextBoxfacha" readonly = 'true' cssclass="auto-style6" runat="server" Height="24px" Width="146px"></asp:TextBox>
                            <asp:Label ID="Labeltelefono"   runat="server" Text="Telefono:"></asp:Label>
                            <asp:TextBox ID="Textboxtelefono" type="text" readonly = 'true' runat="server" name="telefono"
                                 cssclass="auto-style6" required="required" pattern="[0-9]{10}" title="ESTE CAMPO VAN SOLO NUMERO" Height="26px" Width="146px"></asp:TextBox>
                          
                            <asp:Label ID="Labelcontraseña1" class="input-80" runat="server" Text="Repita la Contraseña:"></asp:Label>
                            <br />
                            <asp:TextBox type="password" ID="Texboxcontraseña2" runat="server" name="clave"
                                placeholder="Contraseña"  readonly = 'true' CssClass="auto-style6" required="required" Height="21px" Width="148px"></asp:TextBox>
                        </td>
                    </tr>

                </table>
                      <div class="panel-body" data-replace-tmp-key="2232d4ace5cac75ee4791bbef442735e"><os-p key="2232d4ace5cac75ee4791bbef442735e"></os-p>
                <asp:Button ID="Button1editar" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Editar" Width="68px" />
                <asp:Button ID="Button2guardar" runat="server" CssClass="btn btn-primary" Text="Guardar" OnClick="Button2_Click" />
                      </div>
          </div>
                </center>
              
              

                <br />
              
              
              <center>
              </center>

             
              
              
                <br />
              


                <br />
                <p class="estiloletra1">
                    <asp:Button ID="Button1" runat="server" Text="Volver" class="btn btn-block btn-danger btn-lg" Height="41px" OnClick="Button1_Click1" Width="121px"/></p>
            </div>
</asp:Content>
