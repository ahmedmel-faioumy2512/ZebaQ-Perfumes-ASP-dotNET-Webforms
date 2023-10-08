using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class ProCategories : System.Web.UI.Page
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
                var categoryList = from c in db.Categories
                                   select new { c.CategoryID , c.CategoryName , c.Description };
                grd.DataSource = categoryList.ToList();
                grd.DataBind();
            }
        }

        protected void grd_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[2].Text = "كود الفئة";
                e.Row.Cells[3].Text = "اسم الفئة";
                e.Row.Cells[4].Text = "الوصف";
                
            }
        }

        protected void grd_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            HttpCookie MyCookie = new HttpCookie("CookLogin");
            MyCookie = Request.Cookies["CookLogin"];
            if (MyCookie == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (MyCookie["username"] == HttpUtility.UrlDecode("ADMIN"))
                {
                    lblName.Text = grd.Rows[e.RowIndex].Cells[4].Text;
                    hf.Value = grd.Rows[e.RowIndex].Cells[2].Text;
                    MultiView1.ActiveViewIndex = 1;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int catid = int.Parse(hf.Value);
            var MySupp = db.Categories.Find(catid);
            db.Categories.Remove(MySupp);
            db.SaveChanges();
            Response.Redirect("ProCategories.aspx");
            MultiView1.ActiveViewIndex = 0;
        }
    }
}