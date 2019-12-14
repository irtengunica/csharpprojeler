using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dortislem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnIslem_Click(object sender, EventArgs e)
    {
        try { 
        int sayi1 = Convert.ToInt32(txtSayi1.Text);
        int sayi2 = Convert.ToInt32(txtSayi2.Text);
        double islem=0;
        if (DrlistIslem.SelectedItem.ToString() == "+")
        {
            islem = sayi1 + sayi2;
         }
        if (DrlistIslem.SelectedItem.ToString() == "-")
        {
            islem = sayi1 - sayi2;
        }
        if (DrlistIslem.SelectedItem.ToString() == "*")
        {
            islem = sayi1 * sayi2;
        }
        if (DrlistIslem.SelectedItem.ToString() == "/")
        {
            islem =Convert.ToDouble(sayi1) / Convert.ToDouble(sayi2);
        }
        if (DrlistIslem.SelectedItem.ToString() == "%")
        {
            islem = sayi1 % sayi2;
        }
        lblSonuc.Text =Convert.ToString(islem);
        }
        catch { ;}
    }
}