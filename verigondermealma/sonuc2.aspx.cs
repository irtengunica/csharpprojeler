using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sonuc2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Txtadi.Text = Request.QueryString["adi"].ToString();
        Txtsoyadi.Text = Request.QueryString["soyad"].ToString();
        Txtadres.Text = Request.QueryString["ili"].ToString();
    }
}