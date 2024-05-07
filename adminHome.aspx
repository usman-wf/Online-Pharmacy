<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="db_Project.adminLogin" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Admin Panel</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('images/adminBack.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
        }

        /* Inserted CSS from above */
        .form-table input {
            background-color: rgba(255, 255, 255, 0.8);  
            color: #333;  
            border: 2px solid #000;  
            padding: 10px;  
            border-radius: 5px;
        }

        .form-table input::placeholder {
            color: #555;
            opacity: 1;
        }

        .form-table input:focus {
            border-color: #00bcd4;
            outline: none;
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        .form-table {
            border-collapse: collapse;
        }

            .form-table td {
                padding: 10px;
                text-align: center;
                -webkit-justify-content: inherit;
                justify-content: inherit;
            }

        #heading{
        color:white;
         -webkit-justify-content: inherit;
 justify-content: inherit;
        }

        .form-table input {
    width: 250px;  /* Example: sets a fixed width of 250px */
    height: 60px;  /* Example: sets a fixed height of 40px */
    padding: 5px;  /* Ensures some padding for comfort */
    border: 1px solid #ccc;  /* Default border styling */
    border-radius: 5px;  /* Optional: gives rounded corners */
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container form-container">
            <div>
                <h1 class="text-center mb-4" id="heading" >Admin Panel</h1>
                <table class="form-table">
                    <!-- Adding placeholders and vibrant text boxes -->
                    <tr>
                         
                        <td>
                            <asp:TextBox ID="t1" runat="server" placeholder="Enter product name"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                       
                        <td>
                            <asp:TextBox ID="t2" runat="server" placeholder="Enter product description"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                       
                        <td>
                            <asp:TextBox ID="t3" runat="server" placeholder="Enter product price"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                       
                        <td>
                            <asp:TextBox ID="t4" runat="server" placeholder="Enter manufacture date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                       
                        <td>
                            <asp:TextBox ID="t5" runat="server" placeholder="Enter expiry date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                       
                        <td>
                            <asp:TextBox ID="t6" runat="server" placeholder="Enter stock quantity"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="b1" runat="server" Text="Upload" OnClick="b1_Click" CssClass="btn btn-primary" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
