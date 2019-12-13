using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ysa2
{
    class Program
    {

      
        static void Main(string[] args)
        {
            float[] inputs = { 12, 4 };
            float[] weights = { 5, -1 };
           
double sum = 0;
            int output1=0;
for (int i = 0; i < 2; i++) 
{
  sum += inputs[i]*weights[i];
    if (sum > 0)
    {
        output1 = 1;
    }
    else
    {
        output1 = -1;
    }
}


        }

    }
}
