﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mutlakadresogren : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Server.MapPath(""));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write(TextBox1.Text);
    }
}