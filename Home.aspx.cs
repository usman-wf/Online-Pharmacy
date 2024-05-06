//using System;
//using System.Collections.Generic;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using db_Project.DAL;

//namespace db_Project
//{
//    public partial class Home : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }



//        protected void btnSearchClick(object sender, EventArgs e)
//        { 
//             string searchTerm = searchInput.Text;
//             if (string.IsNullOrEmpty(searchTerm))
//             {
//            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Please enter a search term!');", true);
//            return;
//             }
//            // Assuming you have a connection string named "con" in your Web.config
//            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;
//            // Define your SQL query to check if the item exists in stock
//            string query = "SELECT COUNT(*) FROM Inventory WHERE name = @searchTerm AND stockQuantity > 0";
//            // Use try-catch block to handle exceptions
//            try
//            {
//                using (SqlConnection connection = new SqlConnection(connectionString))
//                {
//                    using (SqlCommand command = new SqlCommand(query, connection))
//                    {
//                        // Add parameters to prevent SQL injection
//                        command.Parameters.AddWithValue("@searchTerm", searchTerm);
//                        connection.Open();
//                        // Execute the query
//                        int count = Convert.ToInt32(command.ExecuteScalar());
//                        // If count is greater than 0, the item exists in stock
//                        if (count > 0)
//                        {
//                            // Redirect to search.aspx passing the search term as a query string parameter
//                             Response.Redirect("search.aspx");
//                        }
//                        else
//                        {
//                            // Item not found in stock
//                            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Item not found in stock!');", true);
//                        }
//                    }
//                }
//            }
//            catch (Exception ex)
//            {
//                // Handle exceptions
//                ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
//            }

//        }

//        protected void AddToCartBP_Click(object sender, EventArgs e)
//        {

//        }


//    }

//}            
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using db_Project.DAL;

namespace db_Project
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSearchClick(object sender, EventArgs e)
        {
            string searchTerm = searchInput.Text;
            if (string.IsNullOrEmpty(searchTerm))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Please enter a search term!');", true);
                return;
            }

            // Assuming you have a connection string named "con" in your Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;// Define your SQL query to retrieve item details if it exists in stock
            string query = "SELECT * FROM Inventory WHERE name = @searchTerm AND stockQuantity > 0";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@searchTerm", searchTerm);
                    connection.Open();
                    // Execute the query
                    SqlDataReader reader = command.ExecuteReader();
                    // If the item exists in stock, redirect to search.aspx passing the search term as a query string parameter
                    if (reader.Read())
                    {

                        // Store item details in session to pass to the search page
                        Item item = new Item
                        {
                            MedicineId = Convert.ToInt32(reader["medicineId"]),
                            Name = reader["name"].ToString(),
                            Description = reader["description"].ToString(),
                            Price = Convert.ToSingle(reader["price"]),
                            ManufactureDate = Convert.ToDateTime(reader["manufactureDate"]),
                            ExpiryDate = Convert.ToDateTime(reader["expiryDate"]),
                            StockQuantity = Convert.ToInt32(reader["stockQuantity"])
                        };

                        Session["ItemDetails"] = item;
                        // Redirect to search.aspx passing the search term as a query string parameter
                        Response.Redirect($"search.aspx?searchTerm={searchTerm}");
                    }
                    else
                    {
                        // Item not found in stock
                        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Item not found in stock!');", true);
                    }
                    connection.Close();
                }
            }
            
           

        }
        protected void AddToCartBP_Click(object sender, EventArgs e)
        {
            string medicineId = ((Button)sender).CommandArgument;

            // Example: Assuming you have a shopping cart stored in session
            List<string> cartItems = Session["ShoppingCart"] as List<string>;

            if (cartItems == null)
            {
                cartItems = new List<string>();
            }

            // Add the selected medicine to the shopping cart
            cartItems.Add(medicineId);

            // Store the updated shopping cart back in session
            Session["ShoppingCart"] = cartItems;

            // Redirect the user to the payment page
            Response.Redirect("payment.aspx");
        }
    }


    
}

            