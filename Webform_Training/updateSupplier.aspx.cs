using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class updateSupplier : System.Web.UI.Page
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
                        txtsuppID.Text = Request.QueryString["id"];
                        int suppid = int.Parse(txtsuppID.Text);
                        var MySupp = db.Suppliers.FirstOrDefault(s => s.SupplierID == suppid);
                        txtCompanyName.Text = MySupp.CompanyName;
                        txtContactName.Text = MySupp.ContactName;
                        txtContactTitle.Text = MySupp.ContactTitle;
                        txtAddress.Text = MySupp.Address;
                        txtCity.Text = MySupp.City;
                        txtRegion.Text = MySupp.Region;
                        txtPostalCod.Text = MySupp.PostalCode;
                        txtCountry.Text = MySupp.Country;
                        txtPhone.Text = MySupp.Phone;
                        txtFax.Text = MySupp.Fax;
                    }
                }
              }
            }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int suppid = int.Parse(Request.QueryString["id"]);
            var MySupp = db.Suppliers.Find(suppid);
            MySupp.CompanyName = txtCompanyName.Text;
            MySupp.ContactName = txtContactName.Text;
            MySupp.ContactTitle = txtContactTitle.Text;
            MySupp.Address = txtAddress.Text;
            MySupp.City = txtCity.Text;
            MySupp.Region = txtRegion.Text;
            MySupp.PostalCode = txtPostalCod.Text;
            MySupp.Country = txtCountry.Text;
            MySupp.Phone = txtPhone.Text;
            MySupp.Fax = txtFax.Text;
            db.SaveChanges();
            Response.Redirect("Suppliers.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Suppliers.aspx");
        }
    }
}