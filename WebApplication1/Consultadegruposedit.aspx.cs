using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using System.Data;
namespace WebApplication1
{
    public partial class Consultadegruposedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InformesparcilesGrupos informes = new InformesparcilesGrupos();
                if (Session["Informe"] == null)
                {
                    Response.Redirect("ConsultaGrupo.aspx");
                }
                DataTable Datos = informes.consulta_informe(Session["Informe"].ToString());
                NombreProyecto.Text = Datos.Rows[0]["Nombre Proyecto"].ToString();
                NombreSemillero.Text = Datos.Rows[0]["Nombre investigador"].ToString();
                FechaRadicacion.Text = Datos.Rows[0]["Otros investigadores"].ToString();
                correo.Text = Datos.Rows[0]["NombredeGI"].ToString();
                LFechaInicio.Text = Datos.Rows[0]["Linea Ingestigacion"].ToString();
                LObservaciones.Text = Datos.Rows[0]["Facultad"].ToString();
                LAnexosDescrip.Text = Datos.Rows[0]["Metologia"].ToString();
                LobjetivoEspe.Text = Datos.Rows[0]["Objetivo"].ToString();
                LAnalisisDescrip.Text = Datos.Rows[0]["Resultados Discusion"].ToString();
                LEstrategias.Text = Datos.Rows[0]["Estrategias"].ToString();
                LPresupuesto.Text= Datos.Rows[0]["Presupuesto"].ToString();

             

            }
       
    }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //InformesparcialesSemilleros informes = new InformesparcialesSemilleros();
            //informes.actualizar_informes(new InformesparcialesSemilleros()
            //{
            //    TextBox2observaciones = TObservaciones.Value,
            //    TextareaSoporte = TAnexos.Value,
            //    TextareaObjetivos = TObjetivo.Value,
            //    TextareaAnalisis = TAnalisi.Value
            //}, Session["Informe"].ToString());
        }
    }
}
   

