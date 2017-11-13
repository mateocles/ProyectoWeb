﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;

namespace WebApplication1
{
    public partial class ConsultaGrupos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                InformesparcilesGrupos consulta = new InformesparcilesGrupos();

                Informe.DataSource = consulta.consulta_informesGrupo(Session["Rol"].ToString(), Session["IdUsuario"].ToString());
                Informe.DataBind();
            }
        }
        protected void VerDetalle(object sender, CommandEventArgs e)
        {
            Session["Informe"] = e.CommandArgument.ToString();
            Response.Redirect("Consultadegruposedit.aspx");
        }
       
    }
}