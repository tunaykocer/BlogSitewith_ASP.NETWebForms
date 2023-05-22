using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tunay.YonetimPaneli
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
                Response.Redirect("~/Login.aspx");
            else
            {
                lblKullanici1.Text = Session["Kullanici"].ToString();
                lblKullanici2.Text = Session["Kullanici"].ToString();
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("Kullanici");
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
    }
}