using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PracticaProgramacionIntermedia1
{
    [Serializable]
    internal class FindNullValueException : NullReferenceException
    {
        internal  FindNullValueException(string message):base (message)
        {
        }
    }
}
