using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class updateCategory : System.Web.UI.Page
    {
        WebformTrainingDBEntities db = new WebformTrainingDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("CookLogin");
            MyCookie = Request.Cookies["CookLogin"];
            if (MyCookie == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (MyCookie["username"] != HttpUtility.UrlDecode("ADMIN"))
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    if (Page.IsPostBack == false)
                    {
                        txtCatID.Text = Request.QueryString["id"];
                        int cateid = int.Parse(txtCatID.Text);
                        var MyCate = db.Categories.FirstOrDefault(c => c.CategoryID == cateid);
                        txtCategoryName.Text = MyCate.CategoryName;
                        txtDescription.Text = MyCate.Description;
                        
                    }
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int cateid = int.Parse(Request.QueryString["id"]);
            var MyCate = db.Categories.Find(cateid);
            MyCate.CategoryName = txtCategoryName.Text;
            MyCate.Description = txtDescription.Text;
            
            db.SaveChanges();
            Response.Redirect("ProCategories.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProCategories.aspx");
        }
    }
}