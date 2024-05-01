﻿using db_Project.DAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
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


        protected void btnReviewClick(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open(); 
                   
                    
                    
                        int id = Users.CurrentUser.ID;
                        int reviewId = 6; // Replace with actual review ID
                        int medicineID = 1; // Replace with actual medicine ID
                        
                        //string reviewDetail = "Great medicine! Highly recommended."; // Replace with actual review

                        // SQL query to insert review into review table
                        string insertQuery = "INSERT INTO review (reviewId,medicineID, customerID, reviewDetail) VALUES (reviewId , MedicineID, id, @reviewDetail)";
                        SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
                       insertCmd.Parameters.AddWithValue("@reviewDetail", reviewDetail.Text);
                        insertCmd.ExecuteNonQuery();


                    
                 
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('An error occurred. Please try again later.');</script>");
                    Console.WriteLine("Error: " + ex.Message);  // Log error message
                }
                finally
                {
                    if (conn.State == ConnectionState.Open)
                    {
                        conn.Close();  // Ensure the connection is closed
                    }
                }
            }
        }
    }

}

    //    string query = Request.QueryString["query"];

    //        if (!string.IsNullOrEmpty(query))
    //        {
    //            // Connect to the database
    //            string connectionString = "con"; // Change to your DB connection string
    //            using (SqlConnection connection = new SqlConnection(connectionString))
    //            {
    //                connection.Open();
    //                string sql = "SELECT id , name, description, price FROM Items WHERE Name LIKE @query";
    //                using (SqlCommand command = new SqlCommand(sql, connection))
    //                {
    //                    command.Parameters.AddWithValue("@query", "%" + query + "%");

    //                    using (SqlDataReader reader = command.ExecuteReader())
    //                    {
    //                        if (reader.HasRows)
    //                        {
    //                            string resultHtml = "";
    //                            while (reader.Read())
    //                            {
    //                                resultHtml += $"<p><strong>Item:</strong> {reader["name"]}</p>";
    //                                resultHtml += $"<p><strong>Description:</strong> {reader["description"]}</p>";
    //                                resultHtml += $"<p><strong>Price:</strong> ${reader["price"]}</p><br/>";
    //                            }

                              
    //                        }
    //                        else
    //                        {
                              
    //                        }
    //                    }
    //                }
    //            }
    //        }
    //        else
    //        {
    //            ////resultDiv.InnerHtml = "No search query provided.";
    //        }
    //    }
    //}
////}