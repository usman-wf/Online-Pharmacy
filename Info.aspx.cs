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
    public partial class Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

 