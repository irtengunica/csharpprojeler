using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fordongusu1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        for (int Sayi1=10; Sayi1> 0; Sayi1--)
        {
            
            Response.Write("Sayi  değeri:" + Sayi1 + "<br>");
            continue;
        }
    }
}