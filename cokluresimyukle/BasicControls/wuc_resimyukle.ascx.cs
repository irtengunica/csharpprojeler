using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BasicControls_wuc_resimyukle : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var FW = new WSresim();

        if (!IsPostBack || FileUpload1.PostedFile == null)
        {
            Session["yukoncekiresim"] = null;
            Pnlfilesonuc.Visible = false;
            Pnlfileupload.Visible = true;
            return;
        }
        else
        {
            Pnlfilesonuc.Visible = true;
            Pnlfileupload.Visible = true;

        }

        if (FileUpload1.PostedFile.FileName.Length <= 0) return;
        if (FW.uzantiboyutkontrol(FileUpload1.PostedFile) != true) return;

        //FileUpload1.SaveAs(Server.MapPath("~/images/") + FileUpload1.PostedFile.FileName);
        //Label1.Text = FileUpload1.PostedFile.FileName + " yüklendi..";
        Response.Write(Session["yukoncekiresim"].ToString());
        Imageyuklenen.ImageUrl = Session["yukoncekiresim"].ToString();
    }
}