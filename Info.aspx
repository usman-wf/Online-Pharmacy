


<%@ Page Title="Info" Language="C#" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="db_Project.Info" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Info</title>
    <style>
        .container {
    width: 80%;
    margin: 0 auto;
    text-align: center;
}

        body{
             font-family: Arial, sans-serif;
 background-color: #f2f2f2;
 margin: 0;
 padding: 0;
 background-image: url('images/background.jpg');
  background-size: cover; /* ensure the image covers the whole background */
background-position: center; /* center the image */
background-repeat: no-repeat;  /* Avoids repeating the image */
          
        }

.form-group {
    margin-bottom: 20px;
    display: flex;
    justify-content: flex-start; /* Changed from 'space-between' to 'flex-start' */
    align-items: center;
}

label {
    flex: 1;
    text-align: right;
    padding-right: 10px;
    font-weight: bold;
}

input,
textarea,
select {
    flex: 3;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    transition: all 0.3s ease;
}

input[type="number"],
input[type="date"],
input[type="tel"],
input[type="radio"],
input[type="checkbox"] {
    width: auto; /* Keeps specific types of inputs from stretching */
}

input:hover,
textarea:hover,
select:hover {
    border-color: #007bff;
}

button.btn {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: all 0.3s ease;
}

button.btn:hover {
    background-color: #005bb5;
}

/* Additional styling for the container, heading, and button field */
h1 {
    font-size: 24px;
    margin-bottom: 20px;
}

.field {
    text-align: center;
}
    </style>
</head>

<body>
    <form runat="server">
        <div class="container">
            <h1>Update Information</h1>
                        <div class="form-group">
                <label for="firstname">First Name:</label>
                <asp:TextBox ID="firstname" runat="server" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="lastname">Last Name:</label>
                <asp:TextBox ID="lastname" runat="server" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <asp:TextBox ID="email" runat="server" TextMode="Email" Required="true"></asp:TextBox>
            </div>
             <div class="form-group">
     <label for="password">Password:</label>
     <asp:TextBox ID="password" runat="server" TextMode="Password" Required="true"></asp:TextBox>
 </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <asp:TextBox ID="phoneNo" runat="server" TextMode="Phone" Required="true"></asp:TextBox>
            </div>
           
            <div class="form-group">
                <label for="address">Address:</label>
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Rows="3" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
             </div>
            <div class="field">
    <asp:Button runat="server" ID="btnRegister" Text="Register" CssClass="btn"  OnClick="btnUpdateClick"/>
</div>
        </div>
    </form>
</body>
</html>
