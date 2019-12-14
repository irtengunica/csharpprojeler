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
        if (!IsPostBack)
        {
            Session["ad"] = "ahmet";
            Session.Timeout=1;
        }
        Response.Write(Session["ad"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}