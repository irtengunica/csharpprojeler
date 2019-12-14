using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class BasicKontrol_wuc_login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btngir_Click(object sender, EventArgs e)
    {
        ws_deneme kontrol=new ws_deneme();
        if (kontrol.login(txtkulad.Text, txtsifre.Text) == true)
            lblmesaj.Text = "hoşgeldiniz";
        else
            lblmesaj.Text = "yanlış giriş";
        
        

    }
}