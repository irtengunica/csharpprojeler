using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class uyeol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Buttonuyeol_Click(object sender, EventArgs e)
    {
        string bagcumle = "Provider=Microsoft.Jet.OleDb.4.0; Data Source=";
        string yol = Server.MapPath("~/App_Data/veritabani.mdb");
        string sqlcumle = "select * from kullanici where kulad=kuladkontrol";
        OleDbConnection baglanti = new OleDbConnection(bagcumle + yol);
        //kullanıcı sistemde varmı yokmu kontrolu için gerekli sql
        OleDbCommand tabloyabaglan = new OleDbCommand(sqlcumle, baglanti);
        tabloyabaglan.Parameters.Add("@kuladkontrol", OleDbType.Variant).Value = Textkulad.Text;
        //sisteme yeni kullanıcı ekleyen gerekli sql
        string yenieklesql = "insert into kullanici" +
               "(kulad,sifre,ad,soyad,mail,yas,cinsiyet,tckimlik,resim,kay_tar)" +
               "values(@kulad,@sifre,@ad,@soyad,@mail,@yas,@cinsiyet,@tckimlik,@resim,@kay_tar)";
        OleDbCommand veriekle = new OleDbCommand(yenieklesql, baglanti);
        veriekle.Parameters.Add("@kulad", OleDbType.Variant).Value = Textkulad.Text.Trim();
        veriekle.Parameters.Add("@sifre", OleDbType.Variant).Value = Textsifre.Text;
        veriekle.Parameters.Add("@ad", OleDbType.Variant).Value = Textad.Text.Trim();
        veriekle.Parameters.Add("@soyad", OleDbType.Variant).Value = Textsoyad.Text.Trim();
        veriekle.Parameters.Add("@mail", OleDbType.Variant).Value = Textmail.Text;
        veriekle.Parameters.Add("@yas", OleDbType.Integer).Value = Dropyas.SelectedValue.ToString();
        veriekle.Parameters.Add("@cinsiyet", OleDbType.Boolean).Value = Radiocinsiyet.SelectedValue.ToString();
        veriekle.Parameters.Add("@tckimlik", OleDbType.Variant).Value = Textkimlikno.Text.Trim();
        veriekle.Parameters.Add("@resim", OleDbType.Variant).Value = resimalfonk();
        veriekle.Parameters.Add("@kay_tar", OleDbType.Variant).Value = DateTime.Now.ToShortDateString(); 
        
        baglanti.Open();
        OleDbDataReader tablodanal = tabloyabaglan.ExecuteReader();
        if (!(tablodanal.Read()))
        {//okuma yok yani kayıt yok ise kayıt yap
            veriekle.ExecuteNonQuery();
            veriekle.Dispose();
            Response.Write("Kayıt Başarı ile yapılmıştır.");
        }
        else 
        {//kayıt var ise
            Response.Write("Bu kullanıcı adı sistemde kayıtlıdır.");
        }
       baglanti.Close();
    }
    public string deneme2()
    {
        //resim yükleme
        FileUpload1.SaveAs(Server.MapPath("image/") + FileUpload1.FileName);
        Response.Write(FileUpload1.FileName.ToString());
        
        string yolal="image/" + FileUpload1.FileName;
        return yolal;
        int dosyaboyutu = FileUpload1.PostedFile.ContentLength / 1024;
        string dosyaturu = FileUpload1.PostedFile.ContentType.ToString();
        Response.Write("<br>");
        Response.Write("indirdiğiniz dosya turu=" + dosyaturu);
        Response.Write("<br>");
        Response.Write("indirdiğiniz dosya boyutu=" + dosyaboyutu + " KByte 'dır");
        //resimyükleme bitis
    }
    public string resimalfonk()
    {
        FileUpload1.SaveAs(Server.MapPath("image/"+FileUpload1.FileName));
        string yolal="image/"+FileUpload1.FileName;
        return yolal;
     }

}
