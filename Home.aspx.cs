using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using db_Project.DAL;
using System.Data;
using System.Data.SqlClient;
namespace db_Project
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize cart session variable if not already initialized
                if (Session["CartItems"] == null)
                {
                    Session["CartItems"] = new List<Item>();
                }
            }
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
            //string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Data Source=A_rafay\\SQLEXPRESS;Initial Catalog=pharmacy;Integrated Security=True;"].ConnectionString;
            // Define your SQL query to retrieve item details if it exists in stock
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
                        // Store item details in session to pass to the search page
                        Session["ItemDetails"] = new Item
                        {
                            MedicineId = Convert.ToInt32(reader["medicineId"]),
                            Name = reader["name"].ToString(),
                            Description = reader["description"].ToString(),
                            Price = Convert.ToSingle(reader["price"]),
                            ManufactureDate = Convert.ToDateTime(reader["manufactureDate"]),
                            ExpiryDate = Convert.ToDateTime(reader["expiryDate"]),
                            StockQuantity = Convert.ToInt32(reader["stockQuantity"])
                        };

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

        //protected void AddToCartBP_Click(object sender, EventArgs e)
        //{



        //    Response.Redirect("payment.aspx");
        // Import this namespace for SQL operations

        protected void AddToCartBP_Click(object sender, EventArgs e)
        {
            try
            {
                // Get the button that was clicked
                int btn = Convert.ToInt32(((Button)sender).CommandArgument);

                if (btn == 0)
                {
                    throw new Exception("Button command argument is null or empty.");
                }

                // Fetch details of the medicine from the inventory table using the medicine ID
                string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                string query = "SELECT * FROM inventory WHERE medicineId = @MedicineId";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@MedicineId", btn);

                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            // Retrieve medicine details from the database
                            // Store item details in session to pass to the search page
                            Item AddItem = new Item
                            {
                                MedicineId = Convert.ToInt32(reader["medicineId"]),
                                Name = reader["name"].ToString(),
                                Description = reader["description"].ToString(),
                                Price = Convert.ToSingle(reader["price"]),
                                ManufactureDate = Convert.ToDateTime(reader["manufactureDate"]),
                                ExpiryDate = Convert.ToDateTime(reader["expiryDate"]),
                                StockQuantity = Convert.ToInt32(reader["stockQuantity"])
                            };
                            List<Item> cartItems = Session["CartItems"] as List<Item>;
                            if (cartItems != null)
                            {
                                bool itemExists = cartItems.Any(item => item.MedicineId == AddItem.MedicineId);

                                if (!itemExists)
                                {
                                    cartItems.Add(AddItem);
                                    Session["CartItems"] = cartItems; // Update the session variable
                                }
                                //cartItems.Add(AddItem);
                                //    Session["CartItems"] = cartItems; // Update the session variable
                            }

                        }
                        else
                        {
                            throw new Exception("Medicine not found in inventory.");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle the exception
                Response.Write("Error: " + ex.Message);
            }
        }

        //protected void AddToCart_Click(object sender, EventArgs e)
        //{

        //}
    }



}

