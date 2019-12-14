using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yaziliort : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSonuc_Click(object sender, EventArgs e)
    {
        try
        {
            int yazili1 = Convert.ToInt32(txtYaz1.Text);
            int yazili2 = Convert.ToInt32(txtYaz2.Text);
            int yazili3 = Convert.ToInt32(txtYaz3.Text);
            int sozlu1 = Convert.ToInt32(txtYaz4.Text);
            int sozlu2 = Convert.ToInt32(txtYaz5.Text);
            double ortalama = (yazili1 + yazili2 + yazili3 + sozlu1 + sozlu2) / 5;
            if (ortalama >= 50)
            {
                lblSonuc.Text = "Sınıfı Geçtin ortalaman=" + Convert.ToString(ortalama);
            }
            else
            {
                lblSonuc.Text = "geçmiş olsun ortalaman=" + Convert.ToString(ortalama);
            }
        }
        catch { ;}

    }
}