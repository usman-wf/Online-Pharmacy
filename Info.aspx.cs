using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using db_Project.DAL;
namespace db_Project
{
    public partial class Info: System.Web.UI.Page

    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    if (!IsPostBack)
        //    {
        //        var currentUser = (BasePage)Page; // Typecast to BasePage to access CurrentUser
        //        if (currentUser.CurrentUser != null)
        //        {
        //            // Prefill fields with existing user data, if required
        //            firstname.Text = currentUser.CurrentUser.FirstName;
        //            lastname.Text = currentUser.CurrentUser.LastName;
        //            // Other prefill code
        //        }
        //    }
        //}

        protected void btnUpdateClick(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            {
                connection.Open();
                var currentUser = (BasePage)Page;
              //////  string query = "UPDATE userInfo SET Fname = @firstname,Lname = @lastname ,email = @email, password = @password," +
              /////      "phone = @phone,address = @address   WHERE id = @id"; // Assuming you have a Users table with a PhotoPath column
               // SqlCommand cmd = new SqlCommand(query, connection);
                //////cmd.Parameters.AddWithValue("@id", currentUser.CurrentUser.ID);
                //cmd.Parameters.AddWithValue("@firstname", firstname.Text.Trim());
                //cmd.Parameters.AddWithValue("@lastname", lastname.Text.Trim());
                //cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                //cmd.Parameters.AddWithValue("@password", password.Text);
                //cmd.Parameters.AddWithValue("@phone", phone.Text.Trim());
                //cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                //cmd.ExecuteNonQuery();
            }
        }

    }

  


}

 