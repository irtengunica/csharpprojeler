using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mesajlarım : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adisoyadi"] == null)
        {
            Response.Redirect("Default.aspx");
            isim.Text = Session["adisoyadi"].ToString();
        }
    }
    protected void renkler(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            if (e.Row.Cells[3].Text == "0")
            {
                e.Row.Font.Bold = true;
            }
            else
                if (e.Row.Cells[3].Text == "1")
                {
                    e.Row.Font.Bold = false;
                }
        }
    }
}
