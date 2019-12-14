using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    void verigetir()
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/webkent1.mdb"));
        OleDbCommand com = new OleDbCommand("SELECT COUNT(*) FROM mesajlar WHERE adisoyadi=@adisoyadi and durum = 0", con);
        com.Parameters.Add("@adisoyadi", OleDbType.Variant).Value = Session["adisoyadi"].ToString();
        con.Open();
        int sayi = Convert.ToInt32(com.ExecuteScalar());
        Label1.Text = "(" + "" + sayi.ToString() + "" + ") Yeni Mesaj Var.";
        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adisoyadi"] == null)
        {
            panel1.Visible = true;
            panel2.Visible = false;
        }

        else
        {
            panel1.Visible = false;
            panel2.Visible = true;
            verigetir();
        }
    }

    protected void giris_Click(object sender, EventArgs e)
    {
        OleDbConnection con = new OleDbConnection("Provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("~/App_Data/webkent1.mdb"));
        OleDbCommand com = new OleDbCommand("Select * From uyeler where uyeadi='" + kuladi.Text + "' and uyesifresi='" + kulsifre.Text + "'", con);
        con.Open();
        OleDbDataReader oku = com.ExecuteReader();
        if (oku.Read())
        {
            Session["uyeid"] = oku["uyeid"].ToString();
            Session["adisoyadi"] = oku["adisoyadi"].ToString();
            panel1.Visible = false;
            verigetir();
            panel2.Visible = true;
            
        }
        else
        {
            hata.Text = "Kullanıcı Adı yada Şifre Yanlış";
        }
        oku.Close();
        con.Close();
    }
}
