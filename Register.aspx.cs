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

namespace db_Project
{
    public partial class Register : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Your code here
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            //// Response.Write("<script>alert('Sign Up Successful!');</script>");
            ///
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO  UserInfo(Fname, Lname, email,password, phoneNo, address) VALUES (@firstname, @lastname, @email, @password,@phone, @address)", con);
            cmd.Parameters.AddWithValue("@firstname", firstname.Text.Trim());
            cmd.Parameters.AddWithValue("@lastname", lastname.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@phone", phone.Text.Trim());
            cmd.Parameters.AddWithValue("@address", address.Text.Trim());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Parameters added');</script>");
            con.Close();
            Response.Write("<script>alert('Sign Up Successful!');</script>");
        }
    }
}