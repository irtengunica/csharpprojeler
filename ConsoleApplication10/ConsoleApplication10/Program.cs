using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO.Ports;

namespace ConsoleApplication10
{
    class Program
    {
        static SerialPort SeriPortum;
        static void Main(string[] args)
        {
            string argutopla="";
            SeriPortum = new SerialPort();
            SeriPortum.PortName = "COM11";
            SeriPortum.Parity = Parity.None;
            SeriPortum.BaudRate = 9600;
            SeriPortum.DataBits = 8;
            SeriPortum.StopBits = StopBits.One;
            try
            {
                if (SeriPortum.IsOpen == false)  //Seri port açık değilse seri port açılıyor
                {
                    SeriPortum.Open();           //Seri porttan veri iletişimi böylece başlamış oluyor   
                }
            }
            catch
            {
                Console.WriteLine("Bağlantı kurulamadı! Lütfen girdiğiniz port değerlerini kontrol edin:" + SeriPortum.PortName.ToString() + "," + SeriPortum.BaudRate.ToString());
                return;
            }

            for (int i = 0; i < args.Length; i++)
            {
                Console.WriteLine("Arg: {0}", args[i]);
                argutopla += " "+args[i]  ;
            }
            Console.WriteLine(argutopla);
            //SeriPortum.WriteLine(" LR1800 UD1800 LZ1");
           // argutopla = " LR1700 UD1700 LZ0";
            SeriPortum.WriteLine(argutopla);
            /*if (args == null)
            {
                SeriPortum.WriteLine("LR2000 UD1000 LZ1"); 
            }
            else
            {
                SeriPortum.WriteLine(args[1]);
            }*/
            //SeriPortum.Close();
        }
    }
}
