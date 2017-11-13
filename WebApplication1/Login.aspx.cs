using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using LogicaNegocio;
using System.Data;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        Usuario usu = new Usuario();
        LUsuario luser = new LUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {

            Session.Remove("Usuario");
        }

        protected void IniciarSesion_Click(object sender, EventArgs e)
        {
           
            usu.Nombre_Usuario = TexUsuario.Text;
            usu.usuario_Contraseña = Textpassword.Text;
            Session["Usuario"]=usu.Nombre_Usuario;
            DataTable dt = luser.Consultarusu(usu);
            if (dt.Rows.Count>0)
            {
                DataRow fila = dt.Rows[0];
                Session["idUsuario"] = fila["idUsuario"].ToString();
                Session["Estado"] = "T";
                Response.Redirect("Menu.aspx");
            }
            else
            {
                Resultado.Visible = true;
                Resultado.Text = "Datos incorrectos";
            }
        }
    }


}
