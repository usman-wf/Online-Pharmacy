<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="db_Project.review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Review</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            resize: none;
        }
          input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

              <div class="form-group">
      <label for="medicineName">medicine Name:</label>
      <asp:TextBox ID="medicineName" runat="server"  Required="true"></asp:TextBox>
  </div>
           
                        <div class="form-group">
    <label for="reviewDetail">review Detail</label>
    <asp:TextBox ID="reviewDetail" runat="server"  Required="true"></asp:TextBox>
</div>
             
             
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnReviewClick" />
        </div>
    </form>
</body>
</html>