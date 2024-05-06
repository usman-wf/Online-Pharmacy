 


<%@ Page Title="Home" Language="C#"   AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="db_Project.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
 <style>
   
.client-item {
    padding: 34px;
}
  

.center
{
    text-align: center;
   
} 


#clients{
    display: flex;
    justify-content: center;
    align-items: center;
}

#clients img{

    height: 150px;
    width: 150px;
}

.client-item{
    padding: 34px;
}


#client-section::before{
    content: "";
    position: absolute;
    background: url(images/back.jpg) no-repeat center/cover;
width: 100%;
height: 50%;
z-index: -1;
opacity: 0.4;
}

body::before{
    content: "";
    position: absolute;
    background: url(images/back.jpg) no-repeat center/cover;
width: 100%;
height: 100%;
z-index: -1;
opacity: 0.4;
}


.h-primary center::before
{
    content: "";
    position: absolute;
    background: url(images/back.jpg) no-repeat center/cover;
width: 100%;
height: 100%;
z-index: -1;
opacity: 0.4;
}

.about::before{
    content: "";
    position: absolute;
    background: url(images/back.jpg) no-repeat center/cover;
width: 100%;
height: 100%;
z-index: -1;
opacity: 0.4;
}


        .head {
            background-color: #f8f9fa; /* Set background color */
            padding: 20px 0; /* Add padding to the top and bottom of the header */
            display: flex; /* Use flexbox */
            justify-content: center; /* Center horizontally */
            align-items: center; /* Center vertically */
             /* Add margin from the top */
        }

        .navbar {
            width: 100%; /* Ensure the navbar stretches across the screen */
            border: none; /* Remove any border */
            margin-top: 10px; /* Add margin from the top */
        }

  

 

.about{
    background-color: black;
    color: white;
}

.catalog-scroll-container {
  overflow-x: auto; /* Enable horizontal scrolling */
  white-space: nowrap; /* Prevent items from wrapping */
}

.catalog-container {
    /* Display cards horizontally */
  overflow-x: auto; /* Enable horizontal scrolling for the container */
white-space: nowrap;
}

.product-card {
    display: inline-block; 
  width: 300px;
  margin-right: 20px; /* Add margin between cards */
  background-color: #f9f9f9;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  text-align: center;
}

.product-card img {
  width: 100%;
  border-top-left-radius: 8px;
  border-top-right-radius: 8px;
}

.product-card h2 {
  margin-top: 10px;
  font-size: 18px;
}

.product-card p {
  margin-bottom: 10px;
  font-size: 16px;
  color: #333;
}

 

 
.head {
    background-color: #f8f9fa; /* Set background color */
    padding: 10px 0; /* Add padding to the header */
}

 

#logo img {
    max-width: 100%; /* Make sure the logo image doesn't exceed its container */
     /* Maintain aspect ratio */
}

#logo::before{
    background: url(images/back.jpg) no-repeat center/cover;
}

.navbar-brand {
    display: none; /* Hide the navbar brand */
}

.navbar-toggler {
    border: none; /* Remove border from the toggler */
}

.navbar-nav {
    list-style-type: none; /* Remove bullet points from navbar items */
}

.nav-item {
    margin-right: 15px; /* Add some spacing between navbar items */
}

.nav-link {
    color: #212529; /* Set text color for navbar links */
    text-decoration: none; /* Remove default underline */
    transition: color 0.3s; /* Add smooth transition for color change */
}

#logo::before{
    background-color: black;
}

.nav-link:hover,
.nav-link:focus {
    color: #007bff; /* Change text color on hover or focus */
}

.nav-link.active {
    font-weight: bold; /* Highlight active navbar link */
}

.dropdown-menu {
    background-color: #fff; /* Set background color for dropdown menu */
    border: 1px solid #ced4da; /* Add border to dropdown menu */
    border-radius: 0.25rem; /* Add some border radius */
}

.dropdown-item {
    color: #212529; /* Set text color for dropdown items */
    text-decoration: none; /* Remove default underline */
    transition: background-color 0.3s; /* Add smooth transition for background color change */
}

.dropdown-item:hover,
.dropdown-item:focus {
    background-color: #f8f9fa; /* Change background color on hover or focus */
}

.dropdown-divider {
    border-top: 1px solid #ced4da; /* Add border above dropdown divider */
}

.form-control {
   
    width: 200px; /* Set width for form input */
    margin-right: 10px; /* Add spacing between form input and button */
}

.btn-outline-success {
    color: #28a745; /* Set text color for button */
    border-color: #28a745; /* Set border color for button */
}

.btn-outline-success:hover,
.btn-outline-success:focus {
    color: #fff; /* Change text color on hover or focus */
    background-color: #28a745; /* Change background color on hover or focus */
    border-color: #28a745; /* Change border color on hover or focus */
}

.searchBar {
         position:  absolute;
right: 5%;

        }


.btn btn-outline-success{
    
    display: flex;
}

.add-to-cart-button {
    padding: 5px 5px; /* Add padding for a comfortable size */
    background-color: #28a745; /* A green color for the button */
    color: white; /* White text on a green background */
    border: none; /* No border to give a clean look */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Change cursor to a pointer on hover */
    font-size: 16px; /* Slightly larger font for readability */
    transition: background-color 0.3s; /* Smooth transition for hover effect */
}

/* Hover effect to change the background color */
.add-to-cart-button:hover {
    background-color: #218838; /* Darker green on hover */
}

    </style>
</head>
 

    <body>
    <form id="form1" runat="server">
        <header class="head">
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <div class="row align-items-center justify-content-between">
                        <div class="col">
                            <div id="logo" class="d-flex align-items-center justify-content-start">
                                <img src="images/logo2.png" alt="image not available" width="50" />
                            </div>
                        </div>
                        <div class="col">
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <a class="nav-link" href="Info.aspx">Update Info</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="payment.aspx">Payment</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="review.aspx">Review</a>
                                    </li>
                                     <li class="nav-item">
                                      <a class="nav-link" href="premium.aspx">Premium Features</a>
                                 </li>
                                </ul>
                                <asp:Panel runat="server" CssClass="searchBar">
                                    <asp:TextBox ID="searchInput" CssClass="form-control me-2" runat="server" placeholder="Search"></asp:TextBox>
                                  <asp:Button ID="searchButton" CssClass="btn btn-outline-success" runat="server" Text="Search" OnClick="btnSearchClick" />
                               </asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <div class="back">
            <h1>Our Products</h1>
            <div class="catalog-container">
                <div class="product-card" id="bp operator">
                    <img src="images/bp.jpg" alt="Product 1" />
                    <h2>BP Operator</h2>
                    <p>Rs.2500</p>
                    <asp:TextBox ID="bpQuantity" runat="server" Type="Number" min="1" Text="1" />
                    <asp:Button ID="addToCartBP" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
                </div>
                   <div class="product-card" id="vitaminC">
       <img src="images/vitaminC.jpg" alt="Product 2" />
       <h2>Vitamin C</h2>
       <p>Rs.500</p>
       <asp:TextBox ID="TextBox1" runat="server" Type="Number" min="1" Text="1" />
       <asp:Button ID="Button1" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
   </div>

                                <div class="product-card" id="pediasure">
    <img src="images/pediasure.jpg" alt="Product 3" />
    <h2>Vitamin C</h2>
    <p>Rs.500</p>
    <asp:TextBox ID="TextBox2" runat="server" Type="Number" min="1" Text="1" />
    <asp:Button ID="Button2" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
</div>

                                                <div class="product-card" id="Panadol">
    <img src="images/Panadol.jpg" alt="Product 4" />
    <h2>Panadol</h2>
    <p>Rs.250</p>
    <asp:TextBox ID="TextBox3" runat="server" Type="Number" min="1" Text="1" />
    <asp:Button ID="Button3" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
</div>


        <div class="product-card" id="Disprin">
    <img src="images/Disprin.jpeg.jpg" alt="Product 5" />
    <h2>Disprin</h2>
    <p>Rs.250</p>
    <asp:TextBox ID="TextBox4" runat="server" Type="Number" min="1" Text="1" />
    <asp:Button ID="Button4" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
</div>
               
                        <div class="product-card" id="Strepsils">
    <img src="images/strepsils.jpg" alt="Product 6" />
    <h2>strepsils</h2>
    <p>Rs.50</p>
    <asp:TextBox ID="TextBox5" runat="server" Type="Number" min="1" Text="1" />
    <asp:Button ID="Button5" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
</div>
                                     
                <div class="product-card" id="Dove Soap">
    <img src="images/Dove soap.jpg" alt="Product 7" />
    <h2>Dove Soap</h2>
    <p>Rs.150</p>
    <asp:TextBox ID="TextBox6" runat="server" Type="Number" min="1" Text="1" />
    <asp:Button ID="Button6" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
</div>

 <div class="product-card" id="Johnson's">
    <img src="images/Johnson's.jpg" alt="Product 8" />
    <h2>Johnsons Shampoo</h2>
    <p>Rs.350</p>
    <asp:TextBox ID="TextBox7" runat="server" Type="Number" min="1" Text="1" />
    <asp:Button ID="Button7" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
</div>

                
 <div class="product-card" id="Dettol">
    <img src="images/dettol.jpg" alt="Product 9" />
    <h2>Dettol</h2>
    <p>Rs.350</p>
    <asp:TextBox ID="TextBox8" runat="server" Type="Number" min="1" Text="1" />
    <asp:Button ID="Button8" CssClass="add-to-cart-button" runat="server" Text="Add to Cart" OnClick="AddToCartBP_Click" />
</div>




            </div>

            <div class="about">
                <h1>CLINIX</h1>
                <p>
                    Clinix is Pakistans leading digital healthcare platform that brings you complete health facilities right to your doorstep. Order medicines online with our e-pharmacy or consult top doctors online in Pakistan from our App right from the comfort of your home. Dawaai Pakistan is the first-ever internationally certified and registered healthcare merchant (LegitScript Certified). We pride ourselves in providing our users with authentic medicines, medical equipment and health supplements in Pakistan.
<br/>
Moreover, you can opt to get to avail at-home care services such as home nursing services or book lab tests online. Over the years we have built trust by offering our users the utmost convenience to buy medicines. Get your prescriptions online and get monthly refill facilities with Dawaai Asaan orders. You can also get information about your medicines and learn its uses with our official medical content that will help you make better health choices.
<br/>
You can order online medicines, health products, lab test services,online doctor consultations from anywhere in Pakistan with ease (Karachi, Islamabad, Lahore, Rawalpindi & more) by using our fast medicine delivery service . In Karachi, you can get your selected medicines within 60 minutes of your order confirmation with dShops. Our mobile application is available on iOS andandroid.

                </p>
            </div>

            <section id="client-section">
                <h1 class="h-primary center">Our Partners</h1>
                <div id="clients">
                    <div class="client-item">
                        <img src="images/tcs.png" alt="" />
                    </div>
                    <div class="client-item">
                        <img src="images/lab.jpeg" alt="" />
                    </div>
                    <div class="client-item">
                        <img src="images/sk logo.png" alt="" />
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>

</html>
