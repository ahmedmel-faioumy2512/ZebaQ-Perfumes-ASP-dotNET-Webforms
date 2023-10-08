using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class Customers : System.Web.UI.Page
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
                var CustomerList = from c in db.Customers
                                   select new { c.CustomerID, c.CompanyName, c.ContactName, c.City, c.Country };
                grd.DataSource = CustomerList.ToList();
                grd.DataBind();
            }
            
        }

        protected void grd_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[2].Text = "كود العميل";
                e.Row.Cells[3].Text = "الشركة";
                e.Row.Cells[4].Text = "اسم العميل";
                e.Row.Cells[5].Text = "المدينة";
                e.Row.Cells[6].Text = "الدولة";
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
            var MyCust = db.Customers.Find(hf.Value);
            db.Customers.Remove(MyCust);
            db.SaveChanges();
            Response.Redirect("Customers.aspx");
            MultiView1.ActiveViewIndex = 0;
        }
    }
}