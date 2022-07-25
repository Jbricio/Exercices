using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace PracticaProgramacionIntermedia1
{
    internal class Program
    {
        static void Main(string[] args)
        {
         Random rd = new Random();
            int num = rd.Next(0, 999);
            string res=(num>500)?"Greater than 500" : "Less than 500";
            Console.WriteLine(num+" Is "+res);
            //
            int? valor = null;
            string output = (valor == null) ?
            throw new FindNullValueException("The value is null") : "Value is valid";
            Console.WriteLine(output);*/
            //
            /*
            var anonimo =  new {Name="Jose", Age=23 };
            Console.WriteLine(anonimo.Name,anonimo.Age+" estos tipos son anonimos.");
            //
            dynamic Dinamica = 1;
            Console.WriteLine(Dinamica);
            Dinamica = "Hola";
            Console.WriteLine(Dinamica);
            var anonym = new { Prop1 = 1 + "Es un int como primer propiedad ", Prop2 = "Segunda propiedad ", Prop3 = "Tercer propiedad" } ;
            Dinamica = anonym;
            Console.WriteLine(Dinamica);
            Console.ReadKey();
            //
            var res = new Map<Example>();
            Example example;
            //
            string frase = "Hola1234";
            Match result = Regex.Match(frase, "^[A-Z]{1-1}[a-z]{3-3}[0-9]{4-4}$");
            Console.WriteLine(result.Success);
            Console.ReadKey();
        }


        
       

        
    }
}
