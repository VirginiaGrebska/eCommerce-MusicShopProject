using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Retrieve ProductID from the query string
        string productId = Request.QueryString["ProductID"];
        // Retrieves product details
        ProductDetails pd = CatalogAccess.GetProductDetails(productId);
        // Does the product exist?
        if (pd.Album != null)
        {
            PopulateControls(pd);
        }
    }

    // Fill the control with data
    private void PopulateControls(ProductDetails pd)
    {
        // Display product details
        titleLabel.Text = pd.Album;
        descriptionLabel.Text = pd.Artist;
        priceLabel.Text = String.Format("{0:c}", pd.Price);
        productImage.ImageUrl = "ProductImages/" + pd.Image;
        // Set the title of the page
        this.Title = MusicShopConfiguration.SiteName + pd.Album;
    }
}