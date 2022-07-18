using System;
using System.IO;

namespace practicaProgramacion
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Program program = new Program();
            string currentDate = DateTime.Now.ToString("dd-MM-yyyy");
            Convert.ToString(currentDate);
            string salida = @"C:\Users\a875701\Downloads\"+"SalidaCountries"+currentDate+".txt";
            try
            {
                program.GreetCountries(@"C:\Users\a875701\Downloads\countries.txt", salida);
            }
            catch (DirectoryNotFoundException dnfe )
            {
                Console.WriteLine(dnfe.Message);
            }
            catch (ArgumentNullException ane)
            {
                Console.WriteLine(ane.Message);
            }
            catch (FileNotFoundException fne)
            {
                Console.WriteLine(fne.Message); 
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                Console.WriteLine("final block that always is executed.");
            }
            Primate Gorila = new Primate("Gorila", "150kg");
            Gorila.ruido();
            Gorila.moverse();

            Validar valida = new Validar();
            try
            {
                valida.Fail();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
        public void GreetCountries(string inputFile,string outputFile)
        {
            string[] txt = new string[200];
            using (StreamReader sr = new StreamReader(inputFile))
            {
                string line;
                int i = 0;
                do
                {
                    line = sr.ReadLine();
                    txt[i] = line;
                    i++;
                } while (line != null);
            }

            using (StreamWriter sw = new StreamWriter(outputFile))
            {
                string salute;
                for(int i = 0; i < txt.Length; i++)
                {
                    salute = "Sludos hasta "+txt[i]+"!";
                    sw.WriteLine(salute);
                }

            }
        }

        sealed internal class Primate : Animal
        {
            private string raza;
            private string peso;

            internal Primate(string razaPrimate , string pesaje)
            {
                raza = razaPrimate;
                peso = pesaje;
            }
            

            protected internal override void moverse()
            {
                Console.WriteLine("Me muevo colgando");
            }


            protected internal override void ruido()
            {
                Console.WriteLine("Puedo gritar");
            }
        }

        public class Validar
        {
            public void Fail()
            {
                throw new Exception("Error!"); 
            }
        }      
    }
}
