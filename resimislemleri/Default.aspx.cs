using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        resimYukle(FileUpload1,100,"deneme");
      
    }
    public void resimYukle(FileUpload fupload, int resimBoyutu, string resimIsmi)
    {
        if (fupload.HasFile)
        {
            System.Drawing.Image yuklenenFoto = null;
            HttpPostedFile yuklenenResim = fupload.PostedFile;
            yuklenenFoto = System.Drawing.Image.FromStream(yuklenenResim.InputStream);
            //Image nesnesi tanımladık ve Fileuploaddaki resmi image nesnesine atadık.
            KucukBoyut(yuklenenFoto, resimBoyutu, resimIsmi);
            //Şimdi resmimizi küçük boyut fonksiyonuna gönderip boyutlandıracağız.
        }
    }

    public void KucukBoyut(System.Drawing.Image yuklenenFoto, int resimBoyutu, string resimIsmi)
    {
        System.Drawing.Bitmap islenmisFoto = null;
        System.Drawing.Graphics grafikNesnesi = null;
        int hedeflenenGenislik = resimBoyutu;
        int hedeflenenYukseklik = resimBoyutu;
        int yeni_gen, yeni_yuk;
        yeni_yuk = (int)Math.Round(((float)yuklenenFoto.Height * (float)resimBoyutu) / (float)yuklenenFoto.Width);
        yeni_gen = hedeflenenGenislik;
        hedeflenenYukseklik = yeni_yuk;
        yeni_gen = yeni_gen > hedeflenenGenislik ? hedeflenenGenislik : yeni_gen;
        yeni_yuk = yeni_yuk > hedeflenenYukseklik ? hedeflenenYukseklik : yeni_yuk;
        islenmisFoto = new System.Drawing.Bitmap(hedeflenenGenislik, hedeflenenYukseklik);
        grafikNesnesi = System.Drawing.Graphics.FromImage(islenmisFoto);
        grafikNesnesi.FillRectangle(new System.Drawing.SolidBrush(System.Drawing.Color.White), new System.Drawing.Rectangle(0, 0, hedeflenenGenislik, hedeflenenYukseklik));
        int x = (hedeflenenGenislik - yeni_gen) / 2;
        int y = (hedeflenenYukseklik - yeni_yuk) / 2;
        grafikNesnesi.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
        grafikNesnesi.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
        grafikNesnesi.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.Default;
        System.Drawing.Imaging.ImageCodecInfo codec = System.Drawing.Imaging.ImageCodecInfo.GetImageEncoders()[1];
        System.Drawing.Imaging.EncoderParameters eParams = new System.Drawing.Imaging.EncoderParameters(1);
        eParams.Param[0] = new System.Drawing.Imaging.EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 95L);
        grafikNesnesi.DrawImage(yuklenenFoto, x, y, yeni_gen, yeni_yuk);

        //Buraya kadar ki işlemler resmin boyutunu enaz kayıpla küçültme işlemlerini yaptı.Kodları inceleyiniz.
        //Satır satır açıklamak bazen anlamsız olabiliyor.

        System.Drawing.Font yazi = new System.Drawing.Font("Century Schoolbook", 12, System.Drawing.FontStyle.Italic);
        System.Drawing.Brush br = new System.Drawing.SolidBrush(System.Drawing.Color.WhiteSmoke);
        System.Drawing.Point nokta1 = new System.Drawing.Point(hedeflenenGenislik / 3, hedeflenenYukseklik - 30);
        grafikNesnesi.DrawString("kodlamamerkezi.com", yazi, br, nokta1);
        //Bu kısımdaki kodlarla resmin üzerine Beyaz bir şekilde kodlamamerkezi.com yazdırdık.
        islenmisFoto.Save(HttpContext.Current.Server.MapPath("~/Resimler/" + resimIsmi + ".jpg"), codec, eParams);
        //Son olarak resmimizi resimler klasörüne kaydettik.

    }
}