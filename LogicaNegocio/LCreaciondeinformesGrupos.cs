using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
namespace LogicaNegocio
{
    class LCreaciondeinformesGrupos
    {

        InformesparcilesGrupos grupo = new InformesparcilesGrupos();
        public void insertdatainformeGrupo(InformesparcilesGrupos objeto)
        {
            grupo.insertdatainformeGrupo(objeto);
        }
    }
}
