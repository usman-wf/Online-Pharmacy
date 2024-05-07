 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="db_Project.ViewCart" %>
    <!DOCTYPE html>
    <html>
    <head>
        <title>View Cart</title>
        <!-- Add your CSS stylesheets here -->
        <style>
        /* CSS styles for the GridView */
        body{
                     background-image: url('images/cartBackground.jpg');
  background-size: cover; /* ensure the image covers the whole background */
background-position: center; /* center the image */
background-repeat: no-repeat;  /* Avoids repeating the image */
height:100vh; /* Set the height to 100% of the viewport height */

        }
      
        .gridview-container {
            font-family: Arial, sans-serif;
            margin: 20px auto;
            width: 80%;
        }

        .gridview-header {
            background-color: #f2f2f2;
            padding: 10px;
            text-align: center;
        }

        .gridview-table {
            width: 100%;
            border-collapse: collapse;
        }

        .gridview-table th,
        .gridview-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        .gridview-table th {
            background-color: #4CAF50;
            color: white;
        }

        /* CSS styles for the quantity input */
        .quantity-input {
            width: 50px;
            text-align: center;
        }

        /* CSS styles for the remove button */
        .remove-button {
            background-color: #f44336;
            border: none;
            color: white;
            padding: 8px 12px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }

        .remove-button:hover {
            background-color: #d32f2f;
        }

        /* CSS styles for the proceed to payment button */
        .proceed-button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            cursor: pointer;
            border-radius: 4px;
        }

        .proceed-button:hover {
            background-color: #45a049;
        }

         .centered-container {
            text-align: center;
            margin-top: 20px; /* Add some space at the top */
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
        }

    </style>
    </head>
    
<body>
    <form id="form1" runat="server">
        <div class="gridview-container">
            <h1 class="gridview-header">Your Cart</h1>
            <asp:GridView ID="GridViewCart" runat="server" DataKeyNames="MedicineId" AutoGenerateColumns="false" OnRowCommand="GridViewCart_RowCommand">
                <Columns>
                    <asp:BoundField DataField="MedicineId" HeaderText="Medicine ID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:N2}" />
                    <asp:BoundField DataField="ManufactureDate" HeaderText="Manufacture Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox ID="txtStocks" runat="server" TextMode="Number" CssClass="integer-input" onkeypress="return isNumberKey(event)" min="1"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="StockQuantity" HeaderText="Stock Quantity" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnRemoveItem" runat="server" Text="Remove" CommandName="RemoveItem" CommandArgument='<%# Eval("MedicineId") %>' CssClass="remove-button" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnProceedToPayment" runat="server" Text="Proceed to Payment" OnClick="btnProceedToPayment_Click" CssClass="btn btn-primary proceed-button" />
        </div>
    
    
    </form>

      
        

   <script type="text/javascript">
       function isNumberKey(evt) {
           var charCode = (evt.which) ? evt.which : event.keyCode;
           if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
               return false;
           }
           var inputValue = parseInt(evt.target.value || 0);
           var stockQuantity = parseInt(evt.target.parentNode.nextElementSibling.textContent); // Get the stock quantity from the next cell
           if (inputValue <= 0) {
               evt.target.value = '1';
           } else if (inputValue > stockQuantity) {
               evt.target.value = stockQuantity.toString();
           }
           return true;
       }
   </script>


</body>

    </html>