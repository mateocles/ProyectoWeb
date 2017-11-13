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
       
    }
}