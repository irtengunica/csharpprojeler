using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["login"] != null)
        {
            HttpCookie c = new HttpCookie("login");
            c.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(c);
        }
        Response.Redirect("Default.aspx");
    }
}