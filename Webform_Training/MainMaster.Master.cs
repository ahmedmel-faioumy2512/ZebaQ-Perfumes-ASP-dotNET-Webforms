using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("CookLogin");
            MyCookie = Request.Cookies["CookLogin"];
            if(MyCookie == null)
            {
                lstWelcome.Visible = false;
                lstData.Visible = false;
                lstLog.Visible = true;
            }
            else
            {
                lstWelcome.Visible = true;
                lstData.Visible = true;
                lstLog.Visible = false;
                btnUser.Text = HttpUtility.UrlDecode(MyCookie["username"].ToUpper());
            }
            
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("cookLogin");
            MyCookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(MyCookie);
            Response.Redirect("Home.aspx");
        }
    }
}