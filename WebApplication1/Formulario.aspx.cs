using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using LogicaNegocio;

namespace WebApplication1
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegistrarUsuario_Click(object sender, EventArgs e)
        {
            Usuario user = new Usuario();
            user.agregar_Usuario(new Usuario(clave.Text, usuario.Text));
            Response.Redirect("Login.aspx");
            
        }
    }
}