<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="db_Project.adminLogin" %>
 
<!DOCTYPE html>
<html>
<head>
    <title>Admin Medicine Stock Management</title>
    <link rel="stylesheet" type="text/css"   />
    <style>
  
    </style>
    
</head>
<body>
    <div class="container">
        <h1>Medicine Stock Management</h1>
        <div class="search-section">
            <label for="txtMedicineSearch">Search Medicine:</label>
         
         </div>
           <input type="text" id="txtMedicineSearch" runat="server" placeholder="Enter medicine name..." />
    <label for="">Amount Currently in Stock:</label>
   <br />
    <input type="number" id="Text1" runat="server" placeholder="Enter new amount" />
      
</body>
</html>