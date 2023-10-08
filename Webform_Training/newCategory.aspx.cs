using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class newCategory : System.Web.UI.Page
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
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProCategories.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int catid = int.Parse(txtCatID.Text);
            Category category = new Category
            {
                CategoryID = catid,
                CategoryName = txtCategoryName.Text,
                Description = txtDescription.Text,
                
            };
            db.Categories.Add(category);
            db.SaveChanges();
            Response.Redirect("ProCategories.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int catid = int.Parse(txtCatID.Text);
            var Cate = db.Categories.FirstOrDefault(c => c.CategoryID == catid);
            if (Cate == null)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            var Cate = db.Categories.FirstOrDefault(c => c.CategoryName == txtCategoryName.Text);
            if (Cate == null)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}