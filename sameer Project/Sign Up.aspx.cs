using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Railway_Management_System.DAL;

namespace Railway_Management_System
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            // Get user input
            string firstName = firstname.Text;
            string lastName = lastname.Text;
            string Email = email.Text;
            string Mobile = mobile.Text;
            string cnic = CNIC.Text;
            string Password = password.Text;

            // Check if phone number, email, and CNIC already exist in the database
            if (IsExistingUser(Email, Mobile, cnic))
            {
                // Display error message and clear input fields
                lblMessage.Text = "User with this email, phone number, or CNIC already exists. Please try again";
                ClearInputs();
                return;
            }

            // Create account in the database
            if (CreateAccount(firstName, lastName, Email, Mobile, cnic, Password))
            {
                string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    lblMessage.Text = "Account created successfully";
                    string q = "SELECT ID , FName , LName FROM Traveller WHERE Email = @Email";
                    SqlCommand com = new SqlCommand(q, con);
                    com.Parameters.AddWithValue("@Email", Email);
                    con.Open();
                    SqlDataReader reader = com.ExecuteReader();
                    if (reader.Read())
                    {
                        string fn = reader["FName"].ToString();
                        string ln = reader["LName"].ToString();
                        int id = Convert.ToInt32(reader["ID"].ToString());
                        Users.UpdateUser(id, fn, ln);
                    }
                    con.Close();
                    Response.Redirect("Main Page.aspx");
                }
            }
            else
            {
                // Error creating account
                lblMessage.Text = "Error creating account. Please try again";
            }
        }

        private bool IsExistingUser(string email, string mobile, string cnic)
        {
            // Database connection string
            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // SQL query to check if user exists
                string query = "SELECT COUNT(*) FROM Traveller WHERE Email = @Email OR PhoneNo = @Mobile OR CNIC = @CNIC";

                // Create command
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Mobile", mobile);
                command.Parameters.AddWithValue("@CNIC", cnic);

                // Open connection
                connection.Open();

                // Execute query
                int count = (int)command.ExecuteScalar();

                // Close connection
                connection.Close();

                return count > 0;
            }
        }

        private bool CreateAccount(string firstName, string lastName, string email, string mobile, string cnic, string password)
        {
            // Database connection string
            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // SQL query to insert new user
                string query = "INSERT INTO Traveller (FName, LName, Email, PhoneNo, CNIC, Password) VALUES (@FirstName, @LastName, @Email, @Mobile, @CNIC, @Password)";

                // Create command
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@FirstName", firstName);
                command.Parameters.AddWithValue("@LastName", lastName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Mobile", mobile);
                command.Parameters.AddWithValue("@CNIC", cnic);
                command.Parameters.AddWithValue("@Password", password);

                // Open connection
                connection.Open();

                // Execute query
                int rowsAffected = command.ExecuteNonQuery();

                // Close connection
                connection.Close();

                return rowsAffected > 0;
            }
        }

        private void ClearInputs()
        {
            firstname.Text = "";
            lastname.Text = "";
            email.Text = "";
            mobile.Text = "";
            CNIC.Text = "";
            password.Text = "";
        }
    }
}
