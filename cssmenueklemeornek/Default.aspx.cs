using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection baglanti = new MySqlConnection();
    MySqlCommand sqlkomut = new MySqlCommand();
    MySqlConnection baglanti2 = new MySqlConnection();
    MySqlCommand sqlkomut2 = new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.ConnectionString = "Server=localhost;User Id=root; Password=0123456789; Database=deneme_db; Pooling=false";
        baglanti.Open();
        sqlkomut.Connection = baglanti;
        sqlkomut.CommandText = "select * from kategori";
        MySqlDataAdapter adaptergonder = new MySqlDataAdapter(sqlkomut);
        DataTable ds = new DataTable();
        adaptergonder.Fill(ds);
        Repeater1.DataSource = ds;
        Repeater1.DataBind();
        baglanti.Close();

    }




    protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //try
            //{
                Repeater rp = (Repeater)e.Item.FindControl("Repeater2");
                string sqlstring2 = "SELECT * FROM altkategori WHERE kategoriid='" + DataBinder.Eval(e.Item.DataItem, "id").ToString()+"'";
                baglanti2.ConnectionString =
                    "Server=localhost;User Id=root; Password=0123456789; Database=deneme_db; Pooling=false";
                baglanti2.Open();
                sqlkomut2.Connection = baglanti2;
                sqlkomut2.CommandText = sqlstring2;
                //Response.Write(sqlstring2);
                MySqlDataAdapter adaptergonder2 = new MySqlDataAdapter(sqlkomut2);
                DataTable dt = new DataTable();
                adaptergonder2.Fill(dt);
                if (dt.Rows.Count == 0)
                {
                    rp.DataSource = null;
                    rp.DataBind();

                }
                else if (dt.Rows.Count > 0)
                {
                    rp.DataSource = dt;
                    rp.DataBind();


                }
                baglanti2.Close();
            /*}
            catch
            {
                ;
            }
            finally
            {
                ;
            }*/
        }
    }
}