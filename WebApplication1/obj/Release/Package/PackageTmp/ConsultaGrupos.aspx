<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ConsultaGrupos.aspx.cs" Inherits="WebApplication1.ConsultaGrupos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <h1 >Informes cargados a su Grupos de Investigacion</h1>
    <center>
        <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f"><os-p key="8834a47e782911b35cf14b8ec9fe779f">Informes que a Cargados</os-p></h3>
            </div>

            <div class="panel-body" data-replace-tmp-key="2232d4ace5cac75ee4791bbef442735e"><os-p key="2232d4ace5cac75ee4791bbef442735e"> 
               
               
                    <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"></h3>

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;">
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tr>
                  <th>Nombre del Proyecto</th>
                  <th>Investigadores</th>
                  <th>Fecha Entrega</th>
                  <th>Metodologia</th>
                  <th>Presupuesto</th>
                  <th>Objetivos</th>
             
                   <th>Detalle </th>
                </tr>
                   <asp:ListView ID="Informe" runat="server">
                       
                    <ItemTemplate>
                            <tr>
                             <td>
                                <asp:Label runat="server" Text='<%#Eval("Nombre del Proyecto") %>'> </asp:Label> 
                             </td>
                             <td>
                                <asp:Label runat="server" Text='<%#Eval("Investigadores") %>'></asp:Label>
                             </td>
                             <td>
                                <asp:Label runat="server" Text='<%#Eval("Fecha de Entrega") %>'></asp:Label>
                             </td>
                             <td>
                                 <asp:Label runat="server" Text='<%#Eval("Metodologia") %>'></asp:Label>

                             </td>
                             <td>
                                <asp:Label runat="server" Text='<%#Eval("Presupuesto") %>'></asp:Label>
                             </td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("Objetivos") %>'></asp:Label>
                                </td>
                                
                                <td>
                                  <asp:LinkButton runat="server" CommandArgument='<%#Eval("Id_proyectoGrupo")%>' onCommand="VerDetalle">Editar</asp:LinkButton>
                                </td>
                </tr>
                    </ItemTemplate>
                </asp:ListView>

            
               
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
               

                </os-p></div>
          </div>
   </center
                </os-p></div>
          </div>
   </center>
     
</asp:Content>
