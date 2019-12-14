using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fileupload1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonYukle_Click(object sender, EventArgs e)
    {
        fudosyaekle.SaveAs(Server.MapPath("image/") + fudosyaekle.FileName);
        Response.Write(fudosyaekle.FileName.ToString());
        Image1.ImageUrl = "image/" + fudosyaekle.FileName;
        Image1.Width = 500;
        Image1.Height = 500;
        int dosyaboyutu = fudosyaekle.PostedFile.ContentLength / 1024;
        string dosyaturu = fudosyaekle.PostedFile.ContentType.ToString();

        Response.Write("<br>");
        Response.Write("indirdiğiniz dosya turu=" + dosyaturu);
        Response.Write("<br>");
        Response.Write("indirdiğiniz dosya boyutu=" + dosyaboyutu + " KByte 'dır");
    }
}