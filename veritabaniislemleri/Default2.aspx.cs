using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        RadioButtonList1.SelectedIndex = 1;
    }
    protected void Buttonbay_Click(object sender, EventArgs e)
    {
        RadioButtonList1.SelectedIndex = 0;
    }
}