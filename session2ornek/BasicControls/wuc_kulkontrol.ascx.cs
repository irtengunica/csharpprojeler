using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class BasicControls_wuc_kulkontrol : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["oturum"] == "ok")
        {
            pnlgiris.Visible = true;
            pnlkulkontrol.Visible = false;
            lblkulad.Text = Session["kulad"].ToString();
        }
        else
        {
            pnlgiris.Visible = false;
            pnlkulkontrol.Visible = true;
        }
    }
    protected void btngir_Click(object sender, EventArgs e)
    {
        string baglantistringi = "Server=localhost;User Id=root; Password=0123456789; Database=deneme_db; Pooling=false";
        MySqlConnection baglanti=new MySqlConnection(baglantistringi);
        baglanti.Open();
        string tabloyabaglansql = "select * from users where kulad='"+txtkulad.Text+"' and sifre='"+txtsifre.Text+"'";
        MySqlCommand sqlkomut = new MySqlCommand(tabloyabaglansql, baglanti);
        MySqlDataReader verioku = sqlkomut.ExecuteReader();
        if (verioku.Read())
        {
            Session["oturum"] = "ok";
            Session["kulad"] = txtkulad.Text;
            Response.Redirect("Default5.aspx");
        }
        else
        {
            lblmesaj.Text = "yanlış giriş";

        }
        baglanti.Close();
    }
   
    protected void btncik_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default5.aspx");
    }
}