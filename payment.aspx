<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="db_Project.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <!-- Add your CSS stylesheets here -->
    <style>
        /* payment.css */

/* Container */
.payment-container {
    width: 50%;
    margin: auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f9f9f9;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}


     body{
      background-image: url('images/pay.jpg'); /* path to your image */
 background-size: 100%; /* ensure the image covers the whole background */
 background-position: center; /* center the image */
 background-repeat: no-repeat; /* don't repeat the image */
 height:100vh;
 }

/* Total Payment */
.total-payment {
    margin-bottom: 20px;
}

.total-payment label {
    font-size: 18px;
}

/* Pay Now Button */
.btn-primary {
    background-color: #007bff;
    border-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
}

.btn-primary:hover {
    background-color: #0056b3;
    border-color: #0056b3;
}


   .centered-container {
      text-align: center;
      margin-top: 20px; /* Add some space at the top */
      color:white;
  }

  /* Style for the drop-down */
  .styled-dropdown {
      padding: 5px; /* Add padding for better look and feel */
      border: 1px solid #ccc; /* Light border */
      background-color: white; /* Background color */
      font-size: 16px; /* Larger font for better readability */
      color: #333; /* Dark gray text */
      border-radius: 5px; /* Rounded corners */
  }

  /* Style for the label */
  .styled-label {
      font-size: 18px; /* Larger font for the label */
      color: #555; /* Dark gray color for the label text */
       color:white;
  }

    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="payment-container">
            <h2>Payment Details</h2>
            <div class="total-payment">
                <asp:Label ID="lblTotalPayment" runat="server" Text="Total Payment: $0.00"></asp:Label>
            </div>
            <asp:Button ID="btnPayNow" runat="server" Text="Pay Now" OnClick="btnPayNow_Click" CssClass="btn btn-primary" />
            
        </div>
               <div class="centered-container">
            <asp:Label ID="Label1" runat="server" Text="Select a Branch to pickup your medications:" CssClass="styled-label"> 
                      
    <asp:DropDownList ID="ddlCities" runat="server">
        <asp:ListItem Text="Karachi" Value="Karachi" />
        <asp:ListItem Text="Lahore" Value="Lahore" />
        <asp:ListItem Text="Islamabad" Value="Islamabad" />
        <asp:ListItem Text="Faisalabad" Value="Faisalabad" />                
        <asp:ListItem Text="Multan" Value="Multan" />
    </asp:DropDownList>
           
                </asp:Label>
</div>
    </form>
</body>
</html>
