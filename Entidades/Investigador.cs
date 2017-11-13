using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using AccesoDatos;
namespace Entidades
{
    class Investigador
    {


        public bool consultar_Usuario(Usuario objeto)
        {
            bool state = false;
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "select * from usuario where NombreUsuario='" + objeto.Nombre_Usuario + "' and ContrasenaUsuario=md5('" + objeto.usuario_Contraseña + "')";
            DataTable c = Conexion.EjecutarConsulta(sql, lista, System.Data.CommandType.Text);
            if (c.Rows.Count > 0)
            {
                state = true;
            }

            else
            {
                state = false;
            }
            return state;
        }
    }
}

