

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" CodeFile ="Register.aspx.cs" Inherits="db_Project.Register" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Medical Registration</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: rgba(247, 230, 214, 0.603);
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 15px;
        }

        p {
            font-size: 16px;
            color: #666;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input, button, textarea {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
        }

        button {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        button:hover {
            background-color: #45A049;
        }

        .background-svg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 1;
            z-index: -1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Welcome to Medical Care</h1>
            <p>Register for an account to access our services.</p>
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
                <label for="phone">Phone Number:</label>
                <asp:TextBox ID="phone" runat="server" TextMode="Phone" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <asp:TextBox ID="password" runat="server" TextMode="Password" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine" Rows="3" Required="true"></asp:TextBox>
            </div>
            <div class="form-group">
             </div>
            <div class="field">
    <asp:Button runat="server" ID="btnRegister" Text="Register" CssClass="btn"  OnClick="btnSignUp_Click"/>
</div>
        </div>
    </form>
</body>
</html>

