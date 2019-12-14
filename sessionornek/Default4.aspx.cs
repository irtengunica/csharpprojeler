using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["oturum"] == "ok")
        {
            Panelgir.Visible = false;
            Panelozel.Visible = true;
            lblkulad.Text = Session["kulad"].ToString();
        }
        else
        {
            Panelgir.Visible = true;
            Panelozel.Visible = false; 
        }
        if (Request.QueryString["mesaj"] != null)
        {
            lblmesaj.Text = Request.QueryString["mesaj"].ToString();
        }
    }
    protected void btngir_Click(object sender, EventArgs e)
    {
        string yedkulad = "admin";
        string yedsifre = "1234";
        if (txtkulad.Text == yedkulad && txtsifre.Text == yedsifre)
        {
            Session["oturum"] = "ok";
            Session["kulad"] = txtkulad.Text;
            Response.Redirect("Default4.aspx");

        }
        else
        {
            lblmesaj.Text = "yanlış giriş";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default4.aspx");
    }
}