using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace db_Project
{
    public partial class adminLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=A_rafay\SQLEXPRESS;Initial Catalog=pharmacy;Integrated Security=True;");
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void b1_Click(object sender, EventArgs e)
        {
            //    try
            //    {
            //        if (f1.HasFile)
            //        {
            //            string filename=System.IO.Path.GetFileName(f1.FileName);

            //            string filePath = "~/images1/" + filename;
            //            f1.SaveAs(Server.MapPath(filePath));
            //        }
            //        else
            //        {
            //            // Notify user that no file was uploaded
            //            Response.Write("<script>alert('No file was uploaded. Please select a file.');</script>");
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        // Display the exception message
            //        Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            //    }

            string name = t1.Text;
            string description = t2.Text;
            float price = float.Parse(t3.Text);
            DateTime manufactureDate = DateTime.Parse(t4.Text);
            DateTime expiryDate = DateTime.Parse(t5.Text);
            int stockQuantity = int.Parse(t6.Text);
            string connectionString = "Data Source=USMAN;Initial Catalog=pharmacy;Integrated Security=True;";
            // SQL query to insert data into the Inventory table
            string query = "INSERT INTO Inventory ( name, description, price, manufactureDate, expiryDate, stockQuantity) " +
                  "VALUES ( @Name, @Description, @Price, @ManufactureDate, @ExpiryDate, @StockQuantity)";


            // Create and open conne
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create command with parameters
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Description", description);
                    command.Parameters.AddWithValue("@Price", price);
                    command.Parameters.AddWithValue("@ManufactureDate", manufactureDate);
                    command.Parameters.AddWithValue("@ExpiryDate", expiryDate);
                    command.Parameters.AddWithValue("@StockQuantity", stockQuantity);

                    // Open connection
                    try
                    {
                        // Open connection
                        connection.Open();

                        // Execute query
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if any rows were affected (successful insertion)
                        if (rowsAffected > 0)
                        {
                            // Insert successful
                            // You can redirect the user or show a success message
                        }
                        else
                        {

                            // Insert failed
                            // You can display an error message to the user
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle exception
                        // You can log the exception or display an error message
                        // Example:
                        Console.WriteLine("Error: " + ex.Message);
                    }
                    finally
                    {
                        // Close connection
                        connection.Close();
                    }
                }
            }
        }

    }

}