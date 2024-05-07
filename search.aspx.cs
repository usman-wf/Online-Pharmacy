using System;
using System.Collections.Generic;
using System.Configuration;
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

            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
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
                        DisplayReviews(item.MedicineId,  conn);
                        FetchReviewDescriptions(item.MedicineId);
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


        private void DisplayReviews(int medicineID, SqlConnection conn)
        {
            string query = "SELECT * FROM review WHERE medicineID = @medicineID";
            conn.Open();
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@medicineID", medicineID);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                         Response.Write($"<p><strong>{reader["CustomerID"]}</strong>: {reader["reviewDetail"]}</p>");
                         //reviewDetail.Text += reader["reviewDetail"].ToString() + Environment.NewLine;

                    }
                }
            }
        }


        private void FetchReviewDescriptions(int medicineID)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string getReviewsQuery = "SELECT reviewDetail FROM review WHERE medicineID = @medicineID";
                using (SqlCommand cmd = new SqlCommand(getReviewsQuery, conn))
                {
                    cmd.Parameters.AddWithValue("@medicineID", medicineID);
                    conn.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        txtReviews.Text = ""; // Clear existing text
                        while (reader.Read())
                        {
                            txtReviews.Text += $"{reader["reviewDetail"]}\n"; // Add review detail to text box
                        }
                    }
                }
            }
        }


    }
}
