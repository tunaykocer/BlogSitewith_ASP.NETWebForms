using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace tunay.YonetimPaneli
{
    public partial class Hakkımızda : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["TunayMeenConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false;
        }
        string id;

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select*from tblHakkımızda", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();
            
            Label1.Text = tablo.Rows[0]["id"].ToString();

            baglanti.Close();
            Button1.Enabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblHakkımızda set Baslik=@Baslik,Ozet=@Ozet,Detay=@Detay where id=@id", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            
            komut.Parameters.AddWithValue("@id", Label1.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Hakkımızda.aspx");
        }
    }
}