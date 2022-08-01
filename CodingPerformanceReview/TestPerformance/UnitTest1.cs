using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Xunit;
using 

namespace TestPerformance
{
    public class UnitTest1
    {
        [Theory]
        List<Person> listaPersonas = new List<Person>();
        Person Juan = new Person("Juan", "juan@gmail.com", Convert.ToDateTime("02/02/2000"));
        Person Alo = new Person("Alo", "Alo@gmail.com", Convert.ToDateTime("03/11/2001"));
        Person Pepe = new Person("Pepe", "Pepe@gmail.com", Convert.ToDateTime("04/08/2002"));
        Person Pedro = new Person("Pedro", "pedro@gmail.com", Convert.ToDateTime("05/15/2003"));
        Person Luis = new Person("Luis", "luis@gmail.com", Convert.ToDateTime("06/30/2004"));
        Person Fer = new Person("Fer", "fer@gmail.com", Convert.ToDateTime("07/12/2005"));
        listaPersonas.Add(Juan);
            listaPersonas.Add(Alo);
            listaPersonas.Add(Pepe);
            listaPersonas.Add(Pedro);
            listaPersonas.Add(Luis);
            listaPersonas.Add(Fer);
        [InlineData("Juanita","juanita@gmail.com","02/02/2002")]
        public void ConvertListShouldConvertToListEmail(string name,string email, string birthday)
        {

        }
    }
}
