using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Entidades;
using System.Data;

namespace WebApplication1
{
    public partial class ConsultaSemilleros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InformesparcialesSemilleros informes = new InformesparcialesSemilleros();
                if (Session["Informe"] == null)
                {
                    Response.Redirect("Form2.aspx");
                }
                DataTable Datos = informes.consulta_informme(Session["Informe"].ToString());
                NombreProyecto.Text = Datos.Rows[0]["nombreproyecto"].ToString();
                NombreSemillero.Text = Datos.Rows[0]["Nombre del Semillero"].ToString();
                FechaRadicacion.Text = Datos.Rows[0]["Fecha de Radicacion"].ToString();
                correo.Text = Datos.Rows[0]["Correo del Coordinador"].ToString();
                LFechaInicio.Text = Datos.Rows[0]["Fecha de Inicio"].ToString();
                LObservaciones.Text = Datos.Rows[0]["Observaciones"].ToString();
                LAnexosDescrip.Text = Datos.Rows[0]["Anexos"].ToString();
                LobjetivoEspe.Text = Datos.Rows[0]["Objetivo Especifico"].ToString();
                LAnalisisDescrip.Text = Datos.Rows[0]["Analisis"].ToString();

                TObjetivo.Value = Datos.Rows[0]["Objetivo Especifico"].ToString();
                TAnexos.Value = Datos.Rows[0]["Anexos"].ToString();
                TObservaciones.Value = Datos.Rows[0]["Observaciones"].ToString();
                TAnalisi.Value = Datos.Rows[0]["Analisis"].ToString();
                //tcorreo.Text = Datos.Rows[0]["Correo del Coordinador"].ToString();


                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Reporte Repo = new Reporte();
            Repo.InsertarResporte(new Reporte() {
            objetivoEspecifico = Objetivo.Value,
            cumplimiento=cumpli.Text,
            anexo=Anexo.Value,
            producto=Producto.Value,
            observacion=Observ.Value
            },Session["Informe"].ToString());
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            InformesparcialesSemilleros informes = new InformesparcialesSemilleros();
            informes.actualizar_informes(new InformesparcialesSemilleros() {TextBox2observaciones= TObservaciones.Value,
                TextareaSoporte=TAnexos.Value,
                TextareaObjetivos=TObjetivo.Value,
                TextareaAnalisis=TAnalisi.Value
            }, Session["Informe"].ToString());
        }
    }
}