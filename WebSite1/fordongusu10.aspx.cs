using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fordongusu3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnBas_Click(object sender, EventArgs e)
    {
        //57 ye bölünen sayıların toplamını bulma
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);
        int toplam = 0;
  
        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            if (sayi % 57 == 0)
            {
                toplam += sayi;
            }
         
        }
        Response.Write(basdeger + "den " + sondeger + " e kadar 57 ye bölünen sayıların toplamı=" + toplam); 
    }
    
   
    protected void btnbolsay_Click(object sender, EventArgs e)
    {
        //57 ye bölünenlerin sayısı
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);
       
        int sayac = 0;

        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            if (sayi % 57 == 0)
            {
                sayac++;
            }

        }
        Response.Write(basdeger + "den " + sondeger + " e kadar 57 ye bölünenlerin sayısı=" + sayac); 
    }
    protected void btnbolyaz_Click(object sender, EventArgs e)
    {
        //57 ye bölünenleri ekrana yaz
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);

        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            if (sayi % 57 == 0)
            {
                Response.Write("57 bölünen sayi;"+sayi+"<br>"); 
            }

        }
        
    }
    protected void btnbolyaz0_Click(object sender, EventArgs e)
    {

        //57 ye bölünen 4. sayıyı ekrana yaz
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);

        int sayac = 0;

        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            if (sayi % 57 == 0)
            {
                sayac++;
                if (sayac == 4)
                {
                    Response.Write("57 ye bölünen 4.sayı=" + sayi);
                    break;
                }

            }

        }
        
    
    }
    protected void btn12bolcarp_Click(object sender, EventArgs e)
    {
        //12 ye bölünen sayıların çarpımını bulma
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);
        int carpim = 1;

        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            if (sayi % 12 == 0)
            {
                carpim *= sayi;
            }

        }
        Response.Write(basdeger + "den " + sondeger + " e kadar 12 ye bölünen sayıların çarpımı=" + carpim); 
    }
    protected void btnkareleritop_Click(object sender, EventArgs e)
    {
        //12 ye bölünen sayıların çarpımını bulma
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);
        int toplam = 0;

        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
              toplam += sayi*sayi;
    

        }
        Response.Write(basdeger + "den " + sondeger + " e kadar olan sayıların kareleri toplamı=" + toplam); 
    }
    protected void btn14bol1724top_Click(object sender, EventArgs e)
    {
        //14 e bölünen 17 ve 24.sayıların toplamını bulan
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);
        int toplam = 0;
        int sayi17 = 0;
        int sayi24 = 0;
        int sayac = 0;
        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            if (sayi % 14 == 0) 
            {
                sayac++;
                if (sayac == 17)
                {
                    sayi17 = sayi;
                }
                if (sayac == 24)
                {
                    sayi24 = sayi;
                    break;
                }
            }
        }
        toplam = sayi17 + sayi24;
        Response.Write( "14 bölünen 17 ve 24. sayıların toplamı=" + toplam);
    }
    protected void btn9ve15bolekranayaz_Click(object sender, EventArgs e)
    {
        int basdeger = Convert.ToInt32(txtSayibas.Text);
        int sondeger = Convert.ToInt32(txtSayibit.Text);
      
        for (int sayi = basdeger; sayi <= sondeger; sayi++)
        {
            if (sayi % 9 == 0 && sayi % 15 == 0)
            {
                Response.Write("9 a ve 15 e bölünen sayılar=" + sayi + "<br>");
            }
        }
        
        
    }
}