using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_register : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        FruitsWork FW = new FruitsWork();
        if (FW.register(Txtuser.Text, txtpass.Text, txtemail.Text) == true)
        {
            FW.login(Txtuser.Text, txtpass.Text);
       
            HttpCookie c = new HttpCookie("login");
            c.Values.Add("user",Txtuser.Text);
            Response.Cookies.Add(c);
            Response.Redirect("default.aspx");
            
        }
        else
            lblMsg.Text= "User already exist, please change username";
    }
}