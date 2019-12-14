using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yasornek : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int not;
        try
        {
            not = Convert.ToInt32(TextBox1.Text);
            if(not<=100 && not>=85)
                Label1.Text="Notunuz 5";
            
        }
        catch { ;}
    }
}