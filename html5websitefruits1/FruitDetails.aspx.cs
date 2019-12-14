using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FruitDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FruitsWork FW = new FruitsWork();
        if (Request.QueryString["id"] != null) 
        {
            txtFruitID.Text= Request.QueryString["id"].ToString();
            string sqlstring = "Select * from Fruit Where FruitID='" + txtFruitID.Text + "'";
            //Response.Write(sqlstring);
            DataTable tbl = FW.RunQuery(sqlstring);
            if (tbl.Rows.Count > 0)
            {
                txtDescr.Text = tbl.Rows[0][1].ToString();
                txtNat.Text = tbl.Rows[0][2].ToString();
                txtHealth.Text = tbl.Rows[0][3].ToString();
                txtEnerjy.Text = tbl.Rows[0][4].ToString();
                txtWater.Text = tbl.Rows[0][5].ToString();
                txtFat.Text = tbl.Rows[0][6].ToString();
                txtProtine.Text = tbl.Rows[0][7].ToString();
                txtCarp.Text = tbl.Rows[0][8].ToString();
                txtFiber.Text = tbl.Rows[0][9].ToString();
                txtPrice.Text = tbl.Rows[0][10].ToString();
                img.ImageUrl = "..\\imgs\\" + txtFruitID.Text + "2.jpg";
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        } 
        else 
        {
            Response.Redirect("Default.aspx");
        }
    }
}