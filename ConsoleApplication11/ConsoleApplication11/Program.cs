using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.IO.Ports;

namespace ConsoleApplication11
{
    class Program
    {
        static SerialPort SeriPortum;
        private static string argutopla;
        static void Main(string[] args)
        {
            Thread thread1 = new Thread(new ThreadStart(ThreadFuncEven));
            for (int i = 0; i < args.Length; i++)
            {
                Console.WriteLine("Arg: {0}", args[i]);
                argutopla += " " + args[i];
            }
           // argutopla = " LR1000 UD800 LZ1";
            thread1.Start();
        }
        static void ThreadFuncEven()
        {
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
            SeriPortum.WriteLine(argutopla);
            Thread.Sleep(1000);
            SeriPortum.Close();
            
        }
    }
}
