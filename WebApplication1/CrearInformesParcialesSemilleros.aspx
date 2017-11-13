<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearInformesParcialesSemilleros.aspx.cs" Inherits="WebApplication1.CrearInformesParciales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        
         .contenedor-inputs {
            height: 1085px;
            width: 897px;
        }
        .auto-style2 {
            height: 744px;
            width: 1109px;
        }
        .panel-title1 {
            margin-top: 0;
            margin-bottom: 0;
            font-size: 16px;
            color: #5a5757;
        }
        .panel-primary1{border-color:#808080}
        .panel-heading1{color:#fff;background-color:#808080;border-color:#808080}

        .auto-style6 {
            width: 379px;
            height: 89px;
        }
        
        .auto-style9 {
            height: 374px;
            width: 607px;
        }
        .auto-style10 {
            height: 298px;
            margin-bottom: 0px;
            width: 1101px;
        }
        .img-circle{border-radius:50%}hr{margin-top:20px;margin-bottom:20px;border:0;border-top:1px solid #eee}

        .auto-style11 {
            width: 508px;
            height: 175px;
        }
        .auto-style12 {
            width: 529px;
        }
        .auto-style13 {
            width: 547px;
        }
        .auto-style14 {
            width: 446px;
            margin-left: 0px;
        }
        .auto-style15 {
            width: 381px;
            height: 79px;
        }
        .auto-style16 {
            width: 575px;
            height: 354px;
        }
        .auto-style17 {
            height: 354px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="auto-style2">

      <center>
            
                  <div class="panel panel-primary" style="width: 1097px; height: 552px;">
            <div class="panel-heading">
              <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f"><os-p key="8834a47e782911b35cf14b8ec9fe779f">INFORME PARCIAL DE SEMILLERO</os-p></h3>

            </div>
                      
	                  &nbsp;&nbsp;&nbsp;
                      
	                  <asp:Image ID="Image4" src="Imagenes/avance2.jpg" class="img-circle" runat="server" Height="16px" Width="17px"  />
                      &nbsp;&nbsp;&nbsp;
                      <asp:Image ID="Image5"  src="Imagenes/avance2.jpg" class="img-circle" Visible="false" runat="server" Height="16px" Width="17px" />
&nbsp;&nbsp;&nbsp;
                      <form id="msform">

                          <div class="panel-body" data-replace-tmp-key="2232d4ace5cac75ee4791bbef442735e">

			                  <center>

            <%-- paneles1 --%>
                  <div class="panel panel-primary" id="panel1" runat="server" style="width: 1071px; height: 374px;">
            <div class="panel-heading1">
                <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f">
                    <os-p key="8834a47e782911b35cf14b8ec9fe779f">Datos básicos del proyecto</os-p></h3>
                            </div>
                      <div>
                           <br />
                            <table class="auto-style10">
                          <tr>
                              <td class="auto-style9">
 <form>

  
                                  &nbsp;&nbsp;

  
                                  <asp:Label ID="Label8" runat="server" Text="FECHA RADICACIÓN"></asp:Label>
                                  &nbsp;<asp:TextBox ID="TextBox2fecharadica" placeholder="DD/MM/AA" runat="server" type="text"  required="required" Height="21px" Width="143px"></asp:TextBox>
                                  &nbsp;<asp:Label ID="Label9" runat="server" Text="NOMBRE DEL SEMILLERO"></asp:Label>
                                  &nbsp;<asp:TextBox ID="TextBox3nombreSEMI" type="text" name="nombre" runat="server" required Height="22px" Width="122px"></asp:TextBox>
                                  <br />
&nbsp;&nbsp;  
                                  <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" class="input-80" Text="FACULTAD"></asp:Label>
        &nbsp;&nbsp; <asp:TextBox ID="TextBox2facultad"  name="facultad"  type="text" runat="server" required Height="22px" Width="122px"></asp:TextBox>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" class="input-80" Text="LINEA DE INVESTIGACIÓN"></asp:Label>
                                  &nbsp;&nbsp;&nbsp;&nbsp;
                                  &nbsp;<asp:TextBox ID="TextBox2linea" type="text" name="linea" runat="server" Height="22px" Width="122px"></asp:TextBox>
                                  &nbsp;<br />
                                  <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" class="input-80" Text="CEDULA"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:TextBox ID="TextBox2cedula" type="text" runat="server" required Height="22px" Width="122px"></asp:TextBox> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" class="input-80" placeholder="DD/MM/AA"  Text="FECHA INICIO"></asp:Label>	
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2fechaI" placeholder="DD/MM/AA" cssclass="auto-style6" type="text" runat="server"  required="required" Height="22px" Width="122px"></asp:TextBox>
   
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                                  <br />
   
                                  <br />
                                  <br />
                                  <br />
                                  <br />
   
                              </td>
                              <td>
                                  &nbsp;&nbsp;&nbsp;
                                  <asp:Label ID="Label10" runat="server" Text="TITULO DEL PROYECTO DEL SEMILLERO"></asp:Label>
                                  &nbsp;<asp:TextBox ID="TextBox4TITULOPS" type="text" name="titulo" runat="server" required Height="21px" Width="139px"></asp:TextBox>
                                  <br />
                                  <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" class="input-80" Text="GRUPO DE INVESTIGACIÓN"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1GP"  cssclass="auto-style6" type="text" runat="server" Height="22px" Width="139px"></asp:TextBox>  
                                  <br />
                                  <br />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" class="input-80" Text="NOMBRE COORD DEL SEMILLERO"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2NOMinvestigador"  cssclass="auto-style6"  type="text" name="investigador" runat="server" required Height="22px" Width="141px"></asp:TextBox> 
                                  <br />
                                  <br />
&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label6" runat="server" class="input-80" Text="CORREO"></asp:Label>
                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="TextBox2correo"  cssclass="auto-style6" name="correo" runat="server" required Height="22px" Width="138px"></asp:TextBox>
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                                  <br />
                              </td>
                              
                               
                              <form>
                              
                               
</form>
                    </tr>
                </table>
  
        <asp:Button ID="Button1next" name="Siguiente"  runat="server" Text="Siguiente" Height="38px" Width="138px" OnClick="Button1_Click" />
   
			
                      </div>
                      </div>
       </center>

          <center>

  <%-- panel 2 --%>
                  <div class="panel panel-primary" id="panel2" visible="false" runat="server" style="width: 1071px; height: 443px;">
            <div class="panel-heading1">
              <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f"><os-p key="8834a47e782911b35cf14b8ec9fe779f">Analisis y Anexos</os-p></h3>
               </div>
                      <table class="auto-style4">
                          <tr>
                              <td class="auto-style16">
<h3 class="auto-style13">Diligencie los siguientes datos para cada uno de los objetivos del proyecto aprobado por la Universidad, manteniendo los mismos enunciados del proyecto original</h3>
	<center class="auto-style12">

                            <asp:Label ID="Label1p" class="input-80" runat="server" Text="OBJETIVO ESPECÍFICO"></asp:Label>    
                                <br />
	   <textarea id="TextareaObjetivos" class="auto-style11" type="text" runat="server"></textarea>
                            <br />
        
	</center>
                              </td>
                              <td class="auto-style17">
                                   <center class="auto-style14">
<h3>Análisis de los resultados obtenidos </h3>
                                 
                                       <br />
                                 
                                  <asp:Label ID="Label2p" runat="server" Text="ANÁLISIS"></asp:Label>
	                                   <br />
	                              <br />
	<textarea ID="TextareaAnalisis" cssclass="auto-style6" runat="server" class="auto-style6"></textarea><br />
                                  <br />
		<asp:Label ID="Label3l" runat="server" Text="ANEXOS Y SOPORTES"></asp:Label>
        
			                           <br />
        
			                      <br />
        
			<textarea ID="TextareaSoporte" name="TextareaSoporte" runat="server" class= auto-style15></textarea>
</center>
                              </td>

                          </tr>
                      </table>


                      <br />
                      <asp:Button ID="Button2" runat="server" Text="Atras" Width="90px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:Button ID="Button1" runat="server" Text="Guardar"  Width="90px" OnClick="Button1_Click1" OnClientClick="alert('¿Esta seguro que quiere enviar el informe?')" />


          </div>

                  </center>



                     </div>
   
		
                      </div>
          
          </center>







                     
</asp:Content>
