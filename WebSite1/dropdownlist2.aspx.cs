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
        for (int say = 0; say <= 30; say++) 
        { 
            DropDownList1.Items.Add("a1");
            DropDownList1.Items[say].Text =Convert.ToString(say);
            DropDownList1.Items[say].Value = Convert.ToString(say);
        }
    }
}