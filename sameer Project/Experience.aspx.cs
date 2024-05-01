using Railway_Management_System.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Railway_Management_System
{

    public partial class Experience : BasePage
    {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (Users.IsLoggedIn())
                {
                    lnk.Text = Users.Instance.FullName;
                    lnk.NavigateUrl = "Profile.aspx"; // Assuming the profile page is named profile.aspx
                }
                else
                {
                    lnk.Text = "Login";
                    lnk.NavigateUrl = "Login.aspx"; // Assuming the login page is named login.aspx
                }
            }
    }
}