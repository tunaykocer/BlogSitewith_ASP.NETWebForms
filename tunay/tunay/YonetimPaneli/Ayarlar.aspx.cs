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
    public partial class Ayarlar : System.Web.UI.Page
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
            SqlCommand komut = new SqlCommand("select*from tblAyarlar", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txtTelefon.Text = tablo.Rows[0]["Telefon"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            txtYoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            txtInstagram.Text = tablo.Rows[0]["Instagram"].ToString();
            txtDetay.Text = tablo.Rows[0]["SiteOzeti"].ToString();
            lblLogo.Text = tablo.Rows[0]["Logo"].ToString();
            Label1.Text = tablo.Rows[0]["id"].ToString();

            baglanti.Close();
            Button1.Enabled = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblAyarlar set Mail=@Mail,Telefon=@Telefon,Adres=@Adres,Twitter=@Twitter,Youtube=@Youtube,Instagram=@Instagram,SiteOzeti=@SiteOzeti,Logo=@Logo where id=@id", baglanti);
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Telefon", txtTelefon.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", txtYoutube.Text.ToString());
            komut.Parameters.AddWithValue("@Instagram", txtInstagram.Text.ToString());
            komut.Parameters.AddWithValue("@SiteOzeti", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@Logo", lblLogo.Text.ToString());
            komut.Parameters.AddWithValue("@id",Label1.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");
        }
    }
}