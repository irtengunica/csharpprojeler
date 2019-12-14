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
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +
                                                                Server.MapPath("App_Data/veritaban.mdb"));
        OleDbCommand tabloyabaglan = new OleDbCommand("select * from kulanici", baglanti);
        baglanti.Open();
        OleDbDataReader tablodanverial = tabloyabaglan.ExecuteReader();
        GridView1.DataSource = tablodanverial;
        GridView1.DataBind();
        baglanti.Close();
    }
}