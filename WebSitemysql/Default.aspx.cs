using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using MySql.Data;
using MySql.Data.MySqlClient;



public partial class _Default : System.Web.UI.Page
{
    MySqlConnection baglanti;
    MySqlCommand sqlkomut;
    protected void Page_Load(object sender, EventArgs e)
    {
        baglantifonk();//sayfa yüklendiğinde gridview dolsun
        if (!Page.IsPostBack)
        {

            GridView1.ShowFooter = true;//yeni ekle satırı görünsün,ileride dolacak
            gridviewdoldur();
        }
    }
    protected void baglantifonk()//programı sadeleştirmek için MySQL bağlantı kodlarını fonksiyon olarak yazdık.
    {
    String baglantistringi;
    baglantistringi = "Server=localhost;User Id=root; Password=1234567890; Database=yogaltim_db; Pooling=false";
    baglanti = new MySqlConnection(baglantistringi);
    baglanti.Open();
    }

    protected void gridviewdoldur()//programı sadeleştirmek için gridview doldurma kodlarını fonksiyon olarak yazdık.
    {
    String strSQL;
    strSQL = "SELECT alanno,kod,alan,dal,sef FROM alandal ";

    MySqlDataReader dtReader;
    sqlkomut = new MySqlCommand(strSQL, baglanti);
    dtReader = sqlkomut.ExecuteReader();

    GridView1.DataSource = dtReader;
    GridView1.DataBind();

    dtReader.Close();
    dtReader = null;

    }
    protected void Page_UnLoad()
    {
    baglanti.Close();//Sayfa kapatıldığında MySQL bağlantısını sonlandır
    baglanti = null;
    }

        
}