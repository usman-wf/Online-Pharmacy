﻿

<%@ Page Title="Login" Language="C#"   AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="db_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <!-- Importing CSS from Google Fonts and applying internal CSS -->
    <style>

        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');


    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
    * {
        
          
        
        font-family: 'Poppins', sans-serif;
    }


   

    html, body {

        display: grid;
        height: 100%;
        width: 100%;
        place-items: center;
        background-color:mediumpurple;
    }

     body{
      background-image: url('images/loginBack.jpg'); /* path to your image */
 background-size: cover; /* ensure the image covers the whole background */
 background-position: center; /* center the image */
 background-repeat: no-repeat; /* don't repeat the image */
 }

    .wrapper {
        width: 380px;
         
        border-radius: 15px;
        box-shadow: 0 15px 20px rgba(0, 0, 0, 0.1);
        color:darkorchid
    }
    .title {
        font-size: 35px;
        font-weight: 600;
        text-align: center;
        line-height: 100px;
         color:violet;
        user-select: none;
        border-radius: 15px 15px 0 0;
        background: linear-gradient(-135deg, #c850c0, #4158d0);
    }
    .field {
        height: 50px;
        width: 100%;
        margin-top: 20px;
        position: relative;
    }
    .field input {
        height: 100%;
        
        width: 100%;
        outline: none;
        font-size: 17px;
         
        border: 1px solid lightgrey;
        border-radius: 25px;
        transition: all 0.3s ease;
    }
    .field input:focus,
    .field input:valid {
        border-color: #4158d0;
    }
    .field label {
        position: absolute;
        top: 50%;
        left: 20px;
        color: #999999;
        font-weight: 400;
        font-size: 17px;
        pointer-events: none;
        transform: translateY(-50%);
        transition: all 0.3s ease;
    }
    .field input:focus ~ label,
    .field input:valid ~ label {
        top: 0;
        font-size: 16px;
        color: #4158d0;
        background: #fff;
        transform: translateY(-50%);
    }
    .content {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    .checkbox {
        display: block;
        align-items: center;
        justify-content: center;
    }
    .checkbox input {
        width: 15px;
        height: 15px;
    }
    .checkbox label {
        color: #262626;
        padding-left: 5px;
    }
    .pass-link {
        text-align: right;
    }
    .pass-link a {
        color: #4158d0;
        text-decoration: none;
    }
    .field input[type="submit"] {
        color: #fff;
        border: none;
        font-size: 20px;
        font-weight: 500;
        cursor: pointer;
        background: linear-gradient(-135deg, #c850c0, #4158d0);
        transition: all 0.3s ease;
    }
    .signup-link {
        color: #262626;
        margin-top: 20px;
        text-align: center;
    }
    .signup-link a {
        color: #4158d0;
        text-decoration: none;
    }
    /*.radio-buttons-list {
    display: inline-flex;*/ /* Ensure inline layout with flexbox */
    /*justify-content: flex-start;*/ /* Align buttons to the start */
    /*gap: 20px;*/ /* Create space between the radio buttons */
    /*padding-top: 5px;*/ /* Optional: add padding to increase vertical spacing */
/*}*/
.radio-buttons-list {
    display: flex;
    flex-direction: column;
    gap: 10px;
}

.radio-buttons-list input {
    margin-right: 10px;
}

.radio-buttons-list label {
    color: black; /* Ensure text is visible */
    display: inline; /* Keep labels visible */
    vertical-align: middle;
}

#userInput{
    color:darkviolet;
}


.radio-buttons-list {
    display: flex;
    flex-direction: column;  /* Ensures vertical stacking of radio buttons */
    gap: 10px;  /* Adds space between each radio button item */
}

.radio-buttons-list input {
    margin-right: 10px;  /* Ensures enough space between radio button and text */
}

.radio-buttons-list label {
    color: black;  /* Ensures text visibility */
    display: inline-flex;  /* Keeps the label aligned with the radio button */
    align-items: center;  /* Aligns text vertically with the radio button */
}

    </style>
</head>
<body>
    <div class="wrapper">
    
        <div class="title">Login To Account</div>
        <form runat="server" id ="userInput">

  <asp:RadioButtonList   runat="server"   ID="rblRole"  RepeatDirection="Vertical"     CssClass="radio-buttons-list">
        
    
    <asp:ListItem Text="Admin" Value="Admin" />
    <asp:ListItem Text="Customer" Value="Customer" />
    
</asp:RadioButtonList>
        
            <div class="field">
                <asp:TextBox runat="server" ID="txtEmail" placeholder="Email" required="required"></asp:TextBox>
                 
            </div>
            <div class="field">
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" required="required" placeholder="Password"></asp:TextBox>
           
            </div>
            
            <div class="field">
                <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn"  OnClick="btnLogin_Click"/>
            </div>
             
            <div class="signup-link">
                Not a member? <a href="Register.aspx">Signup now</a>
            </div>
                    
        </form>
       
    </div>
</body>
</html>
