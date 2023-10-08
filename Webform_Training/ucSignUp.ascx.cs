using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class ucSignUp : System.Web.UI.UserControl
    {
        WebformTrainingDBEntities db = new WebformTrainingDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                User user = new User
                {
                    UserName = txtUserName.Text,
                    PassWord = txtPassword.Text,
                    UserAddress = txtAddress.Text,
                    UserEmail = txtEmail.Text,
                    UserPhone = txtPhone.Text
                };
                db.Users.Add(user);
                db.SaveChanges();
                HttpCookie MyCookie = new HttpCookie("cookLogin");
                MyCookie.Values.Add("username",HttpUtility.UrlEncode(txtUserName.Text.ToUpper()));
                Response.Cookies.Add(MyCookie);
                Response.Redirect("Home.aspx");
            }
        }
    }
}