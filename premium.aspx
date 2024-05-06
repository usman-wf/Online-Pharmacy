<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="premium.aspx.cs" Inherits="db_Project.premium" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Premium Features</title>
    <style>

    /* Center the entire page */
    .center-screen {
        display: flex;
        justify-content: center; /* Horizontal centering */
        align-items: center;     /* Vertical centering */
        height: 100vh;           /* Full screen height */
    }

    /* Container for text and buttons */
    .button-container {
        text-align: center;  /* Center text within the container */
        padding: 20px;
    }

    /* Styling for buttons */
    .btn-premium,
    .btn-yearly {
        padding: 10px 20px;
        font-size: 16px;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 5px;
        margin: 10px;
    }

    .btn-premium {
        background-color: #4CAF50; /* Green for Premium */
    }

    .btn-yearly {
        background-color: #2196F3; /* Blue for Yearly */
    }

    </style>
    
</head>
<body>
    <form id="form1" runat="server" class="center-screen"> <!-- Centering everything -->
        <div class="button-container">
            <h2>Sign up for premium to avail 10% discount on all products up to 10,000 PKR for only 750 PKR.</h2>

            <asp:Button
                ID="btnPremium"
                runat="server"
                Text="Premium Package"
                CssClass="btn-premium"
                OnClick="btnPremium_Click" />

            <h2>Sign up for a yearly package to avail a 2.5% discount on all products up to 5,000 PKR.</h2>

            <asp:Button
                ID="btnYearly"
                runat="server"
                Text="Yearly Package"
                CssClass="btn-yearly"
                OnClick="btnYearly_Click" />
        </div>
    </form>
</body>
</html>
