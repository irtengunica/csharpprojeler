using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class BasicControls_wuc_liste : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
            string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
            string yol = Server.MapPath("App_Data/vt.mdb");
            bagcumle += yol;
            string sqcumlesi = "select * from Uye";
            OleDbConnection baglanti=new OleDbConnection(bagcumle);
            OleDbCommand tabloyabaglan = new OleDbCommand(sqcumlesi, baglanti);
            baglanti.Open();
            OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        GridView1.DataSource = tablodanal;
        GridView1.DataBind();
        baglanti.Close();
    }
}