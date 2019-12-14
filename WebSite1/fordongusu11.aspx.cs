using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fordongusu11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<table border=1>");
        for (int sayi1 = 1; sayi1 <= 10; sayi1++)
        {
            Response.Write("<tr>");
            for (int sayi2 = 1; sayi2 <= 10; sayi2++)
            {
                Response.Write("<td>"+sayi1+"*"+sayi2 + "="+sayi1*sayi2+"</td>");
            }
            Response.Write("</tr>");
        }
        Response.Write("</table>");
    }
}