using Antlr.Runtime.Tree;
using Railway_Management_System.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Railway_Management_System
{
    public partial class Reward_System : BasePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Users.IsLoggedIn())
            {
                lnk.Text = Users.Instance.FullName;
                lnk.NavigateUrl = "Profile.aspx"; // Assuming the profile page is named profile.aspx
                jb.Text = "Book Now";
            }
            else
            {
                lnk.Text = "Login";
                lnk.NavigateUrl = "Login.aspx"; // Assuming the login page is named login.aspx
                jb.Text = "Join Now";
            }
        }

        protected void jb_Click(object sender, EventArgs e)
        {
            if (Users.IsLoggedIn())
            {
                Response.Redirect("Booking.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}