<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaSemilleros.aspx.cs" Inherits="WebApplication1.ConsultaSemilleros" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Informes cargados de su Semillero</h1>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f">
                <os-p key="8834a47e782911b35cf14b8ec9fe779f">Informes que a Cargados</os-p>
            </h3>
        </div>

        <div class="panel-body" data-replace-tmp-key="2232d4ace5cac75ee4791bbef442735e">
            <os-p key="2232d4ace5cac75ee4791bbef442735e"> 
              <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title"> Informe  </h3>

         
        </div>
        <div class="box-body">
         

            <div class="col-md-12">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#settings" data-toggle="tab" aria-expanded="false">Descripcion</a></li>
              <li class=""><a href="#Reporte" data-toggle="tab" aria-expanded="false">Reporte</a></li>
              <li class=""><a href="#activity" data-toggle="tab" aria-expanded="true">Editar</a></li>
            </ul>
            <div class="tab-content">
            
              <!-- /.tab-pane -->
                 <div class="tab-pane active" id="settings">
               <div class="form-horizontal ">
               <div class="box-body">
                   <div class="col-md-6">
                        <div class="form-group">
                         <label for="inputEmail3" class="col-sm-2 control-label">Nombre Proyecto</label>

                          <div class="col-sm-4">
                      <h5>
                          <asp:Label ID="NombreProyecto" runat="server" Text="Label" CssClass="panel-title"></asp:Label>
                      </h5> 
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label" style="height:auto;">Nombre Semillero</label>
                  <div class="col-sm-4">
                    <asp:label ID="NombreSemillero" runat="server"  ></asp:label>
                  </div>
                </div>
                        <div class="form-group">
                  <label for="labelfechaIni" class="col-sm-2 control-label" style="height:auto;">Fecha de Inicio</label>
                  <div class="col-sm-4">
                    <asp:label ID="LFechaInicio" runat="server"  ></asp:label>
                  </div>
                </div>
                       <div class="form-group">
                  <label for="labelObservaciones" class="col-sm-2 control-label" style="height:auto;">Observaciones</label>
                  <div class="col-sm-4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:label ID="LObservaciones" runat="server"  ></asp:label>
                  </div>
                </div>
                      
                   </div>
               <div class="col-md-6">
                    <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label" style="height:auto;">Fecha Radicado</label>
                  <div class="col-sm-10">
                    <asp:label ID="FechaRadicacion" runat="server"  ></asp:label>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label" style="height:auto;">Correo</label>
                  <div class="col-sm-10">
                    <asp:label ID="correo" runat="server"  ></asp:label>
                  </div>
                </div>
                    <div class="form-group">
                  <label for="Lobjetivoespe" class="col-sm-2 control-label" style="height:auto;">Objetivo Especifico</label>
                  <div class="col-sm-10">
                    <asp:label ID="LobjetivoEspe" runat="server"  ></asp:label>
                  </div>
                </div>
                   <div class="form-group">
                  <label for="Lanalisis" class="col-sm-2 control-label" style="height:auto;">Analisis</label>
                  <div class="col-sm-10">
                    <asp:label ID="LAnalisisDescrip" runat="server"  ></asp:label>
                  </div>
                </div>
                    <div class="form-group">
                  <label for="labeAnexos" class="col-sm-2 control-label" style="height:auto;">Anexos</label>
                  <div class="col-sm-4">
                    <asp:label ID="LAnexosDescrip" runat="server"  ></asp:label>
                  </div>
                </div>
               </div>
               

              </div>
              <!-- /.box-body -->
           
              <!-- /.box-footer -->
            </div>


              </div>

                 <div class="tab-pane" id="Reporte">
                
                   <div class="row">

            <div class="col-md-12">
                 <div class="form-group">
                <label>Cumplimiento</label>
                     <asp:TextBox ID="cumpli" runat="server" required ></asp:TextBox>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Objetivo especifico</label>
                     <textarea id="Objetivo" style="width:443px; height:143px;" runat="server" required></textarea>
              </div>
              <!-- /.form-group -->
              <div class="form-group">
                <label>Resultado Obtenido</label>
                <textarea id="Resultado_obteni" style="width:443px; height:143px;" runat="server" required></textarea>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
            <div class="col-md-6">
              <div class="form-group">
                <label>Producto</label>
                   <textarea id="Producto" style="width:443px; height:143px;" runat="server" required ></textarea>
              </div>
              <!-- /.form-group -->
              <div class="form-group">
                <label>Anexo</label>
                   <textarea id="Anexo" style="width:443px; height:143px;" runat="server" required></textarea>
              </div>
              <!-- /.form-group -->
            </div>
            <!-- /.col -->
            <div class="col-md-12">
                 <div class="form-group">
                <label>Observaciones</label>
                      <textarea id="Observ" style="width:960px; height:143px;" runat="server" required></textarea>
              </div>
            </div>

        <asp:Button ID="Button1" runat="server"   CssClass="btn btn-primary" Text="Guardar" OnClick="Button1_Click"></asp:Button>
          </div>
                 
          
        

              </div>
             

              <div class="tab-pane" id="activity">
              <div class="form-horizontal ">
               <div class="box-body">
               <div class="col-md-6">
                    <div class="form-group">
                         <label for="inputEmail3" class="col-sm-2 control-label">objetivo Especifico</label>
                          <div class="col-sm-4">
                          <textarea id="TObjetivo" rows="2" cols="20" style="width:389px;height:115px;" runat="server"></textarea>
                  </div>
                </div>
                     <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label" style="height:auto;">Observaciones</label>
                  <div class="col-sm-4">
                   <textarea id="TObservaciones" rows="2" cols="20" style="width:389px;height:115px;" runat="server"></textarea>  
                  </div>
                </div>
                </div>
               <div class="col-md-6">
                    <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label" style="height:auto;">Analisis</label>
                  <div class="col-sm-10">
                 <textarea id="TAnalisi" rows="2" cols="20" style="width:389px;height:115px;" runat="server"></textarea>
                       </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label" style="height:auto;">Anexos</label>
                  <div class="col-sm-10">
                     <textarea id="TAnexos" rows="2" cols="20" style="width:389px;height:115px;" runat="server"></textarea>
                  </div>
                </div>
               </div>
               


            <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Actualizar" OnClick="Button2_Click" UseSubmitBehavior="false"></asp:Button>

              </div>
              <!-- /.box-body -->
           
              <!-- /.box-footer -->
            </div>
              </div>
              <!-- /.tab-pane -->
              
             
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>





        <!-- /.box-footer-->
      </div>


                </os-p>
        </div>
    </div>

</asp:Content>
