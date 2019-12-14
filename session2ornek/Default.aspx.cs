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
            Session["oturum"] = 5;
            Session.Timeout = 10;
        }
        Response.Write(Session["oturum"].ToString());
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["oturum"] = 0;
        //Session.Abandon();
    }
}