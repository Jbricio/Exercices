using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq;

namespace CodingPerformanceReview
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //delegates
            //Func<float, float, float> sumaDelegate = ;
            //Action<string> returnException = DivideByZeroException => Console.WriteLine(DivideByZeroException);
            List<Person> listaPersonas = new List<Person>();
            Person Juan = new Person("Juan","juan@gmail.com",Convert.ToDateTime("02/02/2000"));
            Person Alo = new Person("Alo", "Alo@gmail.com",Convert.ToDateTime("03/11/2001"));
            Person Pepe = new Person("Pepe", "Pepe@gmail.com",Convert.ToDateTime("04/08/2002"));
            Person Pedro = new Person("Pedro", "pedro@gmail.com",Convert.ToDateTime("05/15/2003"));
            Person Luis = new Person("Luis", "luis@gmail.com",Convert.ToDateTime("06/30/2004"));
            Person Fer = new Person("Fer", "fer@gmail.com",Convert.ToDateTime("07/12/2005"));
            listaPersonas.Add(Juan);
            listaPersonas.Add(Alo);
            listaPersonas.Add(Pepe);
            listaPersonas.Add(Pedro);
            listaPersonas.Add(Luis);
            listaPersonas.Add(Fer);


        }   
        public void OldersThanSpecificDate(List<Person> listPerson)
        {
            IEnumerable<Person> olderList = listPerson.Where(p => p.Birthday > Convert.ToDateTime("01/01/2002"))
                .OrderBy(p=>p.Birthday).ToList();
        }

        public void ConvertListToEmail(List<Person> listPerson)
        {
            IEnumerable<Person> personEmail = listPerson.Where(p => p.Email!=null).OrderBy(p=>p.Email).ToList(); 
        }
    }
}
