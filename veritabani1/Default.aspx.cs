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
            Panelozel.Visible = true;
            Labelkarsilama.Text = "Sayın " + Session["kulad"] + " sayfamıza hoşgeldiniz";
        }
    }
    protected void Buttonac_Click(object sender, EventArgs e)
    {
        //string kulad = "admin";
        //string sifre = "1234";
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
        string yol = Server.MapPath("~/App_Data/veritabani1.mdb");
        string sqlcumlesi = "select * from kullanici where kulad=@kulad and sifre=@sifre";
        OleDbConnection baglanti = new OleDbConnection(bagcumle+yol);// veritabanı dosyasına bağlandı
        OleDbCommand tabloyabaglan = new OleDbCommand(sqlcumlesi, baglanti);
        tabloyabaglan.Parameters.Add("@kulad", OleDbType.Variant).Value = TextBoxkulad.Text;
        tabloyabaglan.Parameters.Add("@sifre", OleDbType.Variant).Value = TextBoxsifre.Text;
        baglanti.Open();
        OleDbDataReader tablodanal=tabloyabaglan.ExecuteReader();
        if (tablodanal.Read())
        { 
            Session["oturum"] = "ok";
        Session["kulad"] = tablodanal["kulad"].ToString();
        Response.Redirect("default.aspx");
        }
        baglanti.Close();
    }
    protected void Buttonkapat_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("default.aspx");
    }

}