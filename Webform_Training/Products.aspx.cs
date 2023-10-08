using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class Products : System.Web.UI.Page
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
                var productList = from p in db.Products
                                  join s in db.Suppliers on p.SupplierID equals s.SupplierID
                                  join c in db.Categories on p.CategoryID equals c.CategoryID
                                  select new { p.ProductID, p.ProductName, c.CategoryName, s.ContactName, p.UnitPrice };
                grd.DataSource = productList.ToList();
                grd.DataBind();
            }

        }

        protected void grd_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[2].Text = "كود الصنف";
                e.Row.Cells[3].Text = "اسم الصنف";
                e.Row.Cells[4].Text = "فئة الصنف";
                e.Row.Cells[5].Text = "المورد";
                e.Row.Cells[6].Text = "السعر";
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
            int prodid = int.Parse(hf.Value);
            var MyProd = db.Products.Find(prodid);
            db.Products.Remove(MyProd);
            db.SaveChanges();
            Response.Redirect("Products.aspx");
            MultiView1.ActiveViewIndex = 0;
        }
    }
}