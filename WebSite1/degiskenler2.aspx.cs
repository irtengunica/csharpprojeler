using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class degiskenler2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int sayiA, sayiC;
        double sayiB;
        sayiA = 5;
        sayiB = 2.25;
        sayiC = 3;
        Response.Write("SayiA=" + sayiA);
        Response.Write("<br>");
        Response.Write("SayiB=" + sayiB);
        Response.Write("<br>");
        Response.Write("SayiC=" + sayiC);
        Response.Write("<br>");
        Response.Write("----------------Birinci soru bitti--------------- ");
        Response.Write("<br>");
        int sayiD,sayiE;
        sayiD = 64424;
        sayiE = 253796354;
        Response.Write("SayiD=" + sayiD);
        Response.Write("<br>");
        Response.Write("SayiE=" + sayiE);
        Response.Write("<br>");
        Response.Write("----------------ikinci soru bitti--------------- ");
        Response.Write("<br>");
        char Karakter = 'a';
        int sayiF;
        sayiF = 242;
        Response.Write("SayiF=" + sayiF);
        Response.Write("<br>");
        Response.Write("Karakter=" + Karakter);
        Response.Write("<br>");
        Response.Write("----------------üçüncü soru bitti--------------- ");
        Response.Write("<br>");

    }
}