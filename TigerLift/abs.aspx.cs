using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TigerLift
{
    public partial class abs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }
  private void FillPage()
        {
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                string clientId = Context.User.Identity.GetUserId();

                int id = Convert.ToInt32(Request.QueryString["id"]);
                ProductModel productModel = new ProductModel();
                Product product = productModel.GetProduct(id);

                lblPrice.Text = "Price per unit: <br/>$ " + product.Price;
                lblTitle.Text = product.Name;
                lblItemNr.Text = id.ToString();
                lblDescription.Text = product.Description;
                imgabs.ImageUrl = "~/ProductType/Products/" + product.Image;

                int[] amount = Enumerable.Range(1, 20).ToArray();
                ddlAmount.DataSource = amount;
                ddlAmount.AppendDataBoundItems = true;
                ddlAmount.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
             if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                string clientId = Context.User.Identity.GetUserId();

                if (clientId != null)

                {

                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    int amount = Convert.ToInt32(ddlAmount.SelectedValue);

                    Cart cart = new Cart
                    {
                        Amount = amount,
                        ClientID = clientId,
                        DatePurchased = DateTime.Now,
                        IsInCart = true,
                        ProductID = id
                    };

                    CartModel model = new CartModel();
                    lblResult.Text = model.InsertCart(cart);
                }
                else
                {
                    lblResult.Text = "Please log in to add program";
                } 
            }
        }
    }
}