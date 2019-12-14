using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fordöngüsü : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdyaz_Click(object sender, EventArgs e)
    {
        try { 
        int sayiBas=Convert.ToInt32(txtSayi1.Text);
        int sayiBit=Convert.ToInt32(txtsayi2.Text);
        for (int i = sayiBas; sayiBas <= sayiBit; sayiBas++)
        {
            Response.Write("adınız"+"<br>");
        }
        
        
        
        }
        catch { ;}
    }
}