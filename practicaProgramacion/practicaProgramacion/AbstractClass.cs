using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace practicaProgramacion
{
    internal abstract class Animal
    {
        protected internal string ojos;
        protected internal string cabeza;

        protected internal abstract void ruido();

        protected internal  abstract void moverse();
    }
}
