using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class BasicControls_wuc_KulKontrol : System.Web.UI.UserControl
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
           /* string geckulad = "admin";
            string gecsifre = "1234";*/
            string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
            string yol = Server.MapPath("App_Data/vt.mdb");
            bagcumle += yol;
            string sqcumlesi = "select * from Uye where kullanici=@kullanici and sifre=@sifre";
            OleDbConnection baglanti=new OleDbConnection(bagcumle);
            OleDbCommand tabloyabaglan = new OleDbCommand(sqcumlesi, baglanti);
            tabloyabaglan.Parameters.Add("@kullanici", OleDbType.Variant).Value = txtkulad.Text;
            tabloyabaglan.Parameters.Add("@sifre", OleDbType.Variant).Value = txtsifre.Text;
            baglanti.Open();
            OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();

            if (tablodanal.Read())
            {
                Session["oturum"] = "ok";
                Session["kulad"] = txtkulad.Text;
                Response.Redirect("Default.aspx");

            }
            else
            {
                lblmsj.Text = "Yanlış Giriş";
            }
            baglanti.Close();
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