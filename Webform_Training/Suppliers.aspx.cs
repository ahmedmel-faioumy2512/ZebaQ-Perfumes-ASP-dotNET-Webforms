using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class Suppliers : System.Web.UI.Page
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
                var supplierList = from s in db.Suppliers
                                   select new { s.SupplierID, s.CompanyName, s.ContactName, s.City, s.Country };
                grd.DataSource = supplierList.ToList();
                grd.DataBind();
            }

        }

        protected void grd_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[2].Text = "كود المورد";
                e.Row.Cells[3].Text = "الشركة";
                e.Row.Cells[4].Text = "اسم المورد";
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
            int suppid = int.Parse(hf.Value);
            var MySupp = db.Suppliers.Find(suppid);
            db.Suppliers.Remove(MySupp);
            db.SaveChanges();
            Response.Redirect("Suppliers.aspx");
            MultiView1.ActiveViewIndex = 0;
        }
    }
}