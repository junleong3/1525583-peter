using System;
using System.Collections;
using System.IO;

namespace TigerLift
{
    public partial class ManageProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProductType();

                if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    FillPage(id);
                }
            }
                
        }

        private void FillPage(int id)
        {
            ProductModel productModel = new ProductModel();
            Product product = productModel.GetProduct(id);

            txtName.Text = product.Name;
            txtDescription.Text = product.Description;
            txtPrice.Text = product.Price.ToString();

            ddlImage.SelectedValue = product.Image;
            ddlType.SelectedValue = product.TypeId.ToString();
        }

        private void GetProductType()
        {
            try
            {

                string[] productType = Directory.GetFiles(Server.MapPath("~/ProductType/Products/"));

                ArrayList imageList = new ArrayList();
                foreach (string image in productType)
                {
                    string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    imageList.Add(imageName);
                }

                ddlImage.DataSource = imageList;
                ddlImage.AppendDataBoundItems = true;
                ddlImage.DataBind();
            }
            catch (Exception e)
            {
                lblResult.Text = e.ToString();
            }
        }

        private Product CreateProduct()
        {
            Product product = new Product();

            product.Name = txtName.Text;
            product.Price = Convert.ToInt32(txtPrice.Text);
            product.TypeId = Convert.ToInt32(ddlType.SelectedValue);
            product.Description = txtDescription.Text;
            product.Image = ddlImage.SelectedValue;

            return product;           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ProductModel productModel = new ProductModel();
            Product product = CreateProduct();

            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                lblResult.Text = productModel.UpdateProduct(id, product);
            }
            else
            {
                lblResult.Text = productModel.InsertProgram(product);
            }
        }
    }
}