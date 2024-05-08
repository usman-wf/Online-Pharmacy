using Railway_Management_System.DAL;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Railway_Management_System
{
    public partial class Reviews : BasePage
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
           if (!IsPostBack)
           {
               LoadReviews();
           }
        }

        protected void LoadReviews()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Name, Text , SubmittedDate FROM Reviews", con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        string name = reader["Name"].ToString();
                        string review = reader["Text"].ToString();
                        string date = reader["SubmittedDate"].ToString();

                        LiteralControl reviewBox = new LiteralControl();
                        reviewBox.Text = $@"
                            <div class='review-box'>
                                <div class='review-header'>
                                    <div class='review-name'>{name}</div>
                                    <div class='review-date'>{date}</div>
                                </div>
                                <div class='review-text'>{review}</div>
                            </div>
                        ";

                        // Add the review box to the reviews div
                        reviews.Controls.Add(reviewBox);
                    }
                    reader.Close();
                }
            }
        }

        protected void SubmitReview(object sender, EventArgs e)
        {
            if(Users.IsLoggedIn())
            {
                string reviewText = reviewInput.Text;
                string date = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                string connectionString = ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;
                string query = "INSERT INTO Reviews (TravellerID, Name , SubmittedDate, Text) VALUES (@id, @Name , @Date, @Text)";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@id", CurrentUser.ID);
                    command.Parameters.AddWithValue("@Name", CurrentUser.FullName);
                    command.Parameters.AddWithValue("@Date", date);
                    command.Parameters.AddWithValue("@Text", reviewText);

                    connection.Open();
                    command.ExecuteNonQuery();
                    lblMessage.Text = "Review Successfully Added";
                }
            }
            else
            {
                lblMessage.Text = "Login to Add Review";
            }
            LoadReviews(); // Refresh the reviews after submitting a new one
            reviewInput.Text = "";
        }
    }
}
