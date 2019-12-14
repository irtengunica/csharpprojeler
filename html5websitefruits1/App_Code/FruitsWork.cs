using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for FruitsWork
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class FruitsWork : System.Web.Services.WebService {
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    public FruitsWork () {
        //code constractor
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }
    /*public bool login(string user, string pass)
    {
        if (user == "Admin" && pass == "123")
            return true;
        else if (user == "Ahmad" && pass == "abc")
            return true;
        else
            return false;
    }*/
    private void SetComnd(string stmt)
    {  
        con.ConnectionString =@" Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Fruits.mdf;Integrated Security=True ";
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = stmt;
    }
    private void Disconnect()
    {
        con.Close();
    }
    public int RunInsDelUpd(string stmt)
    {
        int rows = 0;
        try
        { 
        SetComnd(stmt);
        rows=cmd.ExecuteNonQuery();
        Disconnect();
        
        }
        catch 
        {
            ;
        }
        return rows; 
    }
    public DataTable RunQuery(string select)
    {
        SetComnd(select);
        DataTable tbl=new DataTable();
        tbl.Load(cmd.ExecuteReader());
        Disconnect();

        return tbl;
    }

    public bool login(string user,string pass)
    {
        string sql = "select * from member where Username='"+user+"' and Password='"+pass+"'";
        DataTable tbl=RunQuery(sql);
        if (tbl.Rows.Count > 0)
            return true;
        else
            return false;
    }
    public bool register(string user, string pass, string email)
    {
        string sql = "insert into member values('"+user+"','"+pass+"','"+email+"')";
        if (RunInsDelUpd(sql) == 1)
            return true;
        else
            return false;
    }
}
