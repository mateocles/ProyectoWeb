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
    public class InformesparcilesGrupos
    {
        public InformesparcilesGrupos()
        {

        }

        public InformesparcilesGrupos(String textBoxnombreproyecto, String textBoxnombreinvestigador, String investigadores, String textBoxnombreGI, String textBoxlinea, String textBoxfacultad, String textBoxprograma, String textareaobjetivosPG, String textareametodologia, String textarearesultados, String textareaestrategia, String textareapresupuesto, String textBoxfechaEn)
        {
            this.TextBoxnombreproyecto = textBoxnombreproyecto;
            this.TextBoxnombreinvestigador = textBoxnombreinvestigador;
            this.Investigadores = investigadores;
            this.TextBoxnombreGI = textBoxnombreGI;
            this.TextBoxlinea = textBoxlinea;
            this.TextBoxfacultad = textBoxfacultad;
            this.TextBoxprograma = textBoxprograma;
            this.TextareaobjetivosPG = textareaobjetivosPG;
            this.Textareametodologia = textareametodologia;

            this.Textarearesultados = textarearesultados;
            this.Textareaestrategia = textareaestrategia;

            this.Textareapresupuesto = textareapresupuesto;
            this.TextBoxfechaEn = textBoxfechaEn;
        }
        public string TextBoxnombreproyecto { get; set; }
        public string TextBoxnombreinvestigador { get; set; }
        public string Investigadores { get; set; }
        public string TextBoxnombreGI { get; set; }
        public string TextBoxlinea { get; set; }
        public string TextBoxfacultad { get; set; }
        public string TextBoxprograma { get; set; }
        public string TextareaobjetivosPG { get; set; }
        public string Textareametodologia { get; set; }

        public string Textarearesultados { get; set; }
        public string Textareaestrategia { get; set; }

        public string Textareapresupuesto { get; set; }
        public string TextBoxfechaEn { get; set; }


        public void insertdatainformeGrupo(InformesparcilesGrupos objeto)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();

            string sql1 = "insert into informegrupo(nombreproyectogrupo,Nombreinvestigador,Otrosinvestagadores,NombredeGI,LineaIngestigacion,Facultad,Programa,Objetivos,Metologia,ResultadosDiscusion,Estractegias,Presupuesto,FechaEntrega) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}')";
            sql1 = string.Format(sql1, objeto.TextBoxnombreproyecto, objeto.TextBoxnombreinvestigador, objeto.Investigadores, objeto.TextBoxnombreGI, objeto.TextBoxlinea, objeto.TextBoxfacultad, objeto.TextBoxprograma, objeto.TextareaobjetivosPG, objeto.Textareametodologia, objeto.Textarearesultados, objeto.Textareaestrategia, objeto.Textareapresupuesto, objeto.TextBoxfechaEn);
            ///insert into informesemilleros(FechaRdicacion,NombreSemillero,CedulaCoordinador,FechaInicio,TitulopreyectoSemillero,NombreCoordinador,Nombreinvestigador,CorreoCoordinador,idinformesemillero,fk_idproyecto) values('11111','sddssd','adsadc','aaa','aaa','aaaa','qqq','kajsdj',1,2)
            Conexion.EjecutarOperacion(sql1, lista, System.Data.CommandType.Text);

        }
        public DataTable consulta_informesGrupo(string rol, string idusuario)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "select Id_proyectoGrupo, nombreproyectogrupo as 'Nombre del Proyecto', Nombreinvestigador  as 'Nombre del Investigador', Otrosinvestagadores as 'Investigadores', NombredeGI as 'Nombre de Grupo Investigacion',LineaIngestigacion as 'Linea de Investigacion', Facultad as 'Facultad', Programa as 'Programa', Objetivos as 'Objetivos', Metologia as 'Metodologia', ResultadosDiscusion as 'Resultados', Estrategias as 'Estrategias',Presupuesto as 'Presupuesto', FechaEntrega as 'Fecha de Entrega' from informegrupo inner join usuario us on us.idUsuario=informegrupo.Fk_IdUsuario where us.idUsuario=" + idusuario + ";";
            if (rol.Equals("101"))
            {
                sql = "select Id_proyectoGrupo,  nombreproyectogrupo as 'Nombre del Proyecto', nombreproyectogrupo  as 'Nombre del Investigador', Otrosinvestagadores as 'Investigadores', NombredeGI as 'Nombre de Grupo Investigacion',LineaIngestigacion as 'Linea de Investigacion', Facultad as 'Facultad', Programa as 'Programa', Objetivos as 'Objetivos', Metologia as 'Metodologia', ResultadosDiscusion as 'Resultados', Estractegias as 'Estrategias',Presupuesto as 'Presupuesto', FechaEntrega as 'Fecha de Entrega' from informegrupo;";
            }
            else {
                if (rol.Equals("104"))
                {
                    sql = "select  idinformeSemillero,FechaRdicacion as 'Fecha de Radicacion', NombreSemillero as 'Nombre del Semillero', CedulaCoordinador as 'Cedula del Coordinador', FechaInicio as 'Fecha de Inicio', TituloproyectoS as 'Titulo del Proyecto', CorreoCoordinador as 'Correo del Coordinador', ObjetivoEspeci as 'Objetivo Especifico', ObservacionesOE as 'Observaciones', Analisis as 'Analisis', AnexosOE as 'Anexos' from informesemilleros;";
                }
            }
            DataTable t = Conexion.EjecutarConsulta(sql, lista, System.Data.CommandType.Text);
            return t;
        }
        public DataTable consulta_informe(string idinforme)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "select proyecto.nombreproyecto, Id_proyectoGrupo , nombreproyectogrupo as 'Nombre Proyecto', Nombreinvestigador as 'Nombre investigador', Otrosinvestagadores as 'Otros investigadores', NombredeGI as 'NombredeGI', LineaIngestigacion as 'Linea Ingestigacion', Facultad as 'Facultad', Objetivos as 'Objetivo', Metologia as 'Metologia', ResultadosDiscusion as 'Resultados Discusion', Estractegias as 'Estractegias', Presupuesto as 'Presupuesto', FechaEntrega as 'Fecha Entrega' from informegrupo inner join proyecto on proyecto.idproyecto=informegrupo.Fk_IdProyecto where Id_proyectoGrupo=" + idinforme + ";";
            DataTable c = Conexion.EjecutarConsulta(sql, lista, System.Data.CommandType.Text);
            return c;
        }


    }
}
