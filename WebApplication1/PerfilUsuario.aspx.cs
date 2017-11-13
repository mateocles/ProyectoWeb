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
    public partial class PerfilUsuario : System.Web.UI.Page

    {
        LUsuario luser = new LUsuario();


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Usuario usu = new Usuario();
                usu.Nombre_Usuario = Session["Usuario"].ToString();
                
                DataTable x = luser.ConsultarNombre(usu);
                Textboxnombre.Text = Convert.ToString(x.Rows[0]["NombresUsuario"]);
                DataTable y = luser.ConsultarNombre(usu);
                Textboxapellido.Text = Convert.ToString(y.Rows[0]["ApellidosUsuario"]);
                DataTable p = luser.ConsultarNombre(usu);
                Textboxcedula.Text = Convert.ToString(p.Rows[0]["CedulaUsuario"]);
                DataTable correo = luser.ConsultarNombre(usu);
                Textboxcorreo.Text = Convert.ToString(correo.Rows[0]["Correo"]);
                DataTable nacionalidad = luser.ConsultarNombre(usu);
                Texboxnacionalidad.Text = Convert.ToString(correo.Rows[0]["Nacionalidad"]);
                DataTable telefono = luser.ConsultarNombre(usu);
                Textboxtelefono.Text = Convert.ToString(correo.Rows[0]["Telefono"]);
                DataTable nombreusu = luser.ConsultarNombre(usu);
                Textboxusuario.Text = Convert.ToString(correo.Rows[0]["NombreUsuario"]);
                DataTable fecha = luser.ConsultarNombre(usu);
                TextBoxfacha.Text = Convert.ToString(correo.Rows[0]["FechaNacimiento"]);


                DataTable image = luser.Consultar_Imagen(usu);
                Image4.ImageUrl = image.Rows[0]["Linkfoto"].ToString();
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
            Textboxtelefono.ReadOnly = false;
            Textboxcorreo.ReadOnly = false;
            Texboxcontraseña2.ReadOnly = false;
            texboxcontraseña1.ReadOnly = false;
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            this.editarUsuario();
        }

        public void editarUsuario()
        {
            Usuario user = new Usuario();
            user.Id_Usuario = Session["idUsuario"].ToString();
            user.Telefonousu = Textboxtelefono.Text;
            user.Correousu = Textboxcorreo.Text;
            if (texboxcontraseña1.Text.Equals(Texboxcontraseña2.Text))
            {
                user.usuario_Contraseña = texboxcontraseña1.Text;          
                luser.editar_Usuario(user);
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}
