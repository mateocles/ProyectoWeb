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
    public class InformesparcialesSemilleros
    {
        public InformesparcialesSemilleros()
        {
        }

        public InformesparcialesSemilleros(String textBox2fecharadica, String textBox3nombreSEMI, String textBox2cedula, String textBox2fechaI, String textBox4TITULOPS, String textBox2NOMinvestigador, String textBox2correo, String texareaobjetivos, String texareaAnalisis, String texareaanexos)
        {
            this.TextBox2fecharadica = textBox2fecharadica;
            this.TextBox3nombreSEMI = textBox3nombreSEMI;
            this.TextBox2cedula = textBox2cedula;
            this.TextBox2fechaI = textBox2fechaI;
            this.TextBox4TITULOPS = textBox4TITULOPS;
            this.TextBox2NOMinvestigador = textBox2NOMinvestigador;
            this.TextBox2correo = textBox2correo;
            this.TextareaObjetivos = texareaobjetivos;
            this.TextareaAnalisis = texareaAnalisis;
            this.TextareaSoporte = texareaanexos;
            
        }

        public string TextBox2fecharadica { get; set; }
        public string TextBox2observaciones { get; set; }
        public string TextBox3nombreSEMI { get; set; }
        public string TextBox2facultad { get; set; }
        public string TextBox2linea { get; set; }
        public string TextBox2cedula { get; set; }
        public string TextBox2fechaI { get; set; }
        public string TextBox4TITULOPS { get; set; }

        public string TextBox2NOMinvestigador { get; set; }
        public string TextBox2correo { get; set; }

        public string TextareaObjetivos { get; set; }

        public string TextareaAnalisis { get; set; }
        public string TextareaSoporte { get; set; }


        public void agregar_datosinformesSemillero(InformesparcialesSemilleros objeto)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();

            string sql = "insert into informesemilleros(FechaRdicacion,NombreSemillero,CedulaCoordinador,FechaInicio,TituloproyectoS,NombreCoordinador,CorreoCoordinador,ObjetivoEspeci,Analisis,AnexosOE) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}')";
            sql = string.Format(sql, objeto.TextBox2fecharadica, objeto.TextBox3nombreSEMI, objeto.TextBox2cedula, objeto.TextBox2fechaI, objeto.TextBox4TITULOPS, objeto.TextBox2NOMinvestigador, objeto.TextBox2correo, objeto.TextareaObjetivos, objeto.TextareaAnalisis, objeto.TextareaSoporte);
            ///insert into informesemilleros(FechaRdicacion,NombreSemillero,CedulaCoordinador,FechaInicio,TitulopreyectoSemillero,NombreCoordinador,Nombreinvestigador,CorreoCoordinador,idinformesemillero,fk_idproyecto) values('11111','sddssd','adsadc','aaa','aaa','aaaa','qqq','kajsdj',1,2)
            Conexion.EjecutarOperacion(sql, lista, System.Data.CommandType.Text);

        }

        public DataTable consulta_informmesSemilleros(string rol, string idusuario)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "select  idinformeSemillero, FechaRdicacion as 'Fecha de Radicacion', NombreSemillero as 'Nombre del Semillero', CedulaCoordinador as 'Cedula del Coordinador', FechaInicio as 'Fecha de Inicio', TituloproyectoS as 'Titulo del Proyecto', CorreoCoordinador as 'Correo del Coordinador', ObjetivoEspeci as 'Objetivo Especifico', ObservacionesOE as 'Observaciones', Analisis as 'Analisis', AnexosOE as 'Anexos' from informesemilleros inner join usuario us on us.idUsuario=informesemilleros.Fk_IdUsuario where us.idUsuario=" + idusuario + ";";
            if (rol.Equals("101"))
            {
                sql = "select  idinformeSemillero,FechaRdicacion as 'Fecha de Radicacion', NombreSemillero as 'Nombre del Semillero', CedulaCoordinador as 'Cedula del Coordinador', FechaInicio as 'Fecha de Inicio', TituloproyectoS as 'Titulo del Proyecto', CorreoCoordinador as 'Correo del Coordinador', ObjetivoEspeci as 'Objetivo Especifico', ObservacionesOE as 'Observaciones', Analisis as 'Analisis', AnexosOE as 'Anexos' from informesemilleros;";
            }
            else { if (rol.Equals("104"))
                {
                    sql = "select  idinformeSemillero,FechaRdicacion as 'Fecha de Radicacion', NombreSemillero as 'Nombre del Semillero', CedulaCoordinador as 'Cedula del Coordinador', FechaInicio as 'Fecha de Inicio', TituloproyectoS as 'Titulo del Proyecto', CorreoCoordinador as 'Correo del Coordinador', ObjetivoEspeci as 'Objetivo Especifico', ObservacionesOE as 'Observaciones', Analisis as 'Analisis', AnexosOE as 'Anexos' from informesemilleros;";
                } }
            DataTable c = Conexion.EjecutarConsulta(sql, lista, System.Data.CommandType.Text);
            return c;
        }
        public DataTable consulta_informme(string idinforme)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "select proyecto.nombreproyecto, idinformeSemillero, FechaRdicacion as 'Fecha de Radicacion', NombreSemillero as 'Nombre del Semillero', CedulaCoordinador as 'Cedula del Coordinador', FechaInicio as 'Fecha de Inicio', TituloproyectoS as 'Titulo del Proyecto', CorreoCoordinador as 'Correo del Coordinador', ObjetivoEspeci as 'Objetivo Especifico', ObservacionesOE as 'Observaciones', Analisis as 'Analisis', AnexosOE as 'Anexos' from informesemilleros inner join proyecto on proyecto.idproyecto=informesemilleros.fk_idproyecto where idinformesemillero=" + idinforme + ";";
            DataTable c = Conexion.EjecutarConsulta(sql, lista, System.Data.CommandType.Text);
            return c;
        }

        public void actualizar_informes(InformesparcialesSemilleros objeto,string id)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "update informesemilleros set ObjetivoEspeci='{0}',Analisis='{1}',AnexosOE='{2}',observacionesOE='{3}' where idinformesemillero="+id+" ";
            sql = string.Format(sql,objeto.TextareaObjetivos, objeto.TextareaAnalisis, objeto.TextareaSoporte , objeto.TextBox2observaciones);
            ///insert into informesemilleros(FechaRdicacion,NombreSemillero,CedulaCoordinador,FechaInicio,TitulopreyectoSemillero,NombreCoordinador,Nombreinvestigador,CorreoCoordinador,idinformesemillero,fk_idproyecto) values('11111','sddssd','adsadc','aaa','aaa','aaaa','qqq','kajsdj',1,2)
            Conexion.EjecutarOperacion(sql, lista, System.Data.CommandType.Text);
        }


    }
}
