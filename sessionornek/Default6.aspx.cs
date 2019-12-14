using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    Random sayi = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
        Session["deger"]=sayi.Next(0,100).ToString();
            Response.Write(Session["deger"]);
        }
    }
    protected void BtnGir_Click(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["deger"]) == Convert.ToInt32(txtsayi.Text))
        {
            Response.Write("Doğru tahmin");
        }
        if (Convert.ToInt32(Session["deger"]) > Convert.ToInt32(txtsayi.Text))
        {
            Response.Write("Sayıyı büyült");
        }
        if (Convert.ToInt32(Session["deger"]) < Convert.ToInt32(txtsayi.Text))
        {
            Response.Write("Sayıyı küçült");
        }
    }
}