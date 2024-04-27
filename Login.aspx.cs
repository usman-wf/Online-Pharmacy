using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using db_Project.DAL;
using System.Configuration;
using System.Data.SqlClient;

using System.Net;
using System.Drawing;

namespace db_Project
{
    
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Retrieve the values from the form
            string email = txtEmail?.Text.Trim();
            string password = txtPassword?.Text.Trim();

            // Basic validation
            if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                Response.Write("<script>alert('Email and Password are required.');</script>");
                return;
            }

            // Your database connection and login logic here
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open(); // Open database connection

                    // Define the SQL query to check the user based on email, password, and role
                    string query = "SELECT * FROM userInfo WHERE Email = @Email AND Password = @Password";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Use SQL parameters to avoid injection
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                // Successful login - redirect to the desired page
                                Response.Redirect("Home.aspx");
                            }
                            else
                            {
                                // Invalid credentials - show an error message
                                Response.Write("<script>alert('Invalid email, password');</script>");
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle database connection errors
                    Response.Write("<script>alert('An error occurred. Please try again.');</script>");
                    Console.WriteLine("Error: " + ex.Message);
                }
            }

        }



    }
}


 