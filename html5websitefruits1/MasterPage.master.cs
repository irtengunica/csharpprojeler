using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       //login
        if (Request.Cookies["login"] != null)
        {
            lblUser.Text = "Welcome Back:" + Request.Cookies["login"]["user"].ToString();
        } else
            lblUser.Text = "";
        //important Information
        FruitsWork FW = new FruitsWork();
        Random rnd=new Random();
        DataTable tbl = FW.RunQuery("select * from Fruit");
        int x=rnd.Next(0,tbl.Rows.Count);
        img.ImageUrl = "imgs\\"+tbl.Rows[x][0].ToString()+"2.jpg";
        lblHealth.Text = tbl.Rows[x][3].ToString();
        hrefimg.HRef="FruitDetails.aspx?id="+tbl.Rows[x][0].ToString();
    }
}
