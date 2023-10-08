using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class Login : System.Web.UI.Page
    {
        WebformTrainingDBEntities db = new WebformTrainingDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                var MyUser = db.Users.Where(u => u.UserName == txtUserName.Text && u.PassWord == txtPassword.Text);
                if(MyUser.Count() > 0)
                {
                    HttpCookie MyCookie = new HttpCookie("cookLogin");
                    MyCookie.Values.Add("username", HttpUtility.UrlEncode(txtUserName.Text.ToUpper()));
                    if(chbRmember.Checked)
                        MyCookie.Expires = DateTime.Now.AddYears(10);
                    Response.Cookies.Add(MyCookie);
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Label1.Text = "البيانات غير صحيحة";
                }
            }
        }

    }
}