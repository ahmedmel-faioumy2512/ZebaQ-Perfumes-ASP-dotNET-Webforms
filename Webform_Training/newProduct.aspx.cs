using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class newProduct : System.Web.UI.Page
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
            if(Page.IsPostBack == false)
            {
                fillList();
            }
        }

        void fillList()
        {
            ddCategory.DataSource = db.Categories.ToList();
            ddCategory.DataValueField = "CategoryID";
            ddCategory.DataTextField = "CategoryName";
            ddCategory.DataBind();
            ddSupplier.DataSource = db.Suppliers.ToList();
            ddSupplier.DataValueField = "SupplierID";
            ddSupplier.DataTextField = "ContactName";
            ddSupplier.DataBind();
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int prodid = int.Parse(txtProdID.Text);
            decimal unitprice = decimal.Parse(txtUnitPrice.Text);
            Product product = new Product
            {
                ProductID = prodid,
                ProductName = txtProductName.Text,
                SupplierID = int.Parse(ddSupplier.SelectedValue.ToString()),
                CategoryID = int.Parse(ddCategory.SelectedValue.ToString()),
                UnitPrice = unitprice 
            };
            db.Products.Add(product);
            db.SaveChanges();
            Response.Redirect("Products.aspx");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int prodid = int.Parse(txtProdID.Text);
            var Prod = db.Products.FirstOrDefault(s => s.ProductID == prodid);
            if (Prod == null)
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
            var Prod = db.Products.FirstOrDefault(p => p.ProductName == txtProductName.Text);
            if (Prod == null)
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