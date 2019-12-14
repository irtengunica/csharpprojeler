using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_kullaniciform : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["oturum"] == "ok")
        {
            Pnlgir.Visible = false;
            Pnluser.Visible = true;
            lblkulad.Text = Session["kulad"].ToString();
        }
        else
        {
            Pnlgir.Visible = true;
            Pnluser.Visible = false;
        }


    }
    protected void btngir_Click(object sender, EventArgs e)
    {
        try
        {
            string geckulad = "admin";
            string gecsifre = "1234";

            if (txtkulad.Text == geckulad && txtsifre.Text == gecsifre)
            {
                Session["oturum"] = "ok";
                Session["kulad"] = txtkulad.Text;
                Response.Redirect("Default.aspx");

            }
            else
            {
                lblmsj.Text = "Yanlış Giriş";
            }

        }
        catch
        {
            ;
        }
    }
    protected void lbutonoturumukapat_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}