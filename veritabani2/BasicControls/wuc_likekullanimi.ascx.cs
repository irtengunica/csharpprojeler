using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class BasicControls_wuc_likekullanimi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
        string yol = Server.MapPath("~/App_Data/veritabani.mdb");
        string sqlcumle = "select * from kullanici";
        OleDbConnection baglanti = new OleDbConnection(bagcumle + yol);
        OleDbCommand tabloyabaglan = new OleDbCommand(sqlcumle, baglanti);
        baglanti.Open();
        OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        GridViewlistele.DataSource = tablodanal;
        GridViewlistele.DataBind();
        baglanti.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
        string yol = Server.MapPath("~/App_Data/veritabani.mdb");
        string sqlcumle = "select * from kullanici where kulad like @kulad ";
        OleDbConnection baglanti = new OleDbConnection(bagcumle + yol);
        OleDbCommand tabloyabaglan = new OleDbCommand(sqlcumle, baglanti);
        tabloyabaglan.Parameters.Add("@kulad", OleDbType.VarChar).Value = "%" + TextBox1.Text + "%";
        baglanti.Open();
        OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        GridViewlistele.DataSource = tablodanal;
        GridViewlistele.DataBind();
        baglanti.Close();
    }
}