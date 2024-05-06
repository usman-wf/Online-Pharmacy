<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="db_Project.adminLogin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Panel</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   
            <div class="container">
                <h2 class="text-center mb-4">Admin Panel</h2>
                <table>
              
                    <tr>x
                        <td>Product Name</td>
                        <td>
                            <asp:TextBox ID="t1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Product Description</td>
                        <td>
                            <asp:TextBox ID="t2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Product Price</td>
                        <td>
                            <asp:TextBox ID="t3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Manufacture Date</td>
                        <td>
                            <asp:TextBox ID="t4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                   <tr>
                       <td>expiry Date</td>
                       <td>
                           <asp:TextBox ID="t5" runat="server"></asp:TextBox>
                       </td>
                   </tr>
                    <tr>
                       <td>Stock Quantity</td>
                       <td>
                           <asp:TextBox ID="t6" runat="server"></asp:TextBox>
                       </td>
                   </tr>

                   
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="b1" runat="server" Text="Upload" OnClick="b1_Click" CssClass="btn btn-primary"/>
                        </td>
                    </tr>
                </table>
            </div>
      </form>
</body>
</html>

<%--        <div class="form-group">
            <label for="itemName">Item Name:</label>
            <input type="text" class="form-control" id="itemName" placeholder="Enter item name" runat="server" />
        </div>
        <div class="form-group">
            <label for="quantity">Quantity:</label>
            <input type="number" class="form-control" id="quantity" placeholder="Enter quantity" runat="server" />
        </div>
        <div class="stock-action">
            <asp:Button ID="btnInc" runat="server" Text="Increase Stock" CssClass="btn btn-success" OnClientClick="return increaseStock();" />
            <asp:Button ID="btnDec" runat="server" Text="Decrease Stock" CssClass="btn btn-danger" OnClientClick="return decreaseStock();" />
        </div>
        <div class="form-group">
            <label for="itemPrice">Price:</label>
            <input type="text" class="form-control" id="itemPrice" placeholder="Enter item price" runat="server" />
        </div>
        <div class="form-group">
            <label for="itemDescription">Description:</label>
            <textarea class="form-control" id="itemDescription" placeholder="Enter item description" runat="server"></textarea>
        </div>
        <div class="form-group">
            <label for="manufactureDate">Manufacture Date:</label>
            <input type="date" class="form-control" id="manufactureDate" runat="server" />
        </div>
        <div class="form-group">
            <label for="expiryDate">Expiry Date:</label>
            <input type="date" class="form-control" id="expiryDate" runat="server" />
        </div>
        <div class="form-group">
            <label for="amountInStock">Amount in Stock:</label>
            <input type="number" class="form-control" id="amountInStock" placeholder="Enter amount in stock" runat="server" />
        </div>
        <asp:Button ID="btnAddNew" runat="server" Text="Add New Item" CssClass="btn btn-primary" OnClientClick="return addNewItem();" />
    </div>--%>

   <%-- <form id="f1" runat="server">
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
     </form>
   --%>     <%-- <script>
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
         </script>--%>

     