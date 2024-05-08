using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Railway_Management_System.DAL;

namespace Railway_Management_System
{
    public partial class Main_Page : BasePage
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

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string destination = DestinationStation.Text;
            string arrival = ArrivalStation.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
            // Define your SQL query to select the top 5 schedules with the given destination
            string query = "SELECT TOP 5 Locations.Arrival, Locations.Destination, TravelDate, TravelTime, Available_Seats  FROM Schedule JOIN Locations ON Schedule.LocationID = Locations.LocationID WHERE Destination = @Destination AND Arrival = @Arrival AND TravelDate >= @date ORDER BY TravelDate, TravelTime";

            // Create a SqlConnection and a SqlCommand to execute the query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Destination", destination);
                command.Parameters.AddWithValue("@Arrival", arrival);
                command.Parameters.AddWithValue("@date", DateTime.Now.Date);

                // Open the connection and execute the query
                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);

                if (table.Rows.Count == 0)
                {
                    // If no data is found, display a message
                    table.Rows.Add(table.NewRow());
                    GridView3.DataSource = table;
                    GridView3.DataBind();
                    int totalColumns = GridView3.Rows[0].Cells.Count;
                    GridView3.Rows[0].Cells.Clear();
                    GridView3.Rows[0].Cells.Add(new TableCell());
                    GridView3.Rows[0].Cells[0].ColumnSpan = totalColumns;
                    GridView3.Rows[0].Cells[0].Text = "No rides are scheduled.";
                }
                else
                {
                    GridView3.DataSource = table;
                    GridView3.DataBind();
                }
            }
            DestinationStation.Text = "";
            ArrivalStation.Text = "";
        }

        protected void ViewButton_Click(object sender, EventArgs e)
        {
            string destination = Destination_Station.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
            // Define your SQL query to select the top 5 schedules with the given destination
            string query = "SELECT TOP 5 Locations.Arrival, Locations.Destination, TravelDate, TravelTime, Available_Seats  FROM Schedule JOIN Locations ON Locations.LocationID = Schedule.LocationID WHERE Destination = @Destination AND TravelDate >= @date ORDER BY TravelDate, TravelTime";

            // Create a SqlConnection and a SqlCommand to execute the query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Destination", destination);
                command.Parameters.AddWithValue("@date", DateTime.Now.Date);
                // Open the connection and execute the query
                connection.Open();

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);

                if (table.Rows.Count == 0)
                {
                    // If no data is found, display a message
                    table.Rows.Add(table.NewRow());
                    GridView2.DataSource = table;
                    GridView2.DataBind();
                    int totalColumns = GridView2.Rows[0].Cells.Count;
                    GridView2.Rows[0].Cells.Clear();
                    GridView2.Rows[0].Cells.Add(new TableCell());
                    GridView2.Rows[0].Cells[0].ColumnSpan = totalColumns;
                    GridView2.Rows[0].Cells[0].Text = "No rides are scheduled.";
                }
                else
                {
                    GridView2.DataSource = table;
                    GridView2.DataBind();
                }
            }
            Destination_Station.Text = "";
        }

        protected void StartDateCalendar_SelectionChanged(object sender, EventArgs e)
        {
            StartDateCalendar.VisibleDate = StartDateCalendar.SelectedDate;
            Label4.Text = "Selected Start Date: " + StartDateCalendar.SelectedDate.ToShortDateString();
        }

        protected void EndDateCalendar_SelectionChanged(object sender, EventArgs e)
        {
            EndDateCalendar.VisibleDate = EndDateCalendar.SelectedDate;
            Label5.Text = "Selected End Date: " + EndDateCalendar.SelectedDate.ToShortDateString();
        }

        protected void ViewScheduleButton_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT TOP 5 Locations.Arrival, Locations.Destination , TravelDate , TravelTime , Available_Seats FROM Schedule JOIN Locations ON Schedule.LocationID = Locations.LocationID WHERE TravelDate BETWEEN @StartDate AND @EndDate AND TravelDate >= @date ORDER BY TravelDate DESC";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@StartDate", DateTime.Parse(StartDateCalendar.SelectedDate.ToString()));
                command.Parameters.AddWithValue("@EndDate", DateTime.Parse(EndDateCalendar.SelectedDate.ToString()));
                command.Parameters.AddWithValue("@date", DateTime.Now.Date);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable table = new DataTable();
                adapter.Fill(table);

                if (table.Rows.Count == 0)
                {
                    // If no data is found, display a message
                    table.Rows.Add(table.NewRow());
                    GridView1.DataSource = table;
                    GridView1.DataBind();
                    int totalColumns = GridView1.Rows[0].Cells.Count;
                    GridView1.Rows[0].Cells.Clear();
                    GridView1.Rows[0].Cells.Add(new TableCell());
                    GridView1.Rows[0].Cells[0].ColumnSpan = totalColumns;
                    GridView1.Rows[0].Cells[0].Text = "No rides are scheduled.";
                }
                else
                {
                    GridView1.DataSource = table;
                    GridView1.DataBind();
                }
            }
        }
    }
}