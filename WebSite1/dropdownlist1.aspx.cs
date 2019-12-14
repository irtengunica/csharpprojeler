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
        DropDownList1.Items.Add("deneme");
        DropDownList1.Items[0].Text = "birincieleman";
        DropDownList1.Items[0].Value="1";
        Response.Write(DateTime.Now);
        Response.Write("<br>");
        Response.Write(DateTime.Today);
        Response.Write("<br>");
        Response.Write(DateTime.Now.Day);
        Response.Write("<br>");
        Response.Write(DateTime.Now.Year);
        Response.Write("<br>");
        Response.Write(DateTime.Now.Month);
        Response.Write("<br>");
        Response.Write(DateTime.Now.DayOfWeek);
        Response.Write("<br>");
        Response.Write(DateTime.Now.DayOfYear);
        Response.Write("<br>");
        Response.Write(DateTime.Now.TimeOfDay);
        Response.Write("<br>");
        Response.Write(DateTime.Now.ToLongDateString());
        Response.Write("<br>");
        DateTime tarih;
        tarih =Convert.ToDateTime("01.08.1998");
        Response.Write(tarih.ToLongDateString());
        Response.Write("<br>");
        Response.Write(tarih.DayOfWeek);
        Response.Write("<br>");

    }
}