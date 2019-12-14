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
    
    protected void btnBas0_Click(object sender, EventArgs e)
    {
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);
        double carpim = 1;

        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            carpim *=sayi;
            
        }
       Response.Write(basdeger+"den "+sondeger+" e kadar olan sayıların çarpımı="+carpim); 
    }
}