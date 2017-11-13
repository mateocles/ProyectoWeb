<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CrearinformesParcialesGrupos.aspx.cs" Inherits="WebApplication1.InformesParcialesGrupos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
          .panel-primary1{border-color:#808080}
        .panel-heading1{color:#fff;background-color:#808080;border-color:#808080}

         .img-circle{border-radius:50%}hr{margin-top:20px;margin-bottom:20px;border:0;border-top:1px solid #eee}
        .auto-style8 {
            width: 432px;
            height: 85px;
        }
        .auto-style9 {
            width: 316px;
        }
        .auto-style10 {
            width: 1054px;
        }
        .auto-style11 {
            width: 358px;
        }
        .auto-style12 {
            width: 405px;
            height: 101px;
        }
        .auto-style13 {
            width: 329px;
        }
        .auto-style14 {
            width: 316px;
            height: 280px;
        }
        .auto-style15 {
            width: 358px;
            height: 280px;
        }
        .auto-style16 {
            width: 1054px;
            height: 280px;
        }
        </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <center>
    <div class="panel panel-primary">
            <div class="panel-heading">
            <center>
              <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f"><os-p key="8834a47e782911b35cf14b8ec9fe779f"> Datos básicos del proyecto de investigación</os-p></h3>       
                </center>
                    </div>
        <center>
<asp:Image ID="Image1" src="Imagenes/avance2.jpg" class="img-circle" runat="server" Height="16px" Width="17px"></asp:Image>
<asp:Image ID="Image2"  src="Imagenes/avance2.jpg" Visible="false" class="img-circle" runat="server" Height="16px" Width="17px"></asp:Image>
<asp:Image ID="Image3"  src="Imagenes/avance2.jpg" Visible="false" class="img-circle" runat="server" Height="16px" Width="17px"></asp:Image>
        </center>
        <br />
        <%--panel1--%>
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
    <br />
		                <asp:Label ID="Label1" runat="server" Text="NOMBRE DEL PROYECTO"></asp:Label>
                         
                                  <asp:TextBox ID="TextBoxnombreproyecto" runat="server" type="text"  required="required" Height="27px" Width="278px"></asp:TextBox>
                            <br />
                            <br />
			
			        
		           <asp:Label ID="Label2" runat="server" Text="OTROS INVESTIGADORES"></asp:Label>
                                     <br />
		<textarea id="Investigadores" runat="server" class=auto-style8></textarea><br />
&nbsp;<br />
			<asp:Label ID="Label3" runat="server" Text="NOMBRE DEL GRUPO DE INVESTIGACION"></asp:Label>
                            <br />
           <asp:TextBox ID="TextBoxnombreGI" runat="server" type="text"  required="required" Height="27px" Width="278px"></asp:TextBox>
			                <br />
			                <br />
      
                              </td>
                              <td class="auto-style11">
                             <br />
         <asp:Label ID="Label5" runat="server" Text="NOMBRE DEL INVESTIGADOR"></asp:Label>
            <asp:TextBox ID="TextBoxnombreinvestigador" type="text"  required="required" runat="server" Height="27px" Width="278px"></asp:TextBox>
                                  <br />
                            <br />
                         <asp:Label ID="Label6" runat="server" Text="FACULTAD"></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBoxfacultad" runat="server" type="text"  required="required" Height="27px" Width="278px"></asp:TextBox>
                                  <br />
                            <br />
                            
			<asp:Label ID="Label7" runat="server" Text="PROGRAMA"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxprograma" runat="server" type="text"  required="required" Height="27px" Width="278px"></asp:TextBox>
                                  <br />
                                  <br />
			<asp:Label ID="Label4" runat="server" Text="LINEA DE INVESTIGACION"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
			<asp:TextBox ID="TextBoxlinea" runat="server" type="text"  required="required" Height="27px" Width="278px"></asp:TextBox>                                
                                  <br />
                                  <br />
                              </td>
                              
                            
                    </tr>
                          <tr>
                              <td class="auto-style9">
                                  &nbsp;</td>
                              <td class="auto-style11">
                                  &nbsp;</td>
                              
                            
                    </tr>
                </table>
  
<asp:Button ID="Button1next" name="Siguiente"  runat="server" Text="Siguiente" Height="38px" Width="138px" OnClick="Button1_Click" />
   
                      </div>
                      </div>
          

<%--        panel2--%>

        <div class="panel panel-primary" Visible="false" id="panel2" runat="server" style="width: 1071px; height: 374px;">
            <div class="panel-heading1">
                <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f">
                    <os-p key="8834a47e782911b35cf14b8ec9fe779f">Resultados</os-p></h3>
                            </div>
                      <div>
                           <br />
                          <center>

                        
                            <table class="auto-style10">
                          <tr>
                              <td class="auto-style13">
   <label for="objetivos">OBJETIVOS</label><br />
			<textarea id="TextareaobjetivosPG"  runat="server" class="auto-style12"></textarea>
			                      <br />
			<label for="metodologia">METODOLOGÍA</label>
			                      <br />
			<textarea id="Textareametodologia" runat="server" class="auto-style12"></textarea>
			
	
                                                              
                              </td>
                              <td class="auto-style11">


			<label for="resultados">RESULTADOS Y DISCUSIÓN</label>
			<textarea id="Textarearesultados" runat="server" class="auto-style12" rows="5" cols="10"></textarea>
                              </td>

                              
                            
                    </tr>
                </table>   </center>
                          <center>
<asp:Button ID="Button1pal2" runat="server" Text="Atras"  Height="38px" Width="138px" OnClick="Button1pal2_Click"></asp:Button>
<asp:Button ID="Button2pal2" name="Siguiente"  runat="server" Text="Siguiente" Height="38px" Width="138px" OnClick="Button2pal2_Click"  />
   
                          </center>
 
                      </div>
                      </div>
  <%--      panel3--%>

         <div class="panel panel-primary" Visible="false" id="panel3" runat="server" style="width: 1071px; height: 374px;">
            <div class="panel-heading1">
                <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f">
                    <os-p key="8834a47e782911b35cf14b8ec9fe779f">Impactos</os-p></h3>
                            </div>
                      <div>
                           <br />
                          <center>
                            <table class="auto-style16">
                          <tr>
                              <td class="auto-style14">
                                  <label for="impacto">IMPACTOS</label><br />
            <textarea id="impacto" runat="server" class="auto-style12" rows="5" cols="10"></textarea>
			<label for="estrategia">ESTRATEGÍAS DE DIVULGACIÓN</label>
			<textarea id="Textareaestrategia" runat="server"  class="auto-style12" rows="5" cols="10"></textarea>
		
			
                                  <br />
                                  <br />
		
			
                              </td>
                              <td class="auto-style15">
            <label for="presupuesto">PRESUPUESTO</label>
			                      <br />
			<textarea id="Textareapresupuesto" runat="server" class="auto-style12" rows="5" cols="10"></textarea>
         
			                      <br />
                                  FECHA ENTREGA&nbsp;
                                <asp:TextBox ID="TextBoxfechaini" runat="server"></asp:TextBox> 
<asp:TextBox ID="TextBox1" runat="server" placeholder="DD/MM/AA" Visible="false"></asp:TextBox>
                                  <br />
                                  <br />
                              </td>
                              
                            
                    </tr>
                </table> 
                                </center>
                          <center>
<asp:Button ID="Button2pal3" runat="server" Text="Atras"  Height="38px" Width="138px" OnClick="Button2pal3_Click"></asp:Button>
<asp:Button ID="Button1pal3" name="Siguiente"  runat="server" Text="Enviar" Height="38px" Width="138px" OnClick="Button1pal3_Click" OnClientClick="alert('¿Esta seguro que quiere enviar el informe?')"  />
   
                          </center>
 
                      </div>
                      </div>
          </div>
   

</asp:Content>
