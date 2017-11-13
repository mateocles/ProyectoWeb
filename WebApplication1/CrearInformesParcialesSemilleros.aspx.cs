using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
namespace WebApplication1 { 

    public partial class CrearInformesParciales : System.Web.UI.Page
    {
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
            //InformesparcialesSemilleros semillero = new InformesparcialesSemilleros();
            //semillero.agregar_datosinformesSemillero(new InformesparcialesSemilleros(TextBox2fecharadica.Text, TextBox3nombreSEMI.Text, TextBox2cedula.Text, TextBox2fechaI.Text, TextBox4TITULOPS.Text, TextBox2NOMinvestigador.Text, TextBox2correo.Text));
            //Response.Redirect("InformesParcialesSemilleros2.aspx");
            panel1.Visible = false;
            Image5.Visible = true;
            panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            panel1.Visible = true;
            panel2.Visible = false;
            Image5.Visible = false;

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            InformesparcialesSemilleros semillero = new InformesparcialesSemilleros();
            semillero.agregar_datosinformesSemillero(new InformesparcialesSemilleros(TextBox2fecharadica.Text, TextBox3nombreSEMI.Text, TextBox2cedula.Text, TextBox2fechaI.Text, TextBox4TITULOPS.Text, TextBox2NOMinvestigador.Text, TextBox2correo.Text, TextareaObjetivos.Value, TextareaAnalisis.Value, TextareaSoporte.Value));

            Response.Redirect("CrearInformesParcialesSemilleros.aspx");
        }
    }
}