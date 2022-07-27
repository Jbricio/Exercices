
namespace ProgramacionIntermedia2
{
    public struct EmpleadoStruct
    {
        public int Salario { get; set; }
        public string Nombre { get; set; }

        public EmpleadoStruct(int salario, string nombre)
        {
            Salario = salario;
            Nombre = nombre;
        }
    }
}
