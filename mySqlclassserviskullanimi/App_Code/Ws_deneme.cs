using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data; //bu satırı kod bölümüne ekliyoruz
using MySql.Data; //bu satırı kod bölümüne ekliyoruz
using MySql.Data.MySqlClient; //bu satırı kod bölümüne ekliyoruz

/// <summary>
/// Summary description for Ws_deneme
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Ws_deneme : System.Web.Services.WebService {
    MySqlConnection baglanti = new MySqlConnection();//mysql bağlantısı oluşturma
    MySqlCommand mysqlkomut = new MySqlCommand();//mysql komut oluşturma
    public Ws_deneme () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    private void veritabanibagla(string sqlsorgu)
    {
        baglanti.ConnectionString =
            "Server=localhost;User Id=root; Password=0123456789; Database=deneme_db; Pooling=false";
        baglanti.Open();
        mysqlkomut.Connection = baglanti;
        mysqlkomut.CommandText = sqlsorgu;
    } //veri tabanı varlığını sorgula
    private void veritabanikapat()
    {
        baglanti.Close();
    }//işlem bittiğinde veritabanını kapat
    public DataTable SqlSecmesorgusu(string sqlsorgu)
    {
        veritabanibagla(sqlsorgu);
        DataTable tbl = new DataTable();
        tbl.Load(mysqlkomut.ExecuteReader());
        veritabanikapat();
        return tbl;//veritabanından sorgulamam yapma
    }
    public bool login(string kulad, string sifre)
    {
        string sqlsor = "select * from users where kulad='" + kulad + "' && sifre='" + sifre + "'";
        DataTable tbl = SqlSecmesorgusu(sqlsor);
        if (tbl.Rows.Count > 0)
            return true;
        else
            return false;

    }


}
