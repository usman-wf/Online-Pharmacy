<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="db_Project.search" %>

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
                <img src="item1.jpg" alt="Item 1" />
                <h2>Item 1</h2>
                <p>Description of Item 1. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
            <div class="search-item">
                <img src="item2.jpg" alt="Item 2" />
                <h2>Item 2</h2>
                <p>Description of Item 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
            <!-- Add more search items as needed -->
        </div>
    </form>
</body>
</html>