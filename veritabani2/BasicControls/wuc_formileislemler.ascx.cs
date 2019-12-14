using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class BasicControls_wuc_formileislemler : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Verilistele("select * from kullanici");
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
    protected void Buttonuyeol_Click(object sender, EventArgs e)
    {
        string sqlcumle = "insert into kullanici (kulad,sifre,ad,soyad,mail,yas,cinsiyet) values (@kulad,@sifre,@ad,@soyad,@mail,@yas,@cinsiyet)";
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0;Data Source=";
        string yol = Server.MapPath("~/App_Data/veritabani.mdb");
        OleDbConnection baglanti = new OleDbConnection(bagcumle + yol);
        OleDbCommand tekrarkontrolCommand=new OleDbCommand("select * from kullanici where kulad=@kuladkontrol",baglanti);
        tekrarkontrolCommand.Parameters.Add("@kuladkontrol", OleDbType.Variant).Value = Textkulad.Text.Trim();
        OleDbCommand veriekleCommand = new OleDbCommand(sqlcumle, baglanti);
        veriekleCommand.Parameters.Add("@kulad", OleDbType.Variant).Value = Textkulad.Text.Trim();
        veriekleCommand.Parameters.Add("@sifre", OleDbType.Variant).Value = Textsifre.Text;
        veriekleCommand.Parameters.Add("@ad", OleDbType.Variant).Value = Textad.Text.Trim();
        veriekleCommand.Parameters.Add("@soyad", OleDbType.Variant).Value = Textsoyad.Text.Trim();
        veriekleCommand.Parameters.Add("@mail", OleDbType.Variant).Value = Textmail.Text.Trim();
        veriekleCommand.Parameters.Add("@yas", OleDbType.Integer).Value = Dropyas.SelectedValue.ToString();
        veriekleCommand.Parameters.Add("@cinsiyet", OleDbType.Integer).Value = Radiocinsiyet.SelectedValue.ToString();
        veriekleCommand.Parameters.Add("@tckimlik", OleDbType.Variant).Value = Textkimlikno.Text.Trim();
        veriekleCommand.Parameters.Add("@kay_tar", OleDbType.Variant).Value = DateTime.Now.ToShortDateString(); 
        baglanti.Open();
        OleDbDataReader tekrarkontroludegeri = tekrarkontrolCommand.ExecuteReader();
        if (!(tekrarkontroludegeri.Read()))//eğer daha önce kaytı yapılmamışsa
        {
            veriekleCommand.ExecuteNonQuery();
            veriekleCommand.Dispose();
            Response.Write("kayıt başarı ile yapılmıştır");
        }
        else
        {
            Response.Write("bu kullanıcı sistemde daha önceden kaydedilmiştir.");
        }
        baglanti.Close();
        Verilistele("select * from kullanici");
    }
}