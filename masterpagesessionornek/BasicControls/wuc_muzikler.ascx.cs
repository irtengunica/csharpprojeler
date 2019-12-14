using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_muzikler : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["oturum"] == "ok")
        {
            pnlgenel.Visible = false;
            pnlozel.Visible = true;

        }
        else
        {
            pnlgenel.Visible = true;
            pnlozel.Visible = false;
        }
    }
}