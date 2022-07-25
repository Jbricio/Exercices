using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PracticaProgramacionIntermedia1
{
    internal class Map<T> where T : Pair
    {
        private T[] Arreglo { get; set; } = new T[100];

        public void Put (int i,T objeto)
        {
            Arreglo[i] = objeto;
        }
        public T GetAt(int i)
        {
            T objeto = Arreglo[i];
            return objeto;
        }
        public T Get(string txt)
        {
            T objeto;
            for (int i=0; i < Arreglo.Length; i++)
            {
                if (txt == Arreglo[i].ToString()) {
                   objeto = Arreglo[i];
                   return objeto;
                }
                else
                    throw new Exception();
            }
            return default(T);

        }
        
    }
}
