using System;
using System.Data.SqlClient;
using System.Web.UI;
//using db_Project.DAL;

namespace db_Project
{
    public partial class TestDatabaseConnection : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

        try
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();   
                Response.Write("Connection successful!");
            }
        }
        catch (Exception ex)
        {
          
            Response.Write("Connection failed: " + ex.Message);
        }
    }
}
}
