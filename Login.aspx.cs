using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace db_Project
{
    public partial class Login : System.Web.UI.Page
     
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Perform any initialization logic here
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Retrieve user input
            string email = txtEmail.Text;
            string password = txtPassword.Text;
            //string role = rblRole.SelectedItem.Text; // Assuming you want to get the selected role

            // Perform authentication logic (this is just a placeholder example)
            if (email == "example" )
            {
                // Authentication successful
                // Redirect to a new page or perform further actions
                Response.Redirect("Home.aspx");
            }
            else
            {
                // Authentication failed
                // You can display an error message or handle it as per your application logic
                // For simplicity, let's just display a JavaScript alert
                //  ClientScript.RegisterStartupScript(GetType(), "alert", "alert( txtEmail.Text);", true);
                //Response.Redirect("Home.aspx");
            }
        }
    }
}