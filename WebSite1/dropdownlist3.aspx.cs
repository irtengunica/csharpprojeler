using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dropdownlist3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int gunsay, aysay, yilsay;
        for (gunsay = 0; gunsay <= 30; gunsay++)
        {
            ddlgun.Items.Add("gunekle");
            ddlgun.Items[gunsay].Text = Convert.ToString(gunsay+1);
            ddlgun.Items[gunsay].Value = Convert.ToString(gunsay+1);
            if (DateTime.Now.Day == gunsay + 1)
            {
                ddlgun.Items[gunsay].Selected = true;
            }
        }
        for (aysay = 0; aysay <= 11; aysay++)
        {
            ddlay.Items.Add("ayekle");
            ddlay.Items[aysay].Text = Convert.ToString(aysay + 1);
            ddlay.Items[aysay].Value = Convert.ToString(aysay + 1);
            if (DateTime.Now.Month == aysay + 1)
            {
                ddlay.Items[aysay].Selected = true;
            }
        }
        int eklesay = Convert.ToInt32(DateTime.Now.Year);
        eklesay -= 30;
        for (yilsay = 0; yilsay <= 30; yilsay++)
        {
            ddlyil.Items.Add("yilekle");
            ddlyil.Items[yilsay].Text = Convert.ToString(yilsay + eklesay);
            ddlyil.Items[yilsay].Value = Convert.ToString(yilsay + eklesay);
            if (DateTime.Now.Year == yilsay + eklesay)
            {
                ddlyil.Items[yilsay].Selected = true;
            }
        }
    }
}