using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stringfonk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonOnay_Click(object sender, EventArgs e)
    {
        string metinal = TextGir.Text;
        //Stringin karakter sayısını bulma
        LabelSonuc.Text = Convert.ToString(metinal.Length);
        //Stringe ekleme yapma
        lblekleme.Text = metinal.Insert(5, "merhaba");
        //stringden karakter çıkarma
        lblcikarma.Text = metinal.Remove(5, 3);
        //stringin içindeki veya kelimesini sanane olarak değiştirsin:
        lbldegistir.Text = metinal.Replace("veya", "sanane");
    //stringin içinden 6. karakterden itibaren 10 karakter alma
        lblal.Text = metinal.Substring(6,10);
        //metin deki boşluklARIALMA
        lbltrim.Text = "***" + metinal.Trim() + "*****";
        //BAŞTAki boşlukları alma
        lblstarttrim.Text = "***" + metinal.TrimStart() + "*****";
        //sondaki boşlukları alma
        lblendtrim.Text = "***"+metinal.TrimEnd()+"*****";
        //büyük harf yapma
        lblbuyuk.Text = metinal.ToUpper();
        //kücük harf yapma
        lblkucuk.Text = metinal.ToLower();
    }
}