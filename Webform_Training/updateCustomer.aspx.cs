using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class updateCustomer : System.Web.UI.Page
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
                        txtCustID.Text = Request.QueryString["id"];
                        var MyCust = db.Customers.FirstOrDefault(c => c.CustomerID == txtCustID.Text);
                        txtCompanyName.Text = MyCust.CompanyName;
                        txtContactName.Text = MyCust.ContactName;
                        txtContactTitle.Text = MyCust.ContactTitle;
                        txtAddress.Text = MyCust.Address;
                        txtCity.Text = MyCust.City;
                        txtRegion.Text = MyCust.Region;
                        txtPostalCod.Text = MyCust.PostalCode;
                        txtCountry.Text = MyCust.Country;
                        txtPhone.Text = MyCust.Phone;
                        txtFax.Text = MyCust.Fax;
                    }
                }
            }
            
            

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var MyCust = db.Customers.Find(Request.QueryString["id"]);
            MyCust.CompanyName = txtCompanyName.Text;
            MyCust.ContactName = txtContactName.Text;
            MyCust.ContactTitle = txtContactTitle.Text;
            MyCust.Address = txtAddress.Text;
            MyCust.City = txtCity.Text;
            MyCust.Region = txtRegion.Text;
            MyCust.PostalCode = txtPostalCod.Text;
            MyCust.Country = txtCountry.Text;
            MyCust.Phone = txtPhone.Text;
            MyCust.Fax = txtFax.Text;
            db.SaveChanges();
            Response.Redirect("Customers.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customers.aspx");
        }
    }
}