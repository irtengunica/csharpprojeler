using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class BasicControls_wuc_selectkullanimi : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Verilistele("select * from kullanici");
    }
    protected void Buttonsqlcalistir_Click(object sender, EventArgs e)
    {
        Verilistele(TextBoxsqlcumle.Text);
    }

    void Verilistele(string sqlveri)
    {
        string sqlcumle = sqlveri;
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
        string yol = Server.MapPath("~/App_Data/veritabani.mdb");
        OleDbConnection baglanti = new OleDbConnection(bagcumle + yol);
        OleDbCommand tabloyabaglan = new OleDbCommand(sqlcumle, baglanti);
        baglanti.Open();
        OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        GridViewlistele.DataSource = tablodanal;
        GridViewlistele.DataBind();
        baglanti.Close();
    }
    protected void BTNislem_Click(object sender, EventArgs e)
    {
        string sqlcumle = txteklesildegis.Text;
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
        string yol = Server.MapPath("~/App_Data/veritabani.mdb");
        OleDbConnection baglanti = new OleDbConnection(bagcumle + yol);
        OleDbCommand tabloyabaglan = new OleDbCommand(sqlcumle, baglanti);
        baglanti.Open();
        OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        baglanti.Close();
        Verilistele("select * from kullanici");
    }
}