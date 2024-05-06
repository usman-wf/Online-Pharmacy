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