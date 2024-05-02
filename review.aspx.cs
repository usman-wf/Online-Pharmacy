using db_Project.DAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Runtime.Remoting.Messaging;
using System.Security.Policy;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace db_Project
{
    public partial class review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //     protected void btnReviewClick(object sender, EventArgs e)
        //     {
        //         string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        //         using (SqlConnection conn = new SqlConnection(connectionString))
        //         {

        //                 conn.Open();
        //             int medicineId=0;
        //                    string query = Request.QueryString["query"];
        //                    string sql = "SELECT medicineID  FROM Inventory WHERE Name LIKE @query";
        //             SqlCommand cmd = new SqlCommand(sql, conn);
        //             using (SqlDataReader reader = cmd.ExecuteReader())
        //                {
        //                 cmd.Parameters.AddWithValue("@query", "%" + query + "%");
        //                 if (reader.Read())
        //                 {
        //                   medicineId = Convert.ToInt32(reader["medicineID"]);
        //                 }
        //                 else
        //                 {
        //                     // Handle case where no result is found
        //                     // Show a message to the user or return early
        //                     return; // No medicine found
        //                 }
        //             }





        //             int customerID = Users.Instance.ID;



        //                     // SQL query to insert review into review table
        //                     string insertQuery = "INSERT INTO review (medicineID, customerID, reviewDetail) VALUES (@medicineID, @customerID, @reviewDetail)";
        //                     SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
        //                   // insertCmd.Parameters.AddWithValue("@reviewId", reviewId);
        //             insertCmd.Parameters.AddWithValue("@medicineID", medicineId);
        //             insertCmd.Parameters.AddWithValue("@customerID", customerID);
        //insertCmd.Parameters.AddWithValue("@reviewDetail", reviewDetail.Text);

        //                 insertCmd.ExecuteNonQuery();







        //                 if (conn.State == ConnectionState.Open)
        //                 {
        //                     conn.Close();  // Ensure the connection is closed
        //                 }

        //         }
        //     }




        protected void btnReviewClick(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();

                    // Assuming there's a textbox to get the medicine name from the user
                    string query = medicineName.Text; // or however you're getting the query

                    if (string.IsNullOrEmpty(query))
                    {
                        // Show a message or provide feedback that input is required
                        //errorLabel.Text = "Please enter a medicine name to search.";
                        return;
                    }

                    string sql = "SELECT medicineID FROM Inventory WHERE Name LIKE @query";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@query", "%" + query + "%");

                    int medicineId = 0;
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            medicineId = Convert.ToInt32(reader["medicineID"]);
                        }
                        else
                        {
                            // If no result, inform the user or handle accordingly
                           // errorLabel.Text = "No medicine found with that name.";
                            return;
                        }
                    }

                    int customerID = Users.Instance.ID;
                    string insertQuery = "INSERT INTO review (medicineID, customerID, reviewDetail) VALUES (@medicineID, @customerID, @reviewDetail)";
                    SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
                    insertCmd.Parameters.AddWithValue("@medicineID", medicineId);
                    insertCmd.Parameters.AddWithValue("@customerID", customerID);
                    insertCmd.Parameters.AddWithValue("@reviewDetail", reviewDetail.Text);

                    insertCmd.ExecuteNonQuery();

                }
                catch (Exception ex)
                {
                    // Handle exceptions or log errors
                    System.Diagnostics.Debug.WriteLine($"Error: {ex.Message}");
                }
                finally
                {
                    if (conn.State == ConnectionState.Open)
                    {
                        conn.Close(); // Ensure the connection is closed
                    }
                }
            }
        }



    }

}

