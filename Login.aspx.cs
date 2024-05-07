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
using System.Data;


namespace db_Project
{

    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 

        
            protected void btnLogin_Click(object sender, EventArgs e)
            {
                // Retrieve the form values
                string email = txtEmail?.Text.Trim();
                string userPassword = txtPassword?.Text.Trim();  // Renamed to avoid conflicts
                string role = rblRole?.SelectedValue;  // Get the selected role, with a null check

                // Basic validation
                if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(userPassword) || string.IsNullOrEmpty(role))
                {
                    Response.Write("<script>alert('Email, password, and role are required.');</script>");
                    return;
                }

                // Connection string (assuming it’s set in the configuration file)
                string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    try
                    {
                        conn.Open();

                        // Determine the SQL query based on role
                        string table = role == "Admin" ? "Admin" : "userInfo";
                        string query = $"SELECT COUNT(*) FROM {table} WHERE Email = @Email AND Password = @Password";

                        SqlCommand cmd = new SqlCommand(query, conn);
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", userPassword);

                        int count = (int)cmd.ExecuteScalar();

                        if (count > 0)
                        {
                            if (role == "Admin")
                            {
                            Response.Redirect("AdminHome.aspx");
                            }
                            else
                            {
                            Response.Write("<script>alert('VALID email or password');</script>");

                            // Fetch additional user information if needed
                            string userQuery = "SELECT id, Fname, Lname FROM userInfo WHERE Email = @Email";
                           
                            SqlCommand userCmd = new SqlCommand(userQuery, conn);
                           
                            userCmd.Parameters.AddWithValue("@Email", email);

                            SqlDataReader reader = userCmd.ExecuteReader();
                             {
                                    if (reader.Read())
                                   {
                                        string fn = reader["Fname"].ToString();
                                        string ln = reader["Lname"].ToString();
                                       int id = Convert.ToInt32(reader["id"]);
                                      

                                     Users.UpdateUser(id, fn, ln);
                                    Response.Write("<script>console.log(id);</script>");

                                }
                            }

                                Response.Redirect("Home.aspx");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid email or password');</script>");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('An error occurred. Please try again later.');</script>");
                        Console.WriteLine("Error: " + ex.Message);  // Log error message
                    }
                    finally
                    {
                        if (conn.State == ConnectionState.Open)
                        {
                            conn.Close();  // Ensure the connection is closed
                        }
                    }
                }
            }

           


    }


    
}