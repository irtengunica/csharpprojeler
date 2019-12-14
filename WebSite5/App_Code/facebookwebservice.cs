using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for facebookwebservice
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class facebookwebservice : WebService {

    public facebookwebservice () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    public string ID { get; set; }
    public string Adi { get; set; }
    public string Soyadi { get; set; }
    public string KullaniciAdi { get; set; }
    public string EMail { get; set; }
    public string ProfilResmi { get; set; }
}
