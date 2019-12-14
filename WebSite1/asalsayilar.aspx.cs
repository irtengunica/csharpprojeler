using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAsalkontrol_Click(object sender, EventArgs e)
    {
        bool durum = true;
        int sayi =Convert.ToInt32(txtSayi.Text);
        if (sayi == 1 || sayi == 2 || sayi == 3)
        {
            Response.Write("Sayı asaldır.");
        }
        else
        {
            for (int dondeger = 2; dondeger < sayi; dondeger++)
            {
               if(sayi%dondeger==0)
               {
                   Response.Write("Sayı asal değildir"+dondeger);
                   durum = true;
                   break;
               }
               else 
               {
                   durum = false;
               }

            }
            if(durum==false)
            {
                Response.Write("<h1>Sayı asaldır</h1>");
            }
        }
    }
}