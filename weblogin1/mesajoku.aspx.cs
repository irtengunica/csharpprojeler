using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class mesajoku : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["mesajid"];
        string kdurum = "1";
        string kdurumres = "resim/okundu.png";
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/webkent1.mdb"));
        OleDbCommand com = new OleDbCommand("UPDATE mesajlar SET durum='" + kdurum + "', durumres='" + kdurumres + "' where mesajid=@mesajid", con);
        com.Parameters.Add("@mesajid", OleDbType.Variant).Value = id;
        con.Open();
        com.ExecuteNonQuery();
        com.Dispose();
        con.Close();
    }
}
