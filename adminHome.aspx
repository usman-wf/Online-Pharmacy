<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="db_Project.adminLogin" %>
 
<!DOCTYPE html>
<html>
  
<head runat="server">
    <title>Admin Panel</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding-top: 50px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn {
            width: 100%;
        }

        .stock-action {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Admin Panel</h2>
        <div class="form-group">
            <label for="itemName">Item Name:</label>
            <input type="text" class="form-control" id="itemName" placeholder="Enter item name" />
        </div>
        <div class="form-group">
            <label for="quantity">Quantity:</label>
            <input type="number" class="form-control" id="quantity" placeholder="Enter quantity" />
        </div>
        <div class="stock-action">
            <button type="button" class="btn btn-success" onclick="increaseStock()">Increase Stock</button>
            <button type="button" class="btn btn-danger" onclick="decreaseStock()">Decrease Stock</button>
        </div>
       

    

    <div class="form-group">
    <label for="itemName">Item Name:</label>
    <input type="text" class="form-control" id="itemName" placeholder="Enter item name" />
</div>

<div class="form-group">
    <label for="itemPrice">Price:</label>
    <input type="text" class="form-control" id="itemPrice" placeholder="Enter item price" />
</div>

<div class="form-group">
    <label for="itemDescription">Description:</label>
    <textarea class="form-control" id="itemDescription" placeholder="Enter item description"></textarea>
</div>

<div class="form-group">
    <label for="manufactureDate">Manufacture Date:</label>
    <input type="date" class="form-control" id="manufactureDate" />
</div>

<div class="form-group">
    <label for="expiryDate">Expiry Date:</label>
    <input type="date" class="form-control" id="expiryDate" />
</div>

<div class="form-group">
    <label for="amountInStock">Amount in Stock:</label>
    <input type="number" class="form-control" id="amountInStock" placeholder="Enter amount in stock" />
</div>
       <button type="button" class="btn btn-primary" onclick="addNewItem()">Add New Item</button>
  
         <script>
             function increaseStock() {
                 var itemName = document.getElementById("itemName").value;
                 var quantity = document.getElementById("quantity").value;
                 // Implement logic to increase stock
                 alert("Stock for " + itemName + " increased by " + quantity);
             }

             function decreaseStock() {
                 var itemName = document.getElementById("itemName").value;
                 var quantity = document.getElementById("quantity").value;
                 // Implement logic to decrease stock
                 alert("Stock for " + itemName + " decreased by " + quantity);
             }

             function addNewItem() {
                 var itemName = document.getElementById("itemName").value;
                 var quantity = document.getElementById("quantity").value;
                 // Implement logic to add new item to database
                 alert("New item added: " + itemName + " (Quantity: " + quantity + ")");
             }
         </script>


</body>

</html>
    
</body>
</html>