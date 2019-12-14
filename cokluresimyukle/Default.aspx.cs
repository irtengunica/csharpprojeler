using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    string uzanti = null;
    string resimadi = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnResimYukle_Click(object sender, EventArgs e)
    {
        HttpFileCollection files = Request.Files;
        for (int i = 0; i < files.Count; i++)
        {
            HttpPostedFile file = files[i];
            if (file.ContentLength > 0)
            {               
                //resimin adı
                string fileName = Path.GetFileName(file.FileName);

                //resim uzantısı
                uzanti = Path.GetExtension(file.FileName);

                //resime atanacak yeni ad
                resimadi = DateTime.Now.Day.ToString() + DateTime.Now.Month + 
                    DateTime.Now.Year + DateTime.Now.Hour + DateTime.Now.Second + 
                    DateTime.Now.Minute + DateTime.Now.Millisecond + uzanti;
                
                // Orjinal resmi kaydet
                file.SaveAs(Server.MapPath("~/Resimler/Temp/" + resimadi));


                //****************** Yeni boyutlara göre resim oluştur ***************/

                // orjinal resim
                Bitmap resim = new Bitmap(Server.MapPath("~/Resimler/Temp/" + resimadi));
                // 150px genişlikte yeni resim oluştur
                resim = this.ResimBoyutlandir(resim, 150);
                // oluşturulan resmi kaydet
                resim.Save(Server.MapPath("~/Resimler/150/" + resimadi));

                // Orjinal resim
                Bitmap resim2 = new Bitmap(Server.MapPath("~/Resimler/Temp/" + resimadi));
                // 800px genişlikte yeni resim oluştur
                resim2 = this.ResimBoyutlandir(resim2, 800);
                // oluşturulan resmi kaydet
                resim2.Save(Server.MapPath("~/Resimler/800/" + resimadi));

                //******************************************************************//


                //****************** Veri tabanına kaydet ***************/

                // Sql server bilgileri
                MySqlConnection baglanti = new MySqlConnection("Server=localhost;User Id=root; Password=0123456789; Database=resimveri_db1; Pooling=false");

                // bağlantıyı aç
                baglanti.Open();

                // resim adını veri tabanına ekle
                MySqlCommand cmd = new MySqlCommand("Insert Into Resimler(ResimYolu)" + 
                    "Values('" + resimadi + "')", baglanti);

                cmd.ExecuteNonQuery();

                // bağlantıyı kapat
                baglanti.Close();

                baglanti.Dispose();

                //******************************************************************//


                // yüklenen resimin adını label komponentinde gösterir
                lblMesaj.Text += "Dosya : <b>" + fileName + "</b> başarıyla yüklendi !<br />";

                /*
                // Orjinal resmi isterseniz bu kod satırıyla silebilirsiniz
                FileInfo temp = new FileInfo(Server.MapPath("~/Resimler/Temp/" + resimadi));
                temp.Delete();
                */
            }
        }
    }

    public Bitmap ResimBoyutlandir(Bitmap resim, int boyut)
    {
        Bitmap sresim = resim;

        using (Bitmap OrjinalResim = resim)
        {
            double yukseklik = OrjinalResim.Height;
            double genislik = OrjinalResim.Width;
            double oran = 0;

            if (genislik >= boyut)
            {
                oran = genislik / yukseklik;
                genislik = boyut;
                yukseklik = genislik / oran;

                Size ydeger = new Size(Convert.ToInt32(genislik), Convert.ToInt32(yukseklik));

                Bitmap yresim = new Bitmap(OrjinalResim, ydeger);

                sresim = yresim;
            }
        }

        return sresim;
    }
}