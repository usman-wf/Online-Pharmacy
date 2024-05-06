using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Activities;

namespace db_Project
{
    public partial class search : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Retrieve data from session or Items object
                Item item = (Item)Session["ItemDetails"];

                // Check if item is not null
                if (item != null)
                {
                    // Populate your HTML elements with item details
                    lblName.Text = item.Name;
                    lblDescription.Text = item.Description;
                    lblPrice.Text = item.Price.ToString();
                    lblManufactureDate.Text = item.ManufactureDate.ToShortDateString();
                    lblExpiryDate.Text = item.ExpiryDate.ToShortDateString();
                    lblStockQuantity.Text = item.StockQuantity.ToString();
                }
                else
                {
                    // No item found in session
                    //lblError.Text = "No item details found.";
                }
            }
            catch (Exception ex)
            {
                // Log the exception and display a generic error message
                //lblError.Text = "An error occurred: " + ex.Message;
            }
        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {


            Item Additem = (Item)Session["ItemDetails"];
            List<Item> cartItems = Session["CartItems"] as List<Item>;
            if (cartItems != null)
            {
                bool itemExists = cartItems.Any(item => item.MedicineId == Additem.MedicineId);

                if (!itemExists)
                {
                    cartItems.Add(Additem);
                    Session["CartItems"] = cartItems; // Update the session variable
                }
            }

        }
    }
}
