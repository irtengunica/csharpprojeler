using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

public partial class okuma : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load("http://www.ecb.int/stats/eurofxref/eurofxref-daily.xml");
        foreach (XmlNode xmlNode in xmlDoc.DocumentElement.ChildNodes[2].ChildNodes[0].ChildNodes)
            Response.Write(xmlNode.Attributes["currency"].Value + ": " + xmlNode.Attributes["rate"].Value);
        
    }
}