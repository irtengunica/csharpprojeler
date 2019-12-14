using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ifornek1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnOnay_Click(object sender, EventArgs e)
    {
        try
        {
            int yas = 0;
            yas = Convert.ToInt32(txtYas.Text);
            if (yas > 0 && yas < 10)
            {
                Response.Write("Çocuksunuz");
            }
            else if (yas > 9 && yas < 21)
            {
                Response.Write("Gençsiniz");
            }
            else if (yas > 20 && yas < 55)
            {
                Response.Write("Yetişkinsiniz");
            }
            else if (yas > 54 && yas < 75)
            {
                Response.Write("Orta Yaşlısınız");
            }
            else if (yas > 74 && yas < 100)
            {
                Response.Write("Yaşlısınız");
            }
            else
            {

                Response.Write("Girdiğiniz yaş uygun değil");
            }
        }
        catch { ;}

    }
}