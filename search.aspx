<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="db_Project.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Results</title>
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            text-align: center; /* Center the content */
                    background-image: url('images/search.jpg');
  background-size: cover; /* ensure the image covers the whole background */
background-position: center; /* center the image */
background-repeat: no-repeat;  /* Avoids repeating the image */
height:100vh;
        }

        .container {
            max-width: 800px; /* Set max width for the container */
            margin: 20px auto; /* Auto margin to center the container horizontally */
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Adding box-shadow for a light shadow effect */
            text-align: left; /* Align text to the left within the container */
        }

        h2 {
            margin-top: 0;
            color: #333;
        }

        p {
            margin: 0 0 10px;
        }

        /* Button styles */
        .add-to-cart-button {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .add-to-cart-button:hover {
            background-color: #45a049;
        }

        /* Label styles */
        .label {
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container"> <!-- Wrap content within the container class to center it and add styling -->
            <h2>Medicine Details</h2>
            <div>
                <p><strong>Name: </strong><asp:Label ID="lblName" runat="server"></asp:Label></p>
                <p><strong>Description: </strong><asp:Label ID="lblDescription" runat="server"></asp:Label></p>
                <p><strong>Price: </strong><asp:Label ID="lblPrice" runat="server"></asp:Label></p>
                <p><strong>Manufacture Date: </strong><asp:Label ID="lblManufactureDate" runat="server"></asp:Label></p>
                <p><strong>Expiry Date: </strong><asp:Label ID="lblExpiryDate" runat="server"></asp:Label></p>
                <p><strong>Stock Quantity: </strong><asp:Label ID="lblStockQuantity" runat="server"></asp:Label></p>
                <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CssClass="add-to-cart-button" OnClick="btnAddToCart_Click" />
            </div>

           <div class="container">
    <h2>Reviews</h2>
    <asp:TextBox ID="txtReviews" runat="server" TextMode="MultiLine" Rows="5" ReadOnly="true"></asp:TextBox>
</div>
        </div>
    </form>
</body>
</html>
