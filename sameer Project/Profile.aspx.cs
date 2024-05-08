using Railway_Management_System.DAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Railway_Management_System
{
    public partial class Profile : BasePage
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

            string fullName = ""; // Get from database
            string phoneNumber = ""; // Get from database
            string cnic = ""; // Get from database
            string email = ""; // Get from database
            string points = ""; // Get from database
            string img = "";

            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT FName , LName , PhoneNo , Email , CNIC , Points , Image FROM Traveller WHERE ID = @UserId"; // Assuming you have a Users table with a PhotoPath column
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@UserId", CurrentUser.ID); // Replace with the actual user id
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    string fn = reader["FName"].ToString();
                    string ln = reader["LName"].ToString();
                    fullName = fn + " " + ln;
                    phoneNumber = reader["PhoneNo"].ToString();
                    cnic = reader["CNIC"].ToString();
                    email = reader["Email"].ToString();
                    points = reader["Points"].ToString();
                    img = reader["Image"].ToString();
                }
                connection.Close();
            }


            lblFullName.Text = fullName;
            lblPhoneNumber.Text = phoneNumber;
            lblCnic.Text = cnic;
            lblEmail.Text = email;
            lblPoints.Text = points;

            // Set the profile photo
            if(img == "")
            {
                profilePhoto.ImageUrl = "/Images/dpp.jpg"; // Default photo path
            }
            else
            {
                profilePhoto.ImageUrl = img;
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Schedule.RideID, BookingID , Locations.Arrival, Locations.Destination, TravelDate, TravelTime, Seats , Class , Status FROM Schedule JOIN Booking ON Schedule.RideID = Booking.RideID JOIN Locations ON Schedule.LocationID = Locations.LocationID WHERE TravellerID = @id  AND TravelDate >= @date ORDER BY TravelDate, TravelTime DESC";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@id" , CurrentUser.ID);
                    command.Parameters.AddWithValue("@date", DateTime.Now.Date);
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    if (table.Rows.Count == 0)
                    {
                        // If no data is found, display a message
                        table.Rows.Add(table.NewRow());
                        GridViewBookings.DataSource = table;
                        GridViewBookings.DataBind();
                        int totalColumns = GridViewBookings.Rows[0].Cells.Count;
                        GridViewBookings.Rows[0].Cells.Clear();
                        GridViewBookings.Rows[0].Cells.Add(new TableCell());
                        GridViewBookings.Rows[0].Cells[0].ColumnSpan = totalColumns;
                        GridViewBookings.Rows[0].Cells[0].Text = "No Rides Booked";
                    }
                    else
                    {
                        GridViewBookings.DataSource = table;
                        GridViewBookings.DataBind();
                    }
                    connection.Close();
                }
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Schedule.RideID, BookingID , Locations.Arrival, Locations.Destination, TravelDate, TravelTime, Seats , Class , Status , Rated FROM Schedule JOIN Booking ON Schedule.RideID = Booking.RideID JOIN Locations ON Schedule.LocationID = Locations.LocationID WHERE TravellerID = @id  AND TravelDate < @date ORDER BY TravelDate, TravelTime DESC";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@id", CurrentUser.ID);
                    command.Parameters.AddWithValue("@date", DateTime.Now.Date);
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    if (table.Rows.Count == 0)
                    {
                        // If no data is found, display a message
                        table.Rows.Add(table.NewRow());
                        PBooking.DataSource = table;
                        PBooking.DataBind();
                        int totalColumns = PBooking.Rows[0].Cells.Count;
                        PBooking.Rows[0].Cells.Clear();
                        PBooking.Rows[0].Cells.Add(new TableCell());
                        PBooking.Rows[0].Cells[0].ColumnSpan = totalColumns;
                        PBooking.Rows[0].Cells[0].Text = "No Rides Booked";
                    }
                    else
                    {
                        PBooking.DataSource = table;
                        PBooking.DataBind();
                        RateButton.Visible = true;
                    }
                    connection.Close();
                }
            }

        }


        protected void Rate_Booking(object sender, EventArgs e)
        {
            GridViewRow row = PBooking.SelectedRow;
            if(row != null)
            {
                int bookingID = int.Parse(row.Cells[1].Text);
                string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "UPDATE Booking SET Rated = @r WHERE BookingID = @id AND Rated = @rated";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@id", bookingID);
                    command.Parameters.AddWithValue("@r", 'T');
                    command.Parameters.AddWithValue("@rated", 'F');
                    int a = command.ExecuteNonQuery();
                    if(a == 0)
                    {
                        Label3.Text = "Already Rated";
                    }
                    else
                    {
                        Response.Redirect("Profile.aspx");
                    }
                    connection.Close();
                }

            }
        }
        protected void Cancel_Booking(object sender, EventArgs e)
        {
            GridViewRow row = GridViewBookings.SelectedRow;

            if (row != null)
            {
                int bookingID = int.Parse(row.Cells[1].Text);
                int rideID = int.Parse(row.Cells[2].Text);
                string arrival = row.Cells[3].Text;
                string destination = row.Cells[4].Text;
                DateTime travelDate = DateTime.ParseExact(row.Cells[5].Text, "MM/dd/yyyy", CultureInfo.InvariantCulture);
                string travelTime = row.Cells[6].Text;
                int Seats = int.Parse(row.Cells[7].Text);
                string type = row.Cells[8].Text;
                int curr = 0;

                string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "DELETE FROM Booking WHERE BookingID = @id"; 
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@id", bookingID); // Replace with the actual user id
                    command.ExecuteNonQuery();
                    connection.Close();
                }

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT Available_Seats FROM Schedule WHERE RideID = @id";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@id", rideID); // Replace with the actual user id
                    curr = (int)command.ExecuteScalar();
                    connection.Close();
                }

                curr = curr + Seats;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "UPDATE Schedule SET Available_Seats = @seats WHERE RideID = @id";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@id", rideID);
                    command.Parameters.AddWithValue("@seats", curr);
                    command.ExecuteNonQuery();
                    connection.Close();
                }

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT Points FROM Traveller WHERE ID = @id";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@id", CurrentUser.ID); 
                    curr = (int)command.ExecuteScalar();
                    connection.Close();
                }

                curr = curr / 2;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "UPDATE Traveller SET Points = @p FROM Traveller WHERE ID = @id";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@id", CurrentUser.ID);
                    command.Parameters.AddWithValue("@p", curr);
                    command.ExecuteNonQuery();
                    connection.Close();
                }

                Response.Redirect("Profile.aspx");
            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fileToUpload.HasFile)
            {
                // Save the file to the server
                string filename = System.IO.Path.GetFileName(fileToUpload.FileName);
                string filePath = "~/Images/" + filename;
                fileToUpload.SaveAs(Server.MapPath(filePath));

                // Insert the file path into the database
                // Assuming you have a method to insert data into the database
                // Here's a simplified example using ADO.NET
                string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "UPDATE Traveller SET Image = @FilePath WHERE ID = @UserId"; // Assuming you have a Users table with a PhotoPath column
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@FilePath", filePath);
                    command.Parameters.AddWithValue("@UserId", CurrentUser.ID); // Replace with the actual user id
                    command.ExecuteNonQuery();
                }

                // Update the profile photo path in the database
                // You can also update the profilePhoto.ImageUrl here to display the uploaded photo
                profilePhoto.ImageUrl = filePath;
            }
        }

        protected void Logout(object sender , EventArgs e)
        {
            Users.Logout();
            Response.Redirect("Main Page.aspx");
        }


    }
}