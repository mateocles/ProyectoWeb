<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Form2.aspx.cs" Inherits="WebApplication1.Form2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 >Informes cargados de su Semillero</h1>
    <center>
        <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title" data-replace-tmp-key="8834a47e782911b35cf14b8ec9fe779f"><os-p key="8834a47e782911b35cf14b8ec9fe779f">Informes que a Cargados</os-p></h3>
            </div>

            <div class="panel-body" data-replace-tmp-key="2232d4ace5cac75ee4791bbef442735e"><os-p key="2232d4ace5cac75ee4791bbef442735e"> 
                <asp:GridView ID="GridView1" runat="server" CssClass="box-body table-responsive no-padding"  Height="111px" Width="452px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    
                </asp:GridView>

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
                  <th>Fecha radicacion</th>
                  <th>Semillero</th>
                  <th>Fecha inicio</th>
                  <th>Titulo</th>
                  <th>Objetivo especifico</th>
                  <th>Observacion</th>
                  <th>Analisis</th>
                  <th>Anexos</th>
                   <th>Detalle </th>
                </tr>
                   <asp:ListView ID="Informe" runat="server">
                       
                    <ItemTemplate>
                            <tr>
                             <td>
                                <asp:Label runat="server" Text='<%#Eval("Fecha de Radicacion") %>'> </asp:Label> 
                             </td>
                             <td>
                                <asp:Label runat="server" Text='<%#Eval("Nombre del Semillero") %>'></asp:Label>
                             </td>
                             <td>
                                <asp:Label runat="server" Text='<%#Eval("Fecha de Inicio") %>'></asp:Label>
                             </td>
                             <td>
                                 <asp:Label runat="server" Text='<%#Eval("Titulo del Proyecto") %>'></asp:Label>

                             </td>
                             <td>
                                <asp:Label runat="server" Text='<%#Eval("Objetivo Especifico") %>'></asp:Label>
                             </td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("Observaciones") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("Analisis") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%#Eval("Anexos") %>'></asp:Label>
                                </td>
                                <td>
                                  <asp:LinkButton runat="server" CommandArgument='<%#Eval("idinformeSemillero")%>' onCommand="VerDetalle">Editar</asp:LinkButton>
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


     
       
     
</asp:Content>
