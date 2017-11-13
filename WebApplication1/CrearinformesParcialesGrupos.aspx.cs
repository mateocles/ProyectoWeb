using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
namespace WebApplication1
{
    public partial class InformesParcialesGrupos : System.Web.UI.Page
    {
        InformesparcilesGrupos insert = new InformesparcilesGrupos();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            panel1.Visible = false;
            Image2.Visible = true;
            panel2.Visible = true;

        }


        protected void Button1pal2_Click(object sender, EventArgs e)
        {
            panel2.Visible = false;
            Image2.Visible = false;
            panel1.Visible = true;
        }

        protected void Button2pal2_Click(object sender, EventArgs e)
        {
            panel2.Visible = false;
            Image3.Visible = true;
            panel3.Visible = true;
        }

        protected void Button2pal3_Click(object sender, EventArgs e)
        {
            panel3.Visible = false;
            Image3.Visible = false;
            panel2.Visible = true;
        }



        protected void Button1pal3_Click(object sender, EventArgs e)
        {

            insert.insertdatainformeGrupo(new InformesparcilesGrupos(TextBoxnombreproyecto.Text, TextBoxnombreinvestigador.Text, Investigadores.Value, TextBoxnombreGI.Text, TextBoxlinea.Text, TextBoxfacultad.Text, TextBoxprograma.Text, TextareaobjetivosPG.Value, Textareametodologia.Value, Textarearesultados.Value, Textareaestrategia.Value, Textareapresupuesto.Value, TextBoxfechaini.Text));
            Response.Redirect("InformesParcialesGrupos.aspx");
        }
    }
}