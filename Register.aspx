<%-- <%@ Page Title="Login" Language="C#"   AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="db_Project.About" %>

  <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
  <style>
           body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    display: flex;
    justify-content: center; /* Center the content horizontally */
    align-items: center; /* Center the content vertically */
    min-height: 100vh; /* Set body height to 100% viewport height */
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
    position: absolute; /* Make the background cover the entire screen */
    top: 0;
    left: 0;
    width: 100%;
    height: 1;
    z-index: -1;
} 
  </style>

  

</head>
<body>
    <form runat="server">
         <h1>Welcome to Medical Care</h1>
        <p>Register for an account to access our services.</p>
        <div class="container">
            
      <asp:Label ID="lblMessage" runat="server" CssClass="message" Text=""></asp:Label>
   
            <div   type="text"  class="field">
    <asp:TextBox runat="server" ID="TextBox1" placeholder="First Name"></asp:TextBox>
</div>    

          <div   type="text"  class="field">
    <asp:TextBox runat="server" ID="TextBox2" placeholder="Last Name"></asp:TextBox>
</div>    
            

           <div   type="text"  class="field">
    <asp:TextBox runat="server" ID="txtEmail" placeholder="Phone"></asp:TextBox>
</div>  

            <div   type="text"  class="field">
    <asp:TextBox runat="server" ID="TextBox3" placeholder="Address"></asp:TextBox>
</div> 

            <div   type="text"  class="field">
    <asp:TextBox runat="server" ID="TextBox4" placeholder="Email"></asp:TextBox>
</div> 

            <div   type="text"  class="field">
    <asp:TextBox runat="server" ID="TextBox5" placeholder="Password"></asp:TextBox>
</div> 


                <asp:Button runat="server"  CssClass="btn" />
              <div class="field">
               <input type="submit" value="Login">
            </div>

        </div>
    </form>
</body>
</html>--%>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="db_Project.Contact" %>

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
        </div>
    </form>
</body>
</html>

