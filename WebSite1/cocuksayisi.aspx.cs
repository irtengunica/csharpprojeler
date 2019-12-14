using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cocuksayisi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DrlistCinsiyet_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DrlistCinsiyet.SelectedIndex == 0)
        {
            PanelBay.Visible = true;
            PanelBayan.Visible = false;
        }
        if (DrlistCinsiyet.SelectedIndex == 1)
        {
            PanelBay.Visible = false;
            PanelBayan.Visible = true;
        }
    }
    protected void DrlistCocuksayisi1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DrlistCocuksayisi.SelectedIndex == 1)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }
        else if (DrlistCocuksayisi.SelectedIndex == 2)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = false;
            Panel4.Visible = false;
        }
        else if (DrlistCocuksayisi.SelectedIndex == 3)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = false;
        }
        else if (DrlistCocuksayisi.SelectedIndex == 4)
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel3.Visible = true;
            Panel4.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

    }
}