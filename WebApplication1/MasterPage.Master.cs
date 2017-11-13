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
    public partial class MasterPage : System.Web.UI.MasterPage
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Usuario usu = new Usuario();

                usu.Nombre_Usuario = Session["Usuario"].ToString();

                LUsuario luser = new LUsuario();

                DataTable image = luser.Consultar_Imagen(usu);
                DataTable image1 = luser.Consultar_Imagen(usu);
                DataTable image2 = luser.Consultar_Imagen(usu);
                Image1.ImageUrl = image.Rows[0]["Linkfoto"].ToString();
                Image2.ImageUrl = image1.Rows[0]["Linkfoto"].ToString();
                Image3.ImageUrl = image2.Rows[0]["Linkfoto"].ToString();
                DataTable x = luser.ConsultarNombre(usu);
                //DataTable y = luser.ConsultarNombre(usu);
                //DataTable p = luser.ConsultarNombre(usu);
                //DataTable r = luser.ConsultarNombre(usu);
                //DataTable s = luser.ConsultarNombre(usu);
                //DataTable t = luser.ConsultarNombre(usu);
                //DataTable er = luser.ConsultarNombre(usu);
                Label1.Text = x.Rows[0]["NombresUsuario"].ToString();
                Label2.Text = x.Rows[0]["ApellidosUsuario"].ToString();
                Label3.Text = x.Rows[0]["NombresUsuario"].ToString();
                Label4.Text = x.Rows[0]["ApellidosUsuario"].ToString();
                Label5.Text = x.Rows[0]["NombresUsuario"].ToString();
                Label6.Text = x.Rows[0]["ApellidosUsuario"].ToString();
                string roles = x.Rows[0]["Fk_idRol"].ToString();
                Session["Rol"] = roles;
                Session["IdUsuario"] = x.Rows[0]["idUsuario"].ToString();

                if (roles.ToString().Equals("103"))
                {
                    Cargadeinformes.Visible = false;
                    Cargadeinformesgrupos.Visible = false;
                    Proyectos.Visible = false;

                }
                else{
                    if (roles.ToString().Equals("104") )
                    {
                        Cargadeinformesgrupos.Visible = false;
                        Cargadeinformes.Visible = false;
                        Proyectos.Visible = false;
                    }
                    else
                    {
                        if (roles.ToString().Equals("103"))
                        {
                            Cargadeinformesgrupos.Visible = false;
                            Cargadeinformes.Visible = false;
                            Proyectos.Visible = false;
                        }
                        else
                        {
                            if (roles.ToString().Equals("102"))
                            {
                                InformesCargados.Visible = false;
                            }

                        }
                    }
                }





                if (Session["Estado"].ToString().Equals("T"))
                {


                }
                else
                {
                   Response.Redirect("Login.aspx");
                }
            
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }

}
         

         
       
        protected void Salir_Click(object sender, EventArgs e)
        {

            Session["Estado"] = "F";
            Response.Redirect("Login.aspx");
        }
        protected void PerfilUsuario (Object sender, EventArgs e)
        {
            Response.Redirect("PerfilUsuario.aspx");
        }
    }
}