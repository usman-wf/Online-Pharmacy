using db_Project.DAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace db_Project
{
    public partial class payment : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["payment"] != null)
                {

                    int userId = Users.Instance.ID;
                decimal totalPayment = Convert.ToDecimal(Session["payment"]);
                // Retrieve total payment from session and display it
                int premium = checkPremiumpackage(userId);
                    int yearlypackage = checkYearlyPackage(userId);
                    if (premium == 1)
                    {
                        if (totalPayment >= 5000)
                        {
                            decimal discountAmount = totalPayment * 0.1m;

                            // Apply the discount to the total amount
                            totalPayment = totalPayment - discountAmount;

                        }
                    }
                    if (yearlypackage == 1)
                    {
                        if (totalPayment >= 5000)
                        {
                            decimal discountAmount = totalPayment * 0.05m;

                            // Apply the discount to the total amount
                            totalPayment = totalPayment - discountAmount;
                        }
                    }
                 
                    lblTotalPayment.Text = $"Total Payment: ${totalPayment:F2}";
                }
            }
        }

        protected void btnPayNow_Click(object sender, EventArgs e)
        {
            // Retrieve user ID from session or wherever it's stored
            ///  int userId = GetUserLoggedInId(); // Implement your own method to get user ID
           
            int userId = Users.Instance.ID;

            decimal totalPayment = Convert.ToDecimal(Session["payment"]);
            decimal userAccountBalance = GetUserAccountBalance(userId);
            int premium = checkPremiumpackage(userId);
            int yearlypackage = checkYearlyPackage(userId);
            string location = ddlCities.SelectedValue;
           


            string query2 = "UPDATE userInfo SET totalOrders = totalOrders + 1 WHERE id = @UserId";



             
          
            DateTime orderDate = DateTime.Now.Date;
            DateTime receivingDate = DateTime.Now.Date.AddDays(1);


            string query3 = "INSERT INTO Orders(userId, location, orderDate,  receivingDate)  VALUES(@userId, @location, @orderDate,@receivingDate)";
 
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query2, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@userId", Users.Instance.ID);

                    connection.Open();                        
                        object result = command.ExecuteScalar();
                     
                }
                using (SqlCommand command = new SqlCommand(query3, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@userId", Users.Instance.ID);
                    command.Parameters.AddWithValue("@location",  location);
                    command.Parameters.AddWithValue("@orderDate", orderDate);
                    command.Parameters.AddWithValue("@receivingDate", receivingDate);
                    
                    object result = command.ExecuteNonQuery();
                    connection.Close();
                }
            }

            if (premium==1)
            {
                if(totalPayment>=5000)
                {
                    decimal discountAmount = totalPayment * 0.1m;

                    // Apply the discount to the total amount
                    totalPayment = totalPayment - discountAmount;

                }
            }
            if (yearlypackage == 1)
            {
                if (totalPayment >= 5000)
                {
                    decimal discountAmount = totalPayment * 0.05m;

                    // Apply the discount to the total amount
                    totalPayment = totalPayment - discountAmount;
                }
            }
            // Deduct payment from user's account balance
            if (userId > 0)
            {
                // Implement this method to get the user's account balance

                // Check if user's account balance is sufficient to cover the total payment
                if (userAccountBalance >= totalPayment)
                {
                    // Calculate the new account balance after deducting the total payment
                    decimal newAccountBalance = userAccountBalance - totalPayment;


                    if(GetUserAccountOrders(userId) > 5)
                    {
                        newAccountBalance = newAccountBalance + 0.08m * totalPayment;
                    }


                    // Update user's account balance in the database
                    UpdateUserAccountBalance(userId, newAccountBalance); // Implement this method to update user's account balance
                    List<Tuple<int, int>> cartItems = Session["QtyDeduction"] as List<Tuple<int, int>>;
                    foreach (var cartItem in cartItems)
                    {
                        int medicineId = cartItem.Item1; // Medicine ID
                        int quantity = cartItem.Item2; // Quantity
                        int totalstk = StockQuantity(medicineId);
                        quantity = totalstk - quantity;
                        UpdateQuantity(medicineId, quantity);
                    }
                    Session["CartItems"] = null;
                    // Redirect to the home page or any other appropriate page
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Dont have enough balance .');</script>");
                    return;
                    // Insufficient balance, display an error message or take appropriate action
                    // For example:
                    // lblErrorMessage.Text = "Insufficient balance to complete the transaction.";
                }
            }
        }


        protected void UpdateQuantity(int medicineId,int quantity)
        {
            // Create a connection to the database
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            //// Loop through each cart item in the session
            //foreach (var cartItem in cartItems)
            //{
            //    int medicineId = cartItem.Item1; // Medicine ID
            //    int quantity = cartItem.Item2; // Quantity

                // SQL query to update the stock quantity of the medicine
                string query = "UPDATE Inventory SET stockQuantity =@Quantity WHERE medicineId = @medicineId";

                // Create and open a connection to the database
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Create a command to execute the query
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Add parameters to the command
                        command.Parameters.AddWithValue("@Quantity", quantity);
                        command.Parameters.AddWithValue("@MedicineId", medicineId);

                        try
                        {
                            // Open the connection
                            connection.Open();

                            // Execute the query
                            int rowsAffected = command.ExecuteNonQuery();

                            // Check if any rows were affected (i.e., if the update was successful)
                            if (rowsAffected > 0)
                            {
                                // Update successful
                                // You can add logging or other handling here if needed
                            }
                            else
                            {
                                Response.Write("<script>alert('No change .');</script>");
                                return;
                                // Update failed
                                // You can add logging or other handling here if needed
                            }

                        }
                        catch (Exception ex)
                        {
                            // Handle any exceptions here
                            // You might want to log the error or display a message to the user
                        }
                    }
                }
            //}
        }
        protected int StockQuantity(int medicineId)
        {
            // Create a connection to the database
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            //// Loop through each cart item in the session
            //foreach (var cartItem in cartItems)
            //{
            //    int medicineId = cartItem.Item1; // Medicine ID
            //    int quantity = cartItem.Item2; // Quantity


            int stockQuantity = 0;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // SQL query to retrieve the stock quantity based on medicineId
                string query = "SELECT StockQuantity FROM Inventory WHERE medicineId = @medicineId";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Parameterized query to avoid SQL injection
                    cmd.Parameters.AddWithValue("@medicineId", medicineId);

                    var result = cmd.ExecuteScalar(); // ExecuteScalar returns the first column of the first row

                    if (result != null && int.TryParse(result.ToString(), out stockQuantity))
                    {
                        return stockQuantity;
                    }
                    else
                    {
                        throw new Exception("Medicine not found in Inventory");
                    }
                }
            }

            return stockQuantity;
        }
    




        public decimal GetUserAccountBalance(int userAccountId)
        {
            // Connection string to your database
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // SQL query to fetch user's account balance
            string query = "SELECT acc_balance FROM userInfo WHERE id = @UserId";

            decimal accountBalance = 0;

            // Create and open a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a command to execute the query
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@UserId", userAccountId);

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the query and get the result
                        object result = command.ExecuteScalar();

                        // Check if the result is not null and convert it to an integer
                        if (result != null && result != DBNull.Value)
                        {
                            accountBalance = Convert.ToInt32(result);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here
                        // You might want to log the error or display a message to the user
                    }
                }
            }

            return accountBalance;
        }



        public int GetUserAccountOrders(int userAccountId)
        {
            // Connection string to your database
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // SQL query to fetch user's account balance
            string query = "SELECT totalOrders FROM userInfo WHERE id = @UserId";

             int totalOrder = 0;

            // Create and open a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a command to execute the query
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@UserId", userAccountId);

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the query and get the result
                        object result = command.ExecuteScalar();

                        // Check if the result is not null and convert it to an integer
                        if (result != null && result != DBNull.Value)
                        {
                            totalOrder = Convert.ToInt32(result);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here
                        // You might want to log the error or display a message to the user
                    }
                }
            }

            return totalOrder;
        }





        public bool UpdateUserAccountBalance(int userId, decimal totalPayment)
        {
            // Connection string to your database
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // SQL query to update user's account balance
            string query = "UPDATE userInfo SET acc_balance = @TotalPayment WHERE id = @UserId";

            // Create and open a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a command to execute the query
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@TotalPayment", totalPayment);
                    command.Parameters.AddWithValue("@UserId", userId);

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the query
                        int rowsAffected = command.ExecuteNonQuery();

                        // Check if any rows were affected (i.e., if the update was successful)
                        if (rowsAffected > 0)
                        {
                            // Update successful
                            return true;
                        }
                        else
                        {
                            // Update failed
                            return false;
                        }

                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here
                        // You might want to log the error or display a message to the user
                        return false;
                    }
                }
            }
        }
        protected int checkPremiumpackage(int  userId)
        {
            // Connection string to your database
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // SQL query to fetch user's account balance
            string query = "SELECT Premium FROM userInfo WHERE id = @UserId";

            int prem = 0;

            // Create and open a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a command to execute the query
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@UserId", userId);

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the query and get the result
                        object result = command.ExecuteScalar();

                        // Check if the result is not null and convert it to an integer
                        if (result != null && result != DBNull.Value)
                        {
                            prem = Convert.ToInt32(result);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here
                        // You might want to log the error or display a message to the user
                    }
                }
            }

            return prem;
        }
        protected int checkYearlyPackage(int userId)
        {
            // Connection string to your database
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // SQL query to fetch user's account balance
            string query = "SELECT yearlypackage FROM userInfo WHERE id = @UserId";

            int prem = 0;

            // Create and open a connection to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a command to execute the query
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@UserId", userId);

                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the query and get the result
                        object result = command.ExecuteScalar();

                        // Check if the result is not null and convert it to an integer
                        if (result != null && result != DBNull.Value)
                        {
                            prem = Convert.ToInt32(result);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle any exceptions here
                        // You might want to log the error or display a message to the user
                    }
                }
            }

            return prem;
        }


    }
}