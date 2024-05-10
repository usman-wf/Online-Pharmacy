using Railway_Management_System.DAL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Reflection.Emit;
using System.Globalization;

namespace Railway_Management_System
{
    public partial class Booking : BasePage
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

        protected void DateCalendar_SelectionChanged(object sender, EventArgs e)
        {
            Date.VisibleDate = Date.SelectedDate;
            Label4.Text = "Selected Date: " + Date.SelectedDate.ToShortDateString();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            scheduleGridView.Visible = true;
            scheduleGridView.SelectedIndex = -1;
            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT TOP 20 RideID, Locations.Arrival, Locations.Destination, TravelDate, TravelTime, Available_Seats  FROM Schedule JOIN Locations ON Locations.LocationID = Schedule.LocationID WHERE TravelDate >= @Date AND Destination = @Destination AND Arrival = @Arrival AND TravelDate >= @d ORDER BY TravelDate, TravelTime";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Date", DateTime.Parse(Date.SelectedDate.ToString()));
                    command.Parameters.AddWithValue("@Arrival", from.Text);
                    command.Parameters.AddWithValue("@Destination", to.Text);
                    command.Parameters.AddWithValue("@d", DateTime.Now.Date);
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    if (table.Rows.Count == 0)
                    {
                        // If no data is found, display a message
                        table.Rows.Add(table.NewRow());
                        scheduleGridView.DataSource = table;
                        scheduleGridView.DataBind();
                        int totalColumns = scheduleGridView.Rows[0].Cells.Count;
                        scheduleGridView.Rows[0].Cells.Clear();
                        scheduleGridView.Rows[0].Cells.Add(new TableCell());
                        scheduleGridView.Rows[0].Cells[0].ColumnSpan = totalColumns;
                        scheduleGridView.Rows[0].Cells[0].Text = "No rides are scheduled.";
                    }
                    else
                    {
                        scheduleGridView.DataSource = table;
                        scheduleGridView.DataBind();
                    }
                    connection.Close();
                }
            }
        }

        protected void from_TextChanged(object sender, EventArgs e)
        {
            scheduleGridView.Visible = false;
            passengersSection.Visible = false;
            purchasebtn.Visible = false;
        }

        protected void to_TextChanged(object sender , EventArgs e)
        {
            scheduleGridView.Visible = false;
            passengersSection.Visible = false;
            purchasebtn.Visible = false;
        }

        protected void scheduleGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            passengersSection.Visible = true;
            Label3.Text = "Number of Passengers";
            lblClass.Text = "Class";
            Passengers.Text = "";
            type.SelectedIndex = 0;
            Rewards.SelectedIndex = 0;   
            totalBill.Text = "Total Bill ";
            purchasebtn.Visible = false;
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            purchasebtn.Visible = false;
            // Check if the user is logged in
            if (CurrentUser.ID == -1)
            {
                error.Text = "Please Log in to Book Tickets";
                return;
            }

            int userId = CurrentUser.ID;

            // Get the selected ride details from the GridView
            GridViewRow row = scheduleGridView.SelectedRow;

            int rideID = int.Parse(row.Cells[1].Text);
            string arrival = row.Cells[2].Text;
            string destination = row.Cells[3].Text;
            DateTime travelDate = DateTime.ParseExact(row.Cells[4].Text, "MM/dd/yyyy", CultureInfo.InvariantCulture);
            string travelTime = row.Cells[5].Text;
            int availableSeats = int.Parse(row.Cells[6].Text);

            int passengers = int.Parse(Passengers.Text);
            string ticketClass = type.SelectedValue;
            string points = Rewards.SelectedValue;
            int p = 0;
          
            if(ticketClass == "Choose...")
            {
                error.Text = "Select Ticket Class";
                return;
            }

            // Check if there are enough available seats for the selected ride
            if (availableSeats < passengers)
            {
                error.Text = "Not enough available seats for the selected ride";
                return;
            }

            if (points != "Choose...")
            {
                string connString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connString))
                {
                    string updateQuery = "SELECT Points FROM Traveller WHERE ID = @userID";
                    using (SqlCommand command = new SqlCommand(updateQuery, connection))
                    {
                        command.Parameters.AddWithValue("@userID", userId);

                        connection.Open();
                        p = (int)command.ExecuteScalar();
                    }
                }

                if (points == "Discount")
                {
                    if (p < 2000)
                    {
                        error.Text = "Not enough Reward Points";
                        return;
                    }
                    else
                    {
                        p = p - 2000;
                    }
                }

                if (points == "Food")
                {
                    if (p < 1000)
                    {
                        error.Text = "Not enough Reward Points";
                        return;
                    }
                    else
                    {
                        p = p - 1000;
                    }
                }

                using (SqlConnection connection = new SqlConnection(connString))
                {
                    string updateQuery = "UPDATE Traveller SET Points = @P FROM Traveller WHERE ID = @userID";
                    using (SqlCommand command = new SqlCommand(updateQuery, connection))
                    {
                        command.Parameters.AddWithValue("@userID", userId);
                        command.Parameters.AddWithValue("@P", p);
                        connection.Open();
                        p = (int)command.ExecuteScalar();
                    }
                }

            }

            int bill = 0;
            int priceofTicket = 0;

            if(ticketClass == "Economy")
            {
                priceofTicket = 1000;
            }
            else
            {
                priceofTicket = 2500;
            }

            bill = priceofTicket * passengers;
            string payment = Convert.ToString(bill);
            totalBill.Text = totalBill.Text + ": " + payment;

            purchasebtn.Visible = true;
        }

        protected void purchasebtn_Click(object sender, EventArgs e)
        {
            int curr = 0;
            int distance = 0;
            double multiplier = 0;

            GridViewRow row = scheduleGridView.SelectedRow;

            int rideID = int.Parse(row.Cells[1].Text);
            string arrival = row.Cells[2].Text;
            string destination = row.Cells[3].Text;
            DateTime travelDate = DateTime.ParseExact(row.Cells[4].Text, "MM/dd/yyyy", CultureInfo.InvariantCulture);
            string travelTime = row.Cells[5].Text;
            int availableSeats = int.Parse(row.Cells[6].Text);

            int passengers = int.Parse(Passengers.Text);
            string ticketClass = type.SelectedValue;
            string points = Rewards.SelectedValue;
            int p = 0;

            if (ticketClass == "Economy")
            {
                multiplier = 0.25;
            }
            else
            {
                multiplier = 0.75;
            }


            // Calculate the new available seats after booking
            int newAvailableSeats = availableSeats - passengers;

            // Update the available seats in the Schedule table
            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string updateQuery = "UPDATE Schedule SET Available_Seats = @NewAvailableSeats WHERE RideID = @rideID";
                using (SqlCommand command = new SqlCommand(updateQuery, connection))
                {
                    command.Parameters.AddWithValue("@NewAvailableSeats", newAvailableSeats);
                    command.Parameters.AddWithValue("@rideID", rideID);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string updateQuery = "SELECT Distance FROM Locations WHERE Arrival = @Arrival AND Destination = @Destination";
                using (SqlCommand command = new SqlCommand(updateQuery, connection))
                {
                    command.Parameters.AddWithValue("@Arrival", arrival);
                    command.Parameters.AddWithValue("@Destination", destination);

                    connection.Open();
                    distance = (int)command.ExecuteScalar();
                }
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string updateQuery = "SELECT Points FROM Traveller WHERE ID = @id";
                using (SqlCommand command = new SqlCommand(updateQuery, connection))
                {
                    command.Parameters.AddWithValue("@id", CurrentUser.ID);

                    connection.Open();
                    curr = (int)command.ExecuteScalar();
                }
            }

            curr = (int)(curr + (multiplier * distance));

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string updateQuery = "UPDATE Traveller SET Points = @p WHERE ID = @id";
                using (SqlCommand command = new SqlCommand(updateQuery, connection))
                {
                    command.Parameters.AddWithValue("@id", CurrentUser.ID);
                    command.Parameters.AddWithValue("@p", curr);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string insertQuery = "INSERT INTO Booking (RideID , TravellerID , Seats , Class) VALUES (@RideID , @UserId, @Passengers, @TicketClass)";
                using (SqlCommand command = new SqlCommand(insertQuery, connection))
                {
                    command.Parameters.AddWithValue("@RideID", rideID);
                    command.Parameters.AddWithValue("@UserId", CurrentUser.ID);
                    command.Parameters.AddWithValue("@Passengers", passengers);
                    command.Parameters.AddWithValue("@TicketClass", ticketClass);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }

            error.Text = "Ticket Booked Successfully";
            purchasebtn.Visible = false;
            totalBill.Text = "Total Bill ";
        }
    }
}