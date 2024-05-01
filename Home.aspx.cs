using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using db_Project.DAL;

namespace db_Project
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSearchClick(object sender, EventArgs e)
        {
            // string searchTerm = searchInput;
            // if (string.IsNullOrEmpty(searchTerm))
            // {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Please enter a search term!');", true);
            return;
            // }
            // Assuming you have a connection string named "con" in your Web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            // Define your SQL query to check if the item exists in stock
            string query = "SELECT COUNT(*) FROM Inventory WHERE name = @searchTerm AND stockQuantity > 0";
            // Use try-catch block to handle exceptions
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to prevent SQL injection
                        // command.Parameters.AddWithValue("@searchTerm", searchTerm);
                        connection.Open();
                        // Execute the query
                        int count = Convert.ToInt32(command.ExecuteScalar());
                        // If count is greater than 0, the item exists in stock
                        if (count > 0)
                        {
                            // Redirect to search.aspx passing the search term as a query string parameter
                            //  Response.Redirect($"search.aspx?searchTerm={searchTerm}");
                        }
                        else
                        {
                            // Item not found in stock
                            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Item not found in stock!');", true);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", $"alert('An error occurred: {ex.Message}');", true);
            }
        }

    }

}