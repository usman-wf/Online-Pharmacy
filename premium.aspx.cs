using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using db_Project.DAL;
namespace db_Project
{
    public partial class premium : System.Web.UI.Page
    { 
            protected void Page_Load(object sender, EventArgs e)
            {
                // Initialization code if needed
            }

            protected void btnPremium_Click(object sender, EventArgs e)
            {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE userInfo SET Premium = 1 WHERE id = @id",con);
            cmd.Parameters.AddWithValue("@id", Users.Instance.ID);

            cmd.ExecuteNonQuery();
        }

        protected void btnYearly_Click(object sender, EventArgs e)
            {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE userInfo SET yearlypackage=1 WHERE id =  @id", con);
            cmd.Parameters.AddWithValue("@id", Users.Instance.ID);

            cmd.ExecuteNonQuery();
        }


    }
}