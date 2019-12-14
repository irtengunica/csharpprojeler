using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["oturum"] == "ok")
        {
            Panelgiris.Visible = false;
            Panelyetkili.Visible = true;
            Labelyetkili.Text = Session["adisoyadi"].ToString();
           Imagekulresim.ImageUrl= Session["resim"].ToString();
        }
        else 
        {
            Panelgiris.Visible = true;
            Panelyetkili.Visible =false ;
        }
    }
    protected void Buttonkulgir_Click(object sender, EventArgs e)
    {
        string bagcumle="Provider=Microsoft.Jet.OleDb.4.0; Data Source=";
        string yol=Server.MapPath("~/App_Data/veritabani.mdb");
        string sqlcumle="select * from kullanici where kulad=@kulad and sifre=@sifre";
        OleDbConnection baglanti = new OleDbConnection(bagcumle+yol);
        OleDbCommand tabloyabaglan = new OleDbCommand(sqlcumle,baglanti);
        tabloyabaglan.Parameters.Add("@kulad", OleDbType.Variant).Value = Textkuladgir.Text;
        tabloyabaglan.Parameters.Add("@sifre", OleDbType.Variant).Value = Textsifregir.Text;
        baglanti.Open();
        OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        if(tablodanal.Read())
        {
            Session["oturum"] = "ok";
            Session["kulad"] = tablodanal["kulad"].ToString();
            Session["adisoyadi"] = tablodanal["ad"].ToString() + " " + tablodanal["soyad"].ToString();
            Session["resim"] = tablodanal["resim"].ToString();
            Response.Redirect("default.aspx");
        }else
        {
            Labelgirmesaj.Text="Kullanıcı adı veya şifre yanlış.";
        }

        baglanti.Close();

    }
    protected void Linkoturumukapat_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("default.aspx");
    }


    protected void Textkuladara_TextChanged(object sender, EventArgs e)
    {
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=";
        string yol = Server.MapPath("~/App_Data/veritabani.mdb");
        string sqlcumle = "select * from kullanici where kulad like @kulad";
        OleDbConnection baglanti = new OleDbConnection(bagcumle + yol);
        OleDbCommand tabloyabaglan = new OleDbCommand(sqlcumle, baglanti);
        tabloyabaglan.Parameters.Add("@kulad", OleDbType.Variant).Value = Textkuladara.Text+"%";
        baglanti.Open();
    }
}