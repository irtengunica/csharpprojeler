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
    protected void btnEkranayaz_Click(object sender, EventArgs e)
    {
        int sayi1, sayi2, sayi3;
        string karakter1 = TxtKarekter1.Text;
        string karakter2 = TxtKarekter2.Text;
        int satir = Convert.ToInt32(txtsatirsayisi.Text);
        for (sayi1 = satir; sayi1 >= 1; sayi1--)
        {
            for (sayi2 = 1; sayi2 <= sayi1; sayi2++)
            {
                Response.Write(karakter1);
            }
            for (sayi3 =satir; sayi3>=sayi1; sayi3--)
            {
                Response.Write(karakter2);
            }
           
            Response.Write("<br>");
        }
    }
}