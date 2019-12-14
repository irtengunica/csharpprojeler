using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       ws_deneme tabloal=new ws_deneme();
        DataTable ds = tabloal.SqlSecmesorgusu("select * from users");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "kulad";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();
    }
    protected void btnekle_Click(object sender, EventArgs e)
    {
        ws_deneme ekle=new ws_deneme();
        if (ekle.kulkontrol(txtkulad.Text))
        {
            lblmesaj.Text = "bu kullanıcı sisstem da kayıltlıdır";
        }
        else
        {
        if (ekle.kayitekle(txtkulad.Text, txtsifre.Text, txtemail.Text))
            lblmesaj.Text = "kayit başarılı";
        else
            lblmesaj.Text = "kayıt olmadı";
       
        DataTable ds = ekle.SqlSecmesorgusu("select * from users");
        GridView1.DataSource = ds;
        GridView1.DataBind();
            }
    }
    protected void btnsil_Click(object sender, EventArgs e)
    {
        ws_deneme silll=new ws_deneme();
        string deger = DropDownList1.SelectedItem.Value.ToString();
        if (silll.kayitsil(deger))
            lblmesaj.Text = "kayıt silindi";
        else 
            lblmesaj.Text = "başarısız silme";
        DataTable ds = silll.SqlSecmesorgusu("select * from users");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}