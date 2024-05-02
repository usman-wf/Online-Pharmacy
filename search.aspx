﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="db_Project.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
             font-family: Arial, sans-serif;
 background-color: #f2f2f2;
 margin: 0;
 padding: 0;
 background-image: url('images/back2.jpeg');
 background-size: 100%; /* Adjusts image size to cover the whole body */
 background-repeat: no-repeat; /* Avoids repeating the image */
          
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        .search-item {
            background-color: #f9f9f9;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
        }
        .search-item img {
            max-width: 100px;
            max-height: 100px;
            float: left;
            margin-right: 10px;
        }
        .search-item h2 {
            margin: 0;
            font-size: 18px;
            color: #333;
        }
        .search-item p {
            margin: 5px 0;
            color: #666;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Search Results</h1>
            <div class="search-item">               
                <h2>Item 1</h2>
                <p>Description of Item 1</p>
            </div>
             
            
        </div>
    </form>
</body>
</html>