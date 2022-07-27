using System;
using System.Collections.Generic;
using System.Diagnostics;

namespace ProgramacionIntermedia2
{
    internal class Program
    {
        static void Main(string[] args)
        {

            var tupleList = new List<Tuple<int, int>>
            {
                Tuple.Create(1, 1),
                Tuple.Create(2, 2)
            };
            //(string Name, string Kind, int Replicas, bool Run) student;
            //var tupleValueList = new List<student>;
           
            Empleado[] empleado = new Empleado[1000000];
            EmpleadoStruct[] empleadoStruct = new EmpleadoStruct[1000000];

            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();
            for(int k = 0;k== 1000000;k++)
            {
             empleado[k] = new Empleado(99,"Juanito");
            }
            stopwatch.Stop();
            Console.WriteLine("First array time: "+stopwatch.ElapsedMilliseconds);
            
            Stopwatch stopwatch2 = new Stopwatch();
            stopwatch2.Start();
            for (int k = 0; k == 1000000; k++)
            {
                empleadoStruct[k] = new EmpleadoStruct(99, "Juanito");
            }
            stopwatch2.Stop();
            Console.WriteLine("First array time: " + stopwatch2.ElapsedMilliseconds);
          
            Console.WriteLine("Queue reverse:");
            Console.WriteLine("========================");
            Queue<int> queue = new Queue<int>();
            for(int i = 0; i < 10; i++)
            {
                queue.Enqueue(i);
            }
            stopwatch2.Restart();
            MethodsColections.ReverseWithQueue(queue);
            stopwatch2.Stop();
            Console.WriteLine("It took " + stopwatch2.ElapsedMilliseconds + " miliseconds to convert");
            Console.WriteLine("List reverse:");
            Console.WriteLine("========================");
            List<int> list = new List<int>();
            for (int i = 0; i < 10; i++)
            {
                list.Add(i);
            }
            stopwatch2.Restart();
            MethodsColections.ReverseWithList(list);
            stopwatch2.Stop();
            Console.WriteLine("It took " + stopwatch2.ElapsedMilliseconds + " miliseconds to convert");
            Console.WriteLine("Dictionary reverse:");
            Console.WriteLine("========================");
            Dictionary<int,string> diccionario =new Dictionary<int,string>();
            diccionario.Add(1, "A");
            diccionario.Add(2, "B");
            diccionario.Add(3, "C");
            stopwatch2.Restart();
            MethodsColections.ReverseWithDictionary(diccionario);
            stopwatch2.Stop();
            Console.WriteLine("It took " + stopwatch2.ElapsedMilliseconds + " miliseconds to convert");
            Console.ReadKey();

        }
    }
}
