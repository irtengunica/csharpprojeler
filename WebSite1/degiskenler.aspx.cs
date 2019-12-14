using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class degiskenler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int sayi1=10;
        int sayi2=22;
        int toplam;
          toplam = sayi1 + sayi2;
          Response.Write("1. sayı=" + sayi1);
          Response.Write("<br>");
          Response.Write("2. sayı=" + sayi2);
          Response.Write("<br>");
          Response.Write("Sayıların toplamı:");
        Response.Write(toplam);
        Response.Write("<br>");
        Response.Write(sayi1+sayi2<sayi1*sayi2);//Karşılaştırma operatörü kullanımı
        Response.Write(sayi1 > sayi2 || sayi1 < sayi2);//mantıksal operatörü kullanımı
    }
}