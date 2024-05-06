<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="db_Project.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Results</title>
   <%-- <style>
       
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
     
        <div>
    <h2>Medicine Details</h2>
    <div>
        <p><strong>Name: </strong><asp:Label ID="lblName" runat="server"></asp:Label></p>
        <p><strong>Description: </strong><asp:Label ID="lblDescription" runat="server"></asp:Label></p>
        <p><strong>Price: </strong><asp:Label ID="lblPrice" runat="server"></asp:Label></p>
        <p><strong>Manufacture Date: </strong><asp:Label ID="lblManufactureDate" runat="server"></asp:Label></p>
        <p><strong>Expiry Date: </strong><asp:Label ID="lblExpiryDate" runat="server"></asp:Label></p>
        <p><strong>Stock Quantity: </strong><asp:Label ID="lblStockQuantity" runat="server"></asp:Label></p>
        <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" OnClick="btnAddToCart_Click" />
    

    </div>
</div>

    </form>
</body>
</html>