using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace Entidades
{
    public class Usuario
    {
        public Usuario()
        {
        }

        public Usuario(string clave, string nombre_usuario/*,string nombresusarios,string apellidosusu, DateTime fechanaci, string cedulausu, string telefonousu, string correousu*/)
        {
            this.Nombre_Usuario = nombre_usuario;
            this.usuario_Contraseña = clave;
            //this.Nombres_Usuario = nombresusarios;
            //this.Apellidos_usuario = apellidosusu;
            //this.fechanaci = fechanaci;
            //this.Cedulausu = cedulausu;
            //this.Telefonousu = telefonousu;
            //this.Correousu = correousu;
        }

        public string Id_Usuario { get; set; }
        public string Nombre_Usuario { get; set; }
        public string usuario_Contraseña { get; set; }

        public string Nombres_Usuario { get; set; }

        public string Apellidos_usuario { get; set; }
        public DateTime fechanaci { get; set; }
        public string Cedulausu { get; set; }
        public string Telefonousu { get; set; }
        public string Correousu { get; set; }
        public void agregar_Usuario(Usuario objeto)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "insert into usuario(NombreUsuario,ContrasenaUsuario) values('{0}',md5('{1}'))";
            sql = string.Format(sql, objeto.Nombre_Usuario, objeto.usuario_Contraseña);

            Conexion.EjecutarOperacion(sql, lista, System.Data.CommandType.Text);
        }

        public void editar_Usuario(Usuario objeto)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "UPDATE usuario SET ContrasenaUsuario=md5('{0}'), Correo='{1}', Telefono='{2}' WHERE idUsuario='{3}'";
            sql = string.Format(sql, objeto.usuario_Contraseña, objeto.Correousu, objeto.Telefonousu, objeto.Id_Usuario);

            Conexion.EjecutarOperacion(sql, lista, System.Data.CommandType.Text);
        }


        public DataTable consultar_Usuario(Usuario objeto)
        {
            bool state = false;
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "select * from usuario where NombreUsuario='" + objeto.Nombre_Usuario + "' and ContrasenaUsuario=md5('" + objeto.usuario_Contraseña + "')";
            DataTable c = Conexion.EjecutarConsulta(sql, lista, System.Data.CommandType.Text);
            return c;
        }
        public DataTable Consulta_Nombre(Usuario objeto)
        {
           
            List<MySqlParameter> lista = new List<MySqlParameter>();
            //String sql = "select NombresUsuario, ApellidosUsuario  from usuario where NombreUsuario='" + objeto.Nombre_Usuario + "' and ContrasenaUsuario=md5('" + objeto.usuario_Contraseña + "')";
            String sql = "select idUsuario,NombresUsuario,ApellidosUsuario,CedulaUsuario,Telefono,Correo,Linkfoto,Nacionalidad,NombreUsuario,FechaNacimiento,Fk_idRol, CONCAT_WS (' ', NombresUsuario, ApellidosUsuario,CedulaUsuario,Telefono,Correo,Linkfoto,Nacionalidad,NombreUsuario,FechaNacimiento,Fk_idRol) AS NombreeeUsuario from usuario where NombreUsuario = '" + objeto.Nombre_Usuario + "';" ;
            DataTable c = Conexion.EjecutarConsulta(sql, lista, System.Data.CommandType.Text);
            return c;
        }
        public DataTable Consulta_Imagen(Usuario objeto)
        {

            List<MySqlParameter> lista = new List<MySqlParameter>();
            String sql = "select linkfoto from usuario where NombreUsuario = '" + objeto.Nombre_Usuario + "';";
            DataTable g = Conexion.EjecutarConsulta(sql, lista, System.Data.CommandType.Text);
            return g;
        }

    }

}