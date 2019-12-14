using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection();
    MySqlCommand sqlkomut = new MySqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        veritabanibaglantiacfonk();
        tablodoldurfonk("SELECT * FROM users");
        veritabanibaglantikapatfonk();
    }

    void veritabanibaglantiacfonk()
    {
        String baglantistringi = "Server=localhost;User Id=root; Password=0123456789; Database=deneme_db; Pooling=false";
        baglanti = new MySqlConnection(baglantistringi);
        baglanti.Open();
    }

    void veritabanibaglantikapatfonk()
    {
        baglanti.Close(); //Sayfa kapatıldığında MySQL bağlantısını sonlandır
        baglanti = null;
    }

    void tablodoldurfonk(string sqlal)
    {
        String strSQL =sqlal;
        //MySqlDataReader dtReader;
        sqlkomut = new MySqlCommand(strSQL, baglanti);
        MySqlDataReader dtReader = sqlkomut.ExecuteReader();
        GridView1.DataSource = dtReader;
        GridView1.DataBind();
        dtReader.Close();
        dtReader = null;
    }

}