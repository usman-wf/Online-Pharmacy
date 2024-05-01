using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace db_Project
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the query parameter from the URL
            string query = Request.QueryString["query"];

            if (!string.IsNullOrEmpty(query))
            {
                // Connect to the database
                string connectionString = "con"; // Change to your DB connection string
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string sql = "SELECT id , name, description, price FROM Items WHERE Name LIKE @query";
                    using (SqlCommand command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue("@query", "%" + query + "%");

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                string resultHtml = "";
                                while (reader.Read())
                                {
                                    resultHtml += $"<p><strong>Item:</strong> {reader["name"]}</p>";
                                    resultHtml += $"<p><strong>Description:</strong> {reader["description"]}</p>";
                                    resultHtml += $"<p><strong>Price:</strong> ${reader["price"]}</p><br/>";
                                }

                                // Inject the results into the HTML
                              //  resultDiv.InnerHtml = resultHtml;
                            }
                            else
                            {
                               // resultDiv.InnerHtml = $"No results found for \"{query}\"";
                            }
                        }
                    }
                }
            }
            else
            {
                ////resultDiv.InnerHtml = "No search query provided.";
            }
        }
    }
}
