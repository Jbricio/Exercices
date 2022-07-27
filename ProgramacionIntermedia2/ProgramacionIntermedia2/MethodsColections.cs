using System;
using System.Collections.Generic;
using System.Linq;

namespace ProgramacionIntermedia2
{
    public static class MethodsColections
    {
        public static void ReverseWithQueue(Queue<int> queque)
        {
            Stack<int> stack = new Stack<int>();
            while(queque.Count > 0)
            {
                stack.Push(queque.Dequeue());
            }
            while(stack.Count > 0)
            {
                queque.Enqueue(stack.Pop());
            }
            do
            {
                Console.WriteLine(queque.Dequeue());
            } while (queque.Count > 0);
        }

        public static void ReverseWithList(List<int> list)
        {
            list.Reverse();
            foreach(var element in list)
            {
                Console.WriteLine(element);
            }
        }

        public static void ReverseWithDictionary(Dictionary<int,string> dic)
        {
            Dictionary<int,string> resultDic = new Dictionary<int,string>();
            foreach(var item in dic.Reverse())
            {
                resultDic[item.Key] = item.Value;
                Console.WriteLine(item.Key.ToString(),item.Value);
            }
            
        }
    }
}
