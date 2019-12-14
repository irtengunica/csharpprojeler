using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class BasicControls_wuc_listele : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
  string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
            string yol = Server.MapPath("App_Data/veritabani.mdb");
            bagcumle += yol;
            string sqcumlesi = "select * from kullanici";
            OleDbConnection baglanti=new OleDbConnection(bagcumle);
            OleDbCommand tabloyabaglan = new OleDbCommand(sqcumlesi, baglanti);
            baglanti.Open();
            OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        GridView1.DataSource = tablodanal;
        GridView1.DataBind();
        baglanti.Close();
    
    }
    protected void btngetir_Click(object sender, EventArgs e)
    {
        lblaciklama.Text = txtaciklama.Text;
        lblsqlkodu.Text = txtsql.Text;
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
        string yol = Server.MapPath("App_Data/veritabani.mdb");
        bagcumle += yol;
        string sqcumlesi = txtsql.Text;
        OleDbConnection baglanti = new OleDbConnection(bagcumle);
        OleDbCommand tabloyabaglan = new OleDbCommand(sqcumlesi, baglanti);
        baglanti.Open();
        OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        GridView2.DataSource = tablodanal;
        GridView2.DataBind();
        baglanti.Close();
    }
}