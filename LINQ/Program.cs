using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LINQ
{
    class program
    {
        static void Main(string[] args)
        {
            string[] vec ={ "Juan", "Pablo","Pedro", "Pepe", "Ana",
                "Esteban", "Daniel", "Mariano", "Carolina", "Silvia", "Roberto", "Juanito", "Juana" };
            var ordenar = (from name in vec orderby name select name).ToList();
            Console.WriteLine("Array ordered by desending(2.1)");
            foreach (var item in ordenar)
            {
                Console.WriteLine(item);
            }
            Console.WriteLine("Write a string to find it on the array:");
            string word = Convert.ToString(Console.ReadLine());
            var find = from name in vec where vec.Contains(word) select name;
            Console.WriteLine(find);
        }
    }
}