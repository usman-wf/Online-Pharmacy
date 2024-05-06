using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace db_Project
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize or retrieve the cart items from session
                List<Item> cartItems = Session["CartItems"] as List<Item>;

                // Bind the cart items to the GridView
                BindCartItems(cartItems);
            }
        }

        private void BindCartItems(List<Item> cartItems)
        {
            // Assuming you have a GridView named "GridViewCart" on your viewcart.aspx page
            GridViewCart.DataSource = cartItems;
            GridViewCart.DataBind();

            // Customize the appearance of the GridView
            GridViewCart.CssClass = "my-custom-grid"; // Apply your custom CSS class

            // Add some styling to the header row
            GridViewCart.HeaderStyle.CssClass = "grid-header";
            GridViewCart.HeaderStyle.BackColor = System.Drawing.Color.LightGray;

            // Add alternating row styles
            GridViewCart.RowStyle.CssClass = "grid-row";
            GridViewCart.AlternatingRowStyle.CssClass = "grid-alt-row";

            // You can also add more columns or customize existing ones
            // For example, add a column for item images or descriptions

            // Don't forget to create the corresponding CSS classes in your stylesheet:
            // .my-custom-grid { /* Your custom styles here */ }
            // .grid-header { /* Header row styles */ }
            // .grid-row { /* Regular row styles */ }
            // .grid-alt-row { /* Alternating row styles */ }
        }
        protected void btnProceedToPayment_Click(object sender, EventArgs e)
        {
            decimal totalbalance=0;
            // Iterate through each row in the GridView
            foreach (GridViewRow row in GridViewCart.Rows)
            {
                // Find the TextBox for quantity in the current row
                TextBox txtStocks = (TextBox)row.FindControl("txtStocks");

                // Parse the quantity entered by the user
                int quantity;
                if (!int.TryParse(txtStocks.Text, out quantity))
                {
                    // Handle invalid input
                    // You may display an error message or take other actions
                    return;
                }

                // Get the stock quantity and price from the current row
                int stockQuantity = Convert.ToInt32(row.Cells[7].Text); // Assuming Stock Quantity is in the 7th column
                decimal price = Convert.ToDecimal(row.Cells[3].Text); // Assuming Price is in the 3rd column

                // Check if the entered quantity is less than or equal to the available stock quantity
                if (quantity <= stockQuantity)
                {
                    // Calculate the total price for the current item
                    decimal totalPrice = price * quantity;
                    totalbalance = totalbalance + totalPrice;
                    // You can perform further processing here, such as adding the item to the cart or calculating the total price for all items
                }
                else
                {
                    // Handle case where entered quantity exceeds available stock
                    // You may display an error message or take other actions
                    return;
                }
            }
            Session["payment"] = totalbalance;
            Response.Redirect("payment.aspx");

            // If all validations pass and processing is successful, you can redirect to the payment page or perform other actions
        }
        protected void GridViewCart_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "RemoveItem")
            {
                int medicineIdToRemove = Convert.ToInt32(e.CommandArgument);

                // Remove the item with the specified MedicineId from the cart
                RemoveItemFromCart(medicineIdToRemove);

                // Rebind the GridView to reflect the updated cart
                BindCart();
            }
        }

        private void RemoveItemFromCart(int medicineIdToRemove)
        {
            // Implement your logic to remove the item with the specified MedicineId from the cart
            // For example, you might remove the item from a session variable or database

            // Example: Remove item from a session variable named "Cart"
            List<Item> cart = (List<Item>)Session["CartItems"];
            Item itemToRemove = cart.FirstOrDefault(item => item.MedicineId == medicineIdToRemove);
            if (itemToRemove != null)
            {
                cart.Remove(itemToRemove);
                Session["CartItems"] = cart;
            }
        }

        private void BindCart()
        {
            // Implement your logic to bind the cart data to the GridView
            // For example, set the GridView's DataSource to the cart data and call DataBind()

            // Example: Binding from a session variable named "Cart"
            GridViewCart.DataSource = (List<Item>)Session["CartItems"];
            GridViewCart.DataBind();
        }

    }
}