using System;
using System.Web.UI;

namespace db_Project // Your namespace here
{
    public partial class Register : Page // Your class name here
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Your code here
        }
        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Retrieve user input
            Response.Redirect("Home.aspx");
           
        }
    }
}
