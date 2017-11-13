using AccesoDatos;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
 public class Reporte
    {
        public string objetivoEspecifico { get; set; }
        public string cumplimiento { get; set; }
        public string resultado { get; set; }
        public string producto { get; set; }
        public string anexo { get; set; }
        public string observacion { get; set; }

        public void InsertarResporte(Reporte obj, string id)
        {
            List<MySqlParameter> lista = new List<MySqlParameter>();
            string sql = "insert into reporteavancesemillero (fk_informeSemillero,objetivoEspec,porcietajecumplimiento,resultadoobjetivo,producto,observaciones,anexosoporte) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
            sql = string.Format(sql, id, obj.objetivoEspecifico,obj.cumplimiento,obj.objetivoEspecifico,obj.producto,obj.observacion,obj.anexo);
            ///insert into informesemilleros(FechaRdicacion,NombreSemillero,CedulaCoordinador,FechaInicio,TitulopreyectoSemillero,NombreCoordinador,Nombreinvestigador,CorreoCoordinador,idinformesemillero,fk_idproyecto) values('11111','sddssd','adsadc','aaa','aaa','aaaa','qqq','kajsdj',1,2)
            Conexion.EjecutarOperacion(sql, lista, System.Data.CommandType.Text);
        }
    }
}
