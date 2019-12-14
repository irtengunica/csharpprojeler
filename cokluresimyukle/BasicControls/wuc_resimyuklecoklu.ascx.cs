using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_resimyukle : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var FW = new WSresim();
        lblmsj.ForeColor = Color.OrangeRed;
        if (!IsPostBack || FileUpload1.PostedFile == null)
        {
            Session["yukoncekiresim"] = null;
            Session["yukoncekiresim1"] = null;
            Session["yukoncekiresim2"] = null;
            Session["yukoncekiresim3"] = null;
            Session["yukoncekiresim4"] = null;
            Session["yukoncekiresim5"] = null;
            Session["yukoncekiresim6"] = null;
            Pnlfilesonuc.Visible = false;
            Pnlfileupload.Visible = true;
            return;
        }
        else
        {
            Pnlfilesonuc.Visible = true;
            Pnlfileupload.Visible = true;
            


        }
        if(Session["yukoncekiresim6"]!=null)
        {
            lblmsj.Text = "Resim Yükleme Sınırı Aşılamaz.";
            return;
        }
        if (FileUpload1.PostedFile.FileName.Length <= 0) return;
        if (FW.uzantiboyutkontrol(FileUpload1.PostedFile) != true) 
        {
            lblmsj.Text = "Dosya Uzantıları *.jpg,*.png,*.gif,*.jpeg olmalıdır. Bir resim Dosyası 500 kilobaytı aşmamalıdır.";
            return; 
        }

        //FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.PostedFile.FileName);
        //Label1.Text = FileUpload1.PostedFile.FileName + " yüklendi..";
        Response.Write(Session["yukoncekiresim"].ToString());
        lblmsj.ForeColor = Color.Aqua;
        if (Session["yukoncekiresim"] != null && Session["yukoncekiresim1"] == null)
        {
            Session["yukoncekiresim1"] = Session["yukoncekiresim"];
            Image1.ImageUrl = Session["yukoncekiresim1"].ToString();
            lblmsj.Text = Session["yukoncekiresim1"].ToString() + " Resmi başarı ile Yüklediniz.";
        }
        else if (Session["yukoncekiresim"] != null && Session["yukoncekiresim2"] == null)
        {
            Session["yukoncekiresim2"] = Session["yukoncekiresim"];
            Image2.ImageUrl = Session["yukoncekiresim2"].ToString();
            lblmsj.Text = Session["yukoncekiresim2"].ToString() + " Resmi başarı ile Yüklediniz.";
        }
        else if (Session["yukoncekiresim"] != null && Session["yukoncekiresim3"] == null)
        {
            Session["yukoncekiresim3"] = Session["yukoncekiresim"];
            Image3.ImageUrl = Session["yukoncekiresim3"].ToString();
            lblmsj.Text = Session["yukoncekiresim3"].ToString() + " Resmi başarı ile Yüklediniz.";
        }
        else if (Session["yukoncekiresim"] != null && Session["yukoncekiresim4"] == null)
        {
            Session["yukoncekiresim4"] = Session["yukoncekiresim"];
            Image4.ImageUrl = Session["yukoncekiresim4"].ToString();
            lblmsj.Text = Session["yukoncekiresim4"].ToString() + " Resmi başarı ile Yüklediniz.";
        }
        else if (Session["yukoncekiresim"] != null && Session["yukoncekiresim5"] == null)
        {
            Session["yukoncekiresim5"] = Session["yukoncekiresim"];
            Image5.ImageUrl = Session["yukoncekiresim5"].ToString();
            lblmsj.Text = Session["yukoncekiresim5"].ToString() + " Resmi başarı ile Yüklediniz.";
        }
        else if (Session["yukoncekiresim"] != null && Session["yukoncekiresim6"] == null)
        {
            Session["yukoncekiresim6"] = Session["yukoncekiresim"];
            Image6.ImageUrl = Session["yukoncekiresim6"].ToString();
            
            lblmsj.Text = Session["yukoncekiresim6"].ToString() + " Resmi başarı ile Yüklediniz.";
        }
        
        
        
        
        
        
        
    }
}