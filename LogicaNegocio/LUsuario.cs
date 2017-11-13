using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace LogicaNegocio
{
    public class LUsuario
    {
        Usuario user = new Usuario();
        public void agregar_Usuario(Usuario objeto)
        {
            user.agregar_Usuario(objeto);
        }
        public void editar_Usuario(Usuario objeto)
        {
            user.editar_Usuario(objeto);
        }

        public DataTable Consultarusu(Usuario objeto)
        {
            return user.consultar_Usuario(objeto);
        }
        public DataTable ConsultarNombre(Usuario objeto)
        {
            return user.Consulta_Nombre(objeto);
        }
        public DataTable Consultar_Imagen(Usuario objeto)
        {
            return user.Consulta_Imagen(objeto);
        }
    }
}
