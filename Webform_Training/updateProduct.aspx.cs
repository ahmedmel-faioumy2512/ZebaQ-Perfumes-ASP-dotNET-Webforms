using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_Training
{
    public partial class updateProduct : System.Web.UI.Page
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
                        fillList();
                        txtProdID.Text = Request.QueryString["id"];
                        int prodid = int.Parse(txtProdID.Text);
                        var MyProd = db.Products.FirstOrDefault(s => s.ProductID == prodid);
                        txtProductName.Text = MyProd.ProductName;
                        ddCategory.SelectedValue = MyProd.CategoryID.ToString();
                        ddSupplier.SelectedValue = MyProd.SupplierID.ToString();
                        txtUnitPrice.Text = MyProd.UnitPrice.ToString();
                    }
                }
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
        protected void btnSave_Click(object sender, EventArgs e)
        {
            int prodid = int.Parse(Request.QueryString["id"]);
            decimal unitprice = decimal.Parse(txtUnitPrice.Text);
            var MyProd = db.Products.Find(prodid);
            MyProd.ProductName = txtProductName.Text;
            MyProd.UnitPrice = unitprice;
            MyProd.CategoryID = int.Parse(ddCategory.SelectedValue.ToString());
            MyProd.SupplierID = int.Parse(ddSupplier.SelectedValue.ToString());

            db.SaveChanges();
            Response.Redirect("Products.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }
    }
}