using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Railway_Management_System.DAL;

namespace Railway_Management_System
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            var userInstance = Users.Instance;

            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "UPDATE Booking SET Status = @status FROM Booking JOIN Schedule ON Booking.RideID = Schedule.RideID WHERE Schedule.TravelDate < @date";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@status", "Completed");
                command.Parameters.AddWithValue("@date" , DateTime.Now.Date);
                command.ExecuteNonQuery();
                connection.Close();
            }

        }
    }
}