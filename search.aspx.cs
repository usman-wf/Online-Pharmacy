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
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    // Retrieve the query parameter from the URL
        //    string query = Request.QueryString["query"];

        //    if (!string.IsNullOrEmpty(query))
        //    {
        //        // Connect to the database
        //        string connectionString = "con"; // Change to your DB connection string
        //        using (SqlConnection connection = new SqlConnection(connectionString))
        //        {
        //            connection.Open();
        //            string sql = "SELECT medicineId , name, description, price FROM Inventory WHERE Name LIKE @query";
        //            using (SqlCommand command = new SqlCommand(sql, connection))
        //            {
        //                command.Parameters.AddWithValue("@query", "%" + query + "%");

        //                using (SqlDataReader reader = command.ExecuteReader())
        //                {
        //                    if (reader.HasRows)
        //                    {
        //                        string resultHtml = "";
        //                        while (reader.Read())
        //                        {
        //                            resultHtml += $"<p><strong>Item:</strong> {reader["name"]}</p>";
        //                            resultHtml += $"<p><strong>Description:</strong> {reader["description"]}</p>";
        //                            resultHtml += $"<p><strong>Price:</strong> ${reader["price"]}</p><br/>";
        //                        }

        //                        // Inject the results into the HTML
        //                      //  resultDiv.InnerHtml = resultHtml;
        //                    }
        //                    else
        //                    {
        //                       // resultDiv.InnerHtml = $"No results found for \"{query}\"";
        //                    }
        //                }
        //            }
        //        }
        //    }
        //    else
        //    {
        //        ////resultDiv.InnerHtml = "No search query provided.";
        //    }
        //}
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        // Check if session variable contains item details
        //        if (Session["ItemDetails"] != null)
        //        {
        //            // Retrieve item details from session
        //            Item item = (Item)Session["ItemDetails"];
        //            // Display item details on the page
        //            lblName.Text = item.Name;
        //            lblDescription.Text = item.Description;
        //            lblPrice.Text = item.Price.ToString();
        //            lblManufactureDate.Text = item.ManufactureDate.ToShortDateString();
        //            lblExpiryDate.Text = item.ExpiryDate.ToShortDateString();
        //            lblStockQuantity.Text = item.StockQuantity.ToString();
        //        }
        //        else
        //        {
        //            // If item details are not found in session, display an error message
        //            lblMessage.Text = "Item details not found.";
        //        }
        //    }
        //}
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
                   // lblError.Text = "No item details found.";
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
            // Add to cart functionality here
        }

    }
}
