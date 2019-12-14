using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!File.Exists(Server.MapPath("xml/KullaniciBilgirapor.xml")))
        {
            try
            {
                XmlTextWriter xmlolustur = new XmlTextWriter(Server.MapPath("xml/KullaniciBilgirapor.xml"), null);//ilk parametre dosyanın oluşturulacağı lokasyon, ikinci parametre encoding

                xmlolustur.WriteStartDocument();//xml içinde element oluşturma işlemine başlandı

                xmlolustur.WriteComment("Kullanıcı Bilgileri Detayları Raporu");//dosya içine bir açıklama satırı eklendi

                xmlolustur.WriteStartElement("Rapor");//bir etiket oluşturduk

                xmlolustur.WriteEndDocument();//element oluşturma işlemi bitti
                Label1.Text = "Dosya Oluşturuldu";
                xmlolustur.Close();//dosya oluşturuldu ve işlemler tamamlandı
            }
            catch
            {
                Label1.Text = "Dosya Hata oldu. Lütfen Tekrar Deneyin";
            }
        }
    }
}