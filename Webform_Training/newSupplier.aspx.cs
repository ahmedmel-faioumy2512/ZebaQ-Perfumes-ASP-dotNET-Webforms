using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class newSupplier : System.Web.UI.Page
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
            Response.Redirect("Suppliers.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int suppid = int.Parse(txtsuppID.Text);
            Supplier supplier = new Supplier
            {
                SupplierID = suppid,
                CompanyName = txtCompanyName.Text,
                ContactName = txtContactName.Text,
                ContactTitle = txtContactTitle.Text,
                Address = txtAddress.Text,
                City = txtCity.Text,
                Region = txtRegion.Text,
                PostalCode = txtPostalCod.Text,
                Country = txtCountry.Text,
                Phone = txtPhone.Text,
                Fax = txtFax.Text
            };
            db.Suppliers.Add(supplier);
            db.SaveChanges();
            Response.Redirect("Suppliers.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int suppid = int.Parse(txtsuppID.Text);
            var Supp = db.Suppliers.FirstOrDefault(s => s.SupplierID == suppid);
            if (Supp == null)
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
            var Supp = db.Suppliers.FirstOrDefault(s => s.ContactName == txtContactName.Text);
            if (Supp == null)
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