using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fordongusu3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnBas_Click(object sender, EventArgs e)
    {
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);
        int toplam = 0;
  
        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            if (sayi % 57 == 0)
            {
                toplam += sayi;
            }
         
        }
        Response.Write(basdeger + "den " + sondeger + " e kadar 57 ye bölünen sayıların toplamı=" + toplam); 
    }
}