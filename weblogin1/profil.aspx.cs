﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adisoyadi"] == null)
        {
            Response.Redirect("Default.aspx");
            isim.Text = Session["adisoyadi"].ToString();
        }
    }
}
