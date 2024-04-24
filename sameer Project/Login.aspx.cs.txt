using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Railway_Management_System.DAL;
namespace Railway_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            // Use ConfigurationManager to get the connection string from web.config
            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string query = "SELECT COUNT(*) FROM Traveller WHERE Email = @Email AND Password = @Password";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);
                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    string q = "SELECT ID , FName , LName FROM Traveller WHERE Email = @Email";
                    SqlCommand com = new SqlCommand(q , con);
                    com.Parameters.AddWithValue("@Email", email);
                    SqlDataReader reader = com.ExecuteReader();
                    if(reader.Read())
                    {
                        string fn = reader["FName"].ToString();
                        string ln = reader["LName"].ToString();
                        int id = Convert.ToInt32(reader["ID"].ToString());
                        Users.UpdateUser(id, fn, ln);
                    }
                    Response.Redirect("Main Page.aspx");
                }
                else
                {
                    // Display error message
                    lblMessage.Text = "Invalid email or password. Please try again.";
                }
            }
        }
    }
}