using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btngir_Click(object sender, EventArgs e)
    {
        Ws_deneme kontrol = new Ws_deneme();//web servis sınıfımızı çağıralım.
        if (kontrol.login(txtkulad.Text, txtsifre.Text) == true) //kontrol için sınıf içinden login i çağırdık
            lblmesaj.Text = "hoşgeldiniz";//loginden sonuç true ise mesaj kutusuna mesaj verir.
        else
            lblmesaj.Text = "yanlış giriş";
    }
}