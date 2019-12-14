using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class verigonder2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("sonuc2.aspx?adi=Ali&soyad=Bilir&ili=Zonguldak");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("sonuc2.aspx?adi=Şaban&soyad=Görür&ili=İzmir");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("sonuc2.aspx?adi=Ayşe&soyad=Tığlı&ili=Manisa");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("sonuc2.aspx?adi=Arzu&soyad=Kıymet&ili=Bolu");
    }
}