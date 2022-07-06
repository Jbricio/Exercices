using System;
using System.Collections.Generic;
using System.Text;

namespace Calculator
{
    class Program
    {

        static void Main(string[] args)
        {
            bool a = true;
            do
            {
                Console.WriteLine("Enter the action to be performed");
                Console.WriteLine("Press 1 for Addition");
                Console.WriteLine("Press 2 for Subtraction");
                Console.WriteLine("Press 3 for Multiplication");
                Console.WriteLine("Press 4 for Division \n");
                int action = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Enter the first number");
                decimal num1 = Convert.ToDecimal(Console.ReadLine());
                Console.WriteLine("Enter the second number");
                decimal num2 = Convert.ToDecimal(Console.ReadLine());
                decimal result = 0;
                switch (action)
                {
                    case 1:
                        {
                            result = Addition(num1, num2);
                            break;
                        }
                    case 2:
                        {
                            result = Subtraction(num1, num2);
                            break;
                        }
                    case 3:
                        {
                            result = Multiplication(num1, num2);
                            break;
                        }
                    case 4:
                        {
                            result = Division(num1, num2);
                            break;
                        }
                    default:
                        Console.WriteLine("Wrong action! try again");
                        break;

                }
                Console.WriteLine("The result is {0}", result);
                bool x = true;
                do
                {

                    Console.WriteLine("Do you want to calculate again?  [1]yes  [2]no");
                    int choice = Convert.ToInt32(Console.ReadLine());
                    switch (choice)
                    {
                        case 1:
                            {
                                Console.Clear();
                                x = false;
                                break;
                            }
                        case 2:
                            {
                                a = false;
                                break;
                            }
                        default:
                            Console.WriteLine("Wrong choice, try again.");
                            break;
                    }
                } while (x == true);

            } while (a == true);
        }


        public static decimal Addition(decimal x, decimal y)
        {
            decimal result = x + y;
            return result;
        }

        public static decimal Subtraction(decimal x, decimal y)
        {
            decimal result = x - y;
            return result;
        }

        public static decimal Multiplication(decimal x, decimal y)
        {
            decimal result = x * y;
            return result;
        }

        public static decimal Division(decimal x, decimal y)
        {
            decimal result = x / y;
            return result;
        }
    }
}