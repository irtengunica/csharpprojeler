using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using MySql.Data;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for ws_deneme
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class ws_deneme : System.Web.Services.WebService {
    MySqlConnection baglanti=new MySqlConnection();
    MySqlCommand mysqlkomut=new MySqlCommand();
    public ws_deneme () {

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
    }

    private void veritabanikapat()
    {
        baglanti.Close();
    }

    public DataTable SqlSecmesorgusu(string sqlsorgu)
    {
        veritabanibagla(sqlsorgu);
        DataTable tbl = new DataTable();
        tbl.Load(mysqlkomut.ExecuteReader());
        veritabanikapat();
        return tbl;
    }

    public int eklesildegistir(string sqlsorgu)
    {
        int sonuc = 0;
        try
        {
            veritabanibagla(sqlsorgu);
            sonuc = mysqlkomut.ExecuteNonQuery();
            veritabanikapat();
            
        }
        catch
        {
            ;
        }
        return sonuc;
    }

    public bool kayitekle(string kulad, string sifre,string email)
    {
        string sqlsorgu = "insert into users (kulad,sifre,email)values('"+kulad+"','"+sifre+"','"+email+"')";
        if (eklesildegistir(sqlsorgu)==1)
            return true;
        else
            return false;

    }
    public bool kayitsil(string idee)
    {
        string sqlsorgu = "delete from users where id="+idee;
        if (eklesildegistir(sqlsorgu) == 1)
            return true;
        else
            return false;

    }
    public bool login(string kulad, string sifre)
    {
        string sqlsor = "select * from users where kulad='"+kulad+"' && sifre='"+sifre+"'";
        DataTable tbl = SqlSecmesorgusu(sqlsor);
        if (tbl.Rows.Count > 0)
            return true;
        else
            return false;
    
    }

    public bool kulkontrol(string kulad)
    {
        string sqlsor = "select * from users where kulad='" + kulad + "'";
        DataTable tbl = SqlSecmesorgusu(sqlsor);
        if (tbl.Rows.Count > 0)
            return true;
        else
            return false;

    }
    
    
}
