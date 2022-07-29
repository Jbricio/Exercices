using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProramacionAvanzada
{
    public delegate void EvenNumberDelegate(List<int> numbers);
    public delegate void OddNumberDelegate(List<int> numbers);
    public delegate void OrderByAscendingDelegate(List<int> numbers);
    public delegate void OrderByDescendingDelegate(List<int> numbers);
    public delegate void EvaluatesMultipleOf3Delegate(int num);
    public delegate void SendTextDelegate(string txt);
    public delegate void GetMaximunValueDelegate(List<int> numbers);
    public delegate void GetMinimunValueDelegate(List<int> numbers);
    public delegate void AverageDelegate(List<int> numbers);
    public delegate void GetRMSDelegate(List<int> numbers);

    internal static class ExampleDegelates
    {
        public static void EvenNumberDelegateMethod(List<int> numbers)
        {
            List<int> numbers2 = new List<int>();
            foreach(int n in numbers)
            {
                if (n % 2==0)
                {
                    numbers2.Add(n);
                }
            }
            foreach(int n in numbers2)
            {
                Console.WriteLine(n);
            }
        }
        
        public static void OddNumberDelegateMethod(List<int> numbers)
        {
            List<int> numbers2 = new List<int>();
            foreach (int n in numbers)
            {
                if (n % 2 != 0)
                {
                    numbers2.Add(n);
                }
            }
            foreach (int n in numbers2)
            {
                Console.WriteLine(n);
            }
        }
        
        public static void OrderByAscendingMethod(List<int> list1)
        {
            list1.Sort();
            foreach(var n in list1)
            {
                Console.WriteLine(n);
            }
        }
        
        public static void OrderByDescendingMethod(List<int> list1)
        {
            list1.Reverse();
            foreach (var n in list1)
            {
                Console.WriteLine(n);
            }
        }

        public static void FindMultipleOf3Method(int num)
        {
            if (num % 3 == 0)
                Console.WriteLine(num + " is multiple of the number 3");
            else
                Console.WriteLine(num + " is not multiple of 3");
        }

        public static void SendTextMethod(string txt)
        {
            Console.WriteLine("Text passed: " +txt);
        }

        public static void GetMaximunValueMethod(List<int> numbers)
        {
            Console.WriteLine(numbers.Max()+" is the maximun value of the list given.");
        }

        public static void GetMinimunValueMethod(List<int> numbers)
        {
            Console.WriteLine(numbers.Min() + " is the minimun value of the list given.");
        }

        public static void AverageDelegateMethod(List<int> avList)
        {
            Console.WriteLine("Average: "+avList.AsQueryable().Average());
        }

        public static void GetRMSMethod(List<int> numbers)
        {
            var cant= numbers.Count();
            for(int i = 0; i < numbers.Count; i++)
            {
                numbers[i] = numbers[i] * numbers[i];
            }
            int sum = numbers.Aggregate((x, y) => x + y);
            float res = sum / cant;
            Console.WriteLine("The result is: "+Math.Sqrt(res));
        }
    }
}
