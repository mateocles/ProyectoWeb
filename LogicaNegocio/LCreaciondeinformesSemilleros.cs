using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace LogicaNegocio
{
    class LCreaciondeinformesSemilleros
    {

        InformesparcialesSemilleros semillero = new InformesparcialesSemilleros();
        public void agregar_datosinformesSemillero(InformesparcialesSemilleros objeto)
        {
            semillero.agregar_datosinformesSemillero(objeto);
        }
      
    }
}
