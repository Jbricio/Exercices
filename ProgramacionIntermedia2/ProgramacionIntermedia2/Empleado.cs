using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramacionIntermedia2
{
    public class Empleado
    {
        public int Salario { get; set; }
        public string Nombre { get; set; }
        public Empleado(int salario, string nombre)
        {
            Salario = salario;
            Nombre = nombre;
        }
    }
}
