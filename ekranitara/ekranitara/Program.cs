using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.IO.Ports;

namespace ekranitara
{
    class Program
    {
        static SerialPort SeriPortum;
        private static string argutopla;
        static void Main(string[] args)
        {
           
            Thread thread1 = new Thread(new ThreadStart(ThreadFuncEven));
            System.Threading.Thread.Sleep(1000);
            thread1.Start();
            
            
            // argutopla = " LR1000 UD800 LZ1";
            

        }
        static void ThreadFuncEven()
        {
            int lr = 1400, ud = 1400, lz = 0, artis=50;
            bool ardurum = true;
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
            
            while (lr <= 1600)
            {

                while (ud <= 1600)
                {
                    argutopla = " LR" + Convert.ToString(lr) + " UD" + Convert.ToString(ud) + " LZ" + Convert.ToString(lz);
                    ud += artis;
                    //if (ud > 1600) ud = 1600;
                    //Console.WriteLine(argutopla);
                    SeriPortum.WriteLine(argutopla);
                    Thread.Sleep(500);
                    
                }
                if (ardurum)
                {
                    lr += artis;
                    ardurum = false;
                }
                
                //if (lr > 1600) lr = 1600;
                
                while (ud >= 1400)
                {
                    argutopla = " LR" + Convert.ToString(lr) + " UD" + Convert.ToString(ud) + " LZ" + Convert.ToString(lz);
                    ud -= artis;
                    //if (ud < 1600) ud = 1600;
                    //Console.WriteLine(argutopla);
                    SeriPortum.WriteLine(argutopla);
                    Thread.Sleep(500);

                }
                if (!ardurum)
                {
                    lr += artis;
                    ardurum = true;
                }
                ud = 1400;



            }
            argutopla = " LR1500 UD1500 LZ0";
            SeriPortum.WriteLine(argutopla);
            Thread.Sleep(500);
            SeriPortum.Close();
            //Console.ReadKey();

        }
    }
}
