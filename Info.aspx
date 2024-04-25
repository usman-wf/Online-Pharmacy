


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

        .formgroup {
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
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
            width: auto;
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
    </style>
</head>

<body>
    <form runat="server">
        <div class="container">
            <h1>Update Information</h1>
            <div class="formgroup">
                <label for="firstName">First Name</label>
                <input type="text" name="firstName" id="firstName" placeholder="Enter First Name"  />
            </div>
            <div class="formgroup">
                <label for="lastName">Last Name</label>
                <input type="text" name="lastName" id="lastName" placeholder="Enter Last Name" />
            </div>
            <div class="formgroup">
                <label for="phoneNum">Phone Number</label>
                <input type="tel" name="phoneNum" id="phoneNum" placeholder="Enter Number" />
            </div>
            <div class="formgroup">
                <label for="age">Age</label>
                <input type="number" name="age" id="age" placeholder="Enter Age" />
            </div>
            <div class="formgroup">
                <label for="dob">Date of Birth</label>
                <input type="date" name="dob" id="dob" placeholder="Enter Date of Birth" />
            </div>
            <div class="formgroup">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="Enter Email" />
            </div>
            <div class="formgroup">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="Enter Password" />
            </div>
            <div class="formgroup">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" placeholder="Enter Username" />
            </div>
            <div class="formgroup">
                <label for="address">Address</label>
                <textarea name="address" id="address" placeholder="Enter Address" ></textarea>
            </div>
            <button type="submit" class="btn" id="submit">Submit</button>
        </div>
    </form>
</body>
</html>
