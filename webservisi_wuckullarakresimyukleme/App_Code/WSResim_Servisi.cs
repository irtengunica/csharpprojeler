using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WSResim_Servisi
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WSResim_Servisi : System.Web.Services.WebService {

    public WSResim_Servisi () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    public bool uzantiboyutkontrol(HttpPostedFile gelendosya)
    {
        /*if (Session["yukoncekiresim"] != null)
        {
            FileInfo IlkResimDosyasi = new FileInfo(HttpContext.Current.Server.MapPath(Session["yukoncekiresim"].ToString()));
            IlkResimDosyasi.Delete();
        }*/
        string[] dosyaturleri = { "image/jpg", "image/png", "image/gif", "image/jpeg" };
        if (!dosyaturleri.Contains(gelendosya.ContentType)) return false;//resim dosyası uzantı kontrol
        int dosyaboyutu = gelendosya.ContentLength / 1024;
        if (gelendosya.ContentLength > 0 && dosyaboyutu <= 500) //yüklenen dosya boyutu 500 kilobayta kadar kontrol
        {
            Random rstgele = new Random();
            string ResimUzantisi = Path.GetExtension(gelendosya.FileName);
            string ResimAdi = gelendosya.FileName;//gelen dosya adını alma
            int resimBoyutu = 800;//hedef genişlik, yükseklik ayarı genişliğe göre otomatik
            int resimaduz = gelendosya.FileName.Length;
            resimaduz -= 4;
            ResimAdi = ResimAdi.Substring(0, resimaduz);//resim adındaki uzantı ve noktasız olarak okuma
            ResimAdi += rstgele.Next(99999999, 999999999);//yüklenen dosyaya yeni isimverme
            System.Drawing.Image yuklenenFoto = null;
            yuklenenFoto = System.Drawing.Image.FromStream(gelendosya.InputStream);

            KucukBoyut(yuklenenFoto, resimBoyutu, ResimAdi);//istenen işlemler için diğer fonksiyonu çağır


            return dosyaturleri.Contains(gelendosya.ContentType);
        }
        return false;
    }
    public void KucukBoyut(System.Drawing.Image yuklenenFoto, int resimBoyutu, string resimIsmi)
    {
        Bitmap islenmisFoto = null;
        Graphics grafikNesnesi = null;
        int hedeflenenGenislik = resimBoyutu;
        int hedeflenenYukseklik = resimBoyutu;
        int yeni_gen, yeni_yuk;
        yeni_yuk = (int)Math.Round(((float)yuklenenFoto.Height * (float)resimBoyutu) / (float)yuklenenFoto.Width);
        yeni_gen = hedeflenenGenislik;
        hedeflenenYukseklik = yeni_yuk;
        yeni_gen = yeni_gen > hedeflenenGenislik ? hedeflenenGenislik : yeni_gen;
        yeni_yuk = yeni_yuk > hedeflenenYukseklik ? hedeflenenYukseklik : yeni_yuk;
        //gönderilen genişliğe göre yükseklik ayarının otomatik olarak belirlenmesi
        islenmisFoto = new Bitmap(hedeflenenGenislik, hedeflenenYukseklik);
        grafikNesnesi = Graphics.FromImage(islenmisFoto);
        grafikNesnesi.FillRectangle(new SolidBrush(Color.White), new Rectangle(0, 0, hedeflenenGenislik, hedeflenenYukseklik));
        int x = (hedeflenenGenislik - yeni_gen) / 2;
        int y = (hedeflenenYukseklik - yeni_yuk) / 2;
        grafikNesnesi.SmoothingMode = SmoothingMode.HighQuality;
        grafikNesnesi.CompositingQuality = CompositingQuality.HighQuality;
        grafikNesnesi.InterpolationMode = InterpolationMode.Default;
        ImageCodecInfo codec = ImageCodecInfo.GetImageEncoders()[1];
        EncoderParameters eParams = new EncoderParameters(1);
        eParams.Param[0] = new EncoderParameter(Encoder.Quality, 95L);
        grafikNesnesi.DrawImage(yuklenenFoto, x, y, yeni_gen, yeni_yuk);
        islenmisFoto.Save(HttpContext.Current.Server.MapPath("~/images/" + resimIsmi + ".jpg"), codec, eParams);
        //Son olarak resmimizi resimler klasörüne kaydettik.bu alana uye klasörünüde ekle
        Session["yukoncekiresim"] = "~/images/" + resimIsmi + ".jpg";
        /*
         * 
         * Klasor oluşturmak için ?
             if (!Directory.Exists(HttpContext.Current.Server.MapPath("~/klasoradi")))
                 Directory.CreateDirectory(HttpContext.Current.Server.MapPath("~/klasoradi"));
         Klasor silmek için ?
             if (Directory.Exists(HttpContext.Current.Server.MapPath("~/klasoradi")))
                 Directory.Delete(HttpContext.Current.Server.MapPath("~/klasoradi"));*/
    }
    
}
