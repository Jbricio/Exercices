using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProramacionAvanzada
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<int> enterosList = new List<int>();
            for (int i = 0; i < 20; i++)
            {
                enterosList.Add(i);
            }
            EvenNumberDelegate evenNumberDelegate = ExampleDegelates.EvenNumberDelegateMethod;
            evenNumberDelegate(enterosList);
            //
            Console.WriteLine("=================================\nOdd numbers:");
            List<int> oddList = new List<int>();
            for (int i = 0; i < 20; i++)
            {
                oddList.Add(i);
            }
            OddNumberDelegate oddNumberDelegate = ExampleDegelates.OddNumberDelegateMethod;
            oddNumberDelegate(oddList);
            //
            Console.WriteLine("=================================\nOrder by ascending:");
            OrderByAscendingDelegate orderByAscendingDelegate = ExampleDegelates.OrderByAscendingMethod;
            List<int> ascList = new List<int>();
            for (int i = 20; i > 0; i--)
            {
                ascList.Add(i);
            }
            orderByAscendingDelegate(ascList);
            //
            Console.WriteLine("=================================\nOrder by Descending:");
            OrderByDescendingDelegate orderByDescendingDelegate = ExampleDegelates.OrderByDescendingMethod;
            List<int> descList = new List<int>();
            for (int i = 0; i <=20; i++)
            {
                descList.Add(i);
            }
            orderByDescendingDelegate(descList);
            Console.WriteLine("=================================\nEvaluate multiple of 3:");
            EvaluatesMultipleOf3Delegate evaluatesMultipleOf3 = ExampleDegelates.FindMultipleOf3Method;
            evaluatesMultipleOf3(33);
            Console.WriteLine("=================================\nSend a text:");
            SendTextDelegate sendTextDelegate = ExampleDegelates.SendTextMethod;
            sendTextDelegate("This is the sended text");
            Console.WriteLine("=================================\nFind maximun value:");
            GetMaximunValueDelegate getMaximunVallueDelegate = ExampleDegelates.GetMaximunValueMethod;
            List<int> maxList = new List<int>();
            for (int i = 0; i <= 20; i++)
            {
                maxList.Add(i);
            }
            getMaximunVallueDelegate(maxList);
            Console.WriteLine("=================================\nFind minimun value:");
            GetMinimunValueDelegate getMinimunVallueDelegate = ExampleDegelates.GetMinimunValueMethod;
            List<int> minList = new List<int>();
            for (int i = 0; i <= 20; i++)
            {
                minList.Add(i);
            }
            getMinimunVallueDelegate(minList);
            Console.WriteLine("=================================\nCalculate average:");
            AverageDelegate averageDelegate = ExampleDegelates.AverageDelegateMethod;
            Random rd = new Random();
            List<int> averageList = new List<int>();
            for(int i = 0; i <= 10; i++)
            {
                averageList.Add(rd.Next(1, 50));
            }
            averageDelegate(averageList);
            Console.WriteLine("=================================\nCalculate RMS:");
            GetRMSDelegate getRMSDelegate = ExampleDegelates.GetRMSMethod;
            List<int> rmsList = new List<int>();
            for (int i = 0; i <= 10; i++)
            {
                rmsList.Add(rd.Next(1, 50));
            }
            getRMSDelegate(rmsList);
            //action, funct and predicate

            //Func
            Func<double, double> area = r => 3.14 * r * r;
            double areaRes = area(10);
            Console.WriteLine("=================================");
            Console.WriteLine("Func or Generic delegate recives and return something\nThe result of the Func delegate is: "+areaRes);
            //Action
            Console.WriteLine("=================================");
            Action<string> printSomething = some => Console.WriteLine(some);
            printSomething("Action delegate it doesnt return nothing, ir void\nAction delegate resul");
            //predicate
            Console.WriteLine("=================================\n Predicate delegate");
            Predicate<int> checkAge = x => x >= 18;
            Console.WriteLine(checkAge(18));
            Console.ReadKey();
        }
    }
}
