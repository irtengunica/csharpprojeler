using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class mesaj : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adisoyadi"] == null)
        {
            Response.Redirect("Default.aspx");
        }

        isim.Text = Session["adisoyadi"].ToString();
        kime.Text = Request.QueryString["adisoyadi"];
        tarih.Text = DateTime.Now.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/webkent1.mdb"));
        OleDbCommand com = new OleDbCommand("insert into mesajlar(kimden,adisoyadi,mesaj,tarih,durum,durumres) values (@kimden,@adisoyadi,@mesaj,@tarih,@durum,@durumres)", con);
        com.Parameters.Add("@kimden", OleDbType.Variant).Value = kimden.Text;
        com.Parameters.Add("@adisoyadi", OleDbType.Variant).Value = isim.Text;
        com.Parameters.Add("@mesaj", OleDbType.Variant).Value = pmesaj.Text;
        com.Parameters.Add("@tarih", OleDbType.Variant).Value = tarih.Text;
        com.Parameters.Add("@durum", OleDbType.Variant).Value = "0";
        com.Parameters.Add("@durumres", OleDbType.Variant).Value = "resim/okunmadi.png";
        con.Open();
        com.ExecuteNonQuery();
        com.Dispose();
        con.Close();
        onay.Text = "Mesaj yollandı";
    }
}
