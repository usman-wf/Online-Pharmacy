using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Reflection;
using System.Web.UI;
using db_Project.DAL;

namespace db_Project // Your namespace here
{



    public partial class Register : Page // Your class name here
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {
            // Your code here
        }


 
            protected void btnSignUp_Click(object sender, EventArgs e)
            {

            //// Response.Write("<script>alert('Sign Up Successful!');</script>");
            ///
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                     
                    con.Open();
                    Response.Write("<script>alert('Connection opened');</script>");

                }

                SqlCommand cmd = new SqlCommand("INSERT INTO  userInfo(firstname, lastname, email, phone, password,address) VALUES (@firstname, @lastname, @email, @phone, @password,@address)", con);
                cmd.Parameters.AddWithValue("@firstname", firstname.Text.Trim());
                cmd.Parameters.AddWithValue("@lastname", lastname.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", phone.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                cmd.ExecuteScalar();
                Response.Write("<script>alert('Parameters added');</script>");

                con.Close();
                Response.Write("<script>alert('Sign Up Successful!');</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


            }

           
        


    }
}
