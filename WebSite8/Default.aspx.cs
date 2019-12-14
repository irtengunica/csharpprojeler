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
        int a, b, c, d;
        a = 2;
        b = 3;
        c = ++b;
        d = a++;
        Response.Write("a="+a);
        Response.Write("<br>");
        Response.Write("b="+b);
        Response.Write("<br>");
        Response.Write("c="+c);
        Response.Write("<br>");
        Response.Write("d="+d);
        Response.Write("<br>");
        Response.Write("a=" + a);
        Response.Write("<br>");
        Response.Write("b=" + b);
        
    }
}