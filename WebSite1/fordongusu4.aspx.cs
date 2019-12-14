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
        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {

            Response.Write("<font size=30 color=red>" + sayi + "</font><br>");

        }
    }
}