using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_kulkontrol : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["oturum"] == "ok")
        {
            pnlgiris.Visible = true;
            pnlkulkontrol.Visible = false;
            lblkulad.Text = Session["kulad"].ToString();
        }
        else
        {
            pnlgiris.Visible = false;
            pnlkulkontrol.Visible = true;
        }
    }
    protected void btngir_Click(object sender, EventArgs e)
    {
        string geckulad = "admin";
        string gecsifre = "1234";
        if (txtkulad.Text==geckulad && txtsifre.Text==gecsifre)
        {
            Session["oturum"] = "ok";
            Session["kulad"] = txtkulad.Text;
            Response.Redirect("Default6.aspx");
        }
        else
        {
            lblmesaj.Text = "yanlış giriş";

        }
    }
    protected void btncik_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default6.aspx");
    }
}