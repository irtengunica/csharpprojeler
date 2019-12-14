using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class uyekayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        uyebilgi.Visible = false;
    }
    protected void kaydet_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/webkent1.mdb"));
        OleDbCommand com = new OleDbCommand("insert into uyeler (uyeadi,uyesifresi,adisoyadi,dogumtarihi,meslegi) values (@uyeadi,@uyesifresi,@adisoyadi,@dogumtarihi,@meslegi)", con);
        com.Parameters.Add("@uyeadi",OleDbType.Variant).Value= kuladi.Text;
        com.Parameters.Add("@uyesifresi", OleDbType.Variant).Value = sifre.Text;
        com.Parameters.Add("@adisoyadi", OleDbType.Variant).Value = adisoyadi.Text;
        com.Parameters.Add("@dogumtarihi", OleDbType.Variant).Value = dogumtarihi.Text;
        com.Parameters.Add("@meslegi", OleDbType.Variant).Value = meslek.Text;
        con.Open();
        com.ExecuteNonQuery();
        com.Dispose();
        con.Close();
        kayit.Visible = false;
        uyebilgi.Visible = true;
        lbluser.Text = kuladi.Text;
        lblpass.Text = sifre.Text;
        lbladi.Text = adisoyadi.Text;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["adisoyadi"] = lbladi.Text;
        Response.Redirect("profil.aspx?adisoyadi=" + lbladi.Text.ToString());
    }
}
