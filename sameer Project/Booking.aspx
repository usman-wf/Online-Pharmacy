<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="Railway_Management_System.Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #1E0122;
		background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='2000' height='2000' viewBox='0 0 800 800'%3E%3Cg fill='none' %3E%3Cg stroke='%23610166' stroke-width='17'%3E%3Cline x1='-8' y1='-8' x2='808' y2='808'/%3E%3Cline x1='-8' y1='792' x2='808' y2='1608'/%3E%3Cline x1='-8' y1='-808' x2='808' y2='8'/%3E%3C/g%3E%3Cg stroke='%235e0163' stroke-width='16'%3E%3Cline x1='-8' y1='767' x2='808' y2='1583'/%3E%3Cline x1='-8' y1='17' x2='808' y2='833'/%3E%3Cline x1='-8' y1='-33' x2='808' y2='783'/%3E%3Cline x1='-8' y1='-783' x2='808' y2='33'/%3E%3C/g%3E%3Cg stroke='%235b015f' stroke-width='15'%3E%3Cline x1='-8' y1='742' x2='808' y2='1558'/%3E%3Cline x1='-8' y1='42' x2='808' y2='858'/%3E%3Cline x1='-8' y1='-58' x2='808' y2='758'/%3E%3Cline x1='-8' y1='-758' x2='808' y2='58'/%3E%3C/g%3E%3Cg stroke='%2358025c' stroke-width='14'%3E%3Cline x1='-8' y1='67' x2='808' y2='883'/%3E%3Cline x1='-8' y1='717' x2='808' y2='1533'/%3E%3Cline x1='-8' y1='-733' x2='808' y2='83'/%3E%3Cline x1='-8' y1='-83' x2='808' y2='733'/%3E%3C/g%3E%3Cg stroke='%23550259' stroke-width='13'%3E%3Cline x1='-8' y1='92' x2='808' y2='908'/%3E%3Cline x1='-8' y1='692' x2='808' y2='1508'/%3E%3Cline x1='-8' y1='-108' x2='808' y2='708'/%3E%3Cline x1='-8' y1='-708' x2='808' y2='108'/%3E%3C/g%3E%3Cg stroke='%23520255' stroke-width='12'%3E%3Cline x1='-8' y1='667' x2='808' y2='1483'/%3E%3Cline x1='-8' y1='117' x2='808' y2='933'/%3E%3Cline x1='-8' y1='-133' x2='808' y2='683'/%3E%3Cline x1='-8' y1='-683' x2='808' y2='133'/%3E%3C/g%3E%3Cg stroke='%234f0252' stroke-width='11'%3E%3Cline x1='-8' y1='642' x2='808' y2='1458'/%3E%3Cline x1='-8' y1='142' x2='808' y2='958'/%3E%3Cline x1='-8' y1='-158' x2='808' y2='658'/%3E%3Cline x1='-8' y1='-658' x2='808' y2='158'/%3E%3C/g%3E%3Cg stroke='%234d024f' stroke-width='10'%3E%3Cline x1='-8' y1='167' x2='808' y2='983'/%3E%3Cline x1='-8' y1='617' x2='808' y2='1433'/%3E%3Cline x1='-8' y1='-633' x2='808' y2='183'/%3E%3Cline x1='-8' y1='-183' x2='808' y2='633'/%3E%3C/g%3E%3Cg stroke='%234a024c' stroke-width='9'%3E%3Cline x1='-8' y1='592' x2='808' y2='1408'/%3E%3Cline x1='-8' y1='192' x2='808' y2='1008'/%3E%3Cline x1='-8' y1='-608' x2='808' y2='208'/%3E%3Cline x1='-8' y1='-208' x2='808' y2='608'/%3E%3C/g%3E%3Cg stroke='%23470348' stroke-width='8'%3E%3Cline x1='-8' y1='567' x2='808' y2='1383'/%3E%3Cline x1='-8' y1='217' x2='808' y2='1033'/%3E%3Cline x1='-8' y1='-233' x2='808' y2='583'/%3E%3Cline x1='-8' y1='-583' x2='808' y2='233'/%3E%3C/g%3E%3Cg stroke='%23440345' stroke-width='7'%3E%3Cline x1='-8' y1='242' x2='808' y2='1058'/%3E%3Cline x1='-8' y1='542' x2='808' y2='1358'/%3E%3Cline x1='-8' y1='-558' x2='808' y2='258'/%3E%3Cline x1='-8' y1='-258' x2='808' y2='558'/%3E%3C/g%3E%3Cg stroke='%23410342' stroke-width='6'%3E%3Cline x1='-8' y1='267' x2='808' y2='1083'/%3E%3Cline x1='-8' y1='517' x2='808' y2='1333'/%3E%3Cline x1='-8' y1='-533' x2='808' y2='283'/%3E%3Cline x1='-8' y1='-283' x2='808' y2='533'/%3E%3C/g%3E%3Cg stroke='%233e033f' stroke-width='5'%3E%3Cline x1='-8' y1='292' x2='808' y2='1108'/%3E%3Cline x1='-8' y1='492' x2='808' y2='1308'/%3E%3Cline x1='-8' y1='-308' x2='808' y2='508'/%3E%3Cline x1='-8' y1='-508' x2='808' y2='308'/%3E%3C/g%3E%3Cg stroke='%233b033c' stroke-width='4'%3E%3Cline x1='-8' y1='467' x2='808' y2='1283'/%3E%3Cline x1='-8' y1='317' x2='808' y2='1133'/%3E%3Cline x1='-8' y1='-333' x2='808' y2='483'/%3E%3Cline x1='-8' y1='-483' x2='808' y2='333'/%3E%3C/g%3E%3Cg stroke='%23390339' stroke-width='3'%3E%3Cline x1='-8' y1='342' x2='808' y2='1158'/%3E%3Cline x1='-8' y1='442' x2='808' y2='1258'/%3E%3Cline x1='-8' y1='-458' x2='808' y2='358'/%3E%3Cline x1='-8' y1='-358' x2='808' y2='458'/%3E%3C/g%3E%3Cg stroke='%23360336' stroke-width='2'%3E%3Cline x1='-8' y1='367' x2='808' y2='1183'/%3E%3Cline x1='-8' y1='417' x2='808' y2='1233'/%3E%3Cline x1='-8' y1='-433' x2='808' y2='383'/%3E%3Cline x1='-8' y1='-383' x2='808' y2='433'/%3E%3C/g%3E%3Cg stroke='%23330333' stroke-width='1'%3E%3Cline x1='-8' y1='392' x2='808' y2='1208'/%3E%3Cline x1='-8' y1='-408' x2='808' y2='408'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
		background-attachment: fixed;
        margin: 0;
        font-family: Arial, sans-serif;
		color: white;
    }
	.navbar {
        background-color: #7810A3;
        overflow: hidden;
		justify-content: flex-start;
		display: flex;
		padding-left: 200px;
		height: 50px;
    }
	.navbar img {
		display: block;
		height: 50px;
		width: 90px;
        position: absolute;
		left: 0;
		top: 0;
    }
    .navbar a {
        float: left;
        display: block;
        color: white;
        padding: 5px 20px;
        text-decoration: none;
		margin-right: 20px;
    }
    .navbar a:hover {
        background-color: #7810A3;
    }
	.navbar .right {
        margin-left: 200px;
        white-space: nowrap;
    }
    .container {
      background-color: #7810A3;
      border-radius: 10px;
      padding: 30px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .btn-primary {
      background-color: #6c5ce7; /* Dark Purple */
      border-color: #6c5ce7;
    }
    .btn-primary:hover {
      background-color: #4834d4; /* Slightly Darker Purple */
      border-color: #4834d4;
    }
	footer {
        background-color: #7810A3;
        color: white;
        text-align: left;
        padding: 20px;
		margin-top: 100px;
    }

    .myGridClass {
  width: 100%;
  /*this will be the color of the odd row*/
  background-color: #fff;
  margin: 5px 0 10px 0;
  border: solid 1px #525252;
  border-collapse:collapse;
}

/*data elements*/
.myGridClass td {
  padding: 2px;
  border: solid 1px #c1c1c1;
  color: black;
}

/*header elements*/
.myGridClass th {
  padding: 4px 2px;
  color: #fff;
  background: #000000;
  border-left: solid 1px #525252;
  font-size: 0.9em;
}

/*his will be the color of even row*/
.myGridClass .myAltRowClass { background: #fcfcfc repeat-x top; }

/*and finally, we style the pager on the bottom*/
.myGridClass .myPagerClass { background: #424242; }

.myGridClass .myPagerClass table { margin: 5px 0; }

.myGridClass .myPagerClass td {
  border-width: 0;
  padding: 0 6px;
  border-left: solid 1px #666;
  font-weight: bold;
  color: #fff;
  line-height: 12px;
}

.myGridClass .myPagerClass a { color: #666; text-decoration: none; }

.myGridClass .myPagerClass a:hover { color: #000; text-decoration: none; } 

.e-calendar {
        background-color:darkviolet;
        color: black;
}

.message {
        color: red;
        font-weight: bold;
        margin-top: 10px;
 }

  </style>
</head>
<body>
   <div class="navbar">
<img src="Images/image_processing20210903-434-1yaceqo.jpg" alt="Logo" />
<a href="Main Page.aspx">Home</a>
<a href="Booking.aspx">Book</a>
<a href="Experience.aspx">Experience</a>
<a href= "Reward System.aspx">Rewards</a>	
<a href = "Staff.aspx">Staff</a>
<a href = "Reviews.aspx">Reviews</a>
<asp:HyperLink ID="lnk" class="right" runat="server" Text=""></asp:HyperLink>
       </div>
	
   <form runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <div class="container mt-5">
         <h1 class="mb-4 text-center">Railway Booking</h1>
         <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
             <ContentTemplate>
                 <div class="row">
                     <div class="col-md-6">
                         <asp:Image ID="imgTrain" runat="server" ImageUrl="~/Images/p1.jpg" AlternateText="Train" CssClass="img-fluid mb-4" />
                     </div>
                     <div class="col-md-6">
                         <asp:Image ID="imgBooking" runat="server" ImageUrl="~/Images/p2.jpg" AlternateText="Booking" CssClass="img-fluid mb-4" />
                     </div>
                 </div>
                 <div class="mb-3">
                     <asp:Label ID="lblFrom" runat="server" AssociatedControlID="from" Text="From"></asp:Label>
                     <asp:TextBox ID="from" runat="server" CssClass="form-control" placeholder="Enter Arrival station" AutoPostBack="true" OnTextChanged="from_TextChanged"></asp:TextBox>
                 </div>
                 <div class="mb-3">
                     <asp:Label ID="lblTo" runat="server" AssociatedControlID="to" Text="To"></asp:Label>
                     <asp:TextBox ID="to" runat="server" CssClass="form-control" placeholder="Enter Destination station" AutoPostBack="true" OnTextChanged="to_TextChanged"></asp:TextBox>
                 </div>
                 <div class="text-input">
                     <asp:Label ID="Label4" runat="server" Text="Select Date"></asp:Label>
                     <asp:Calendar ID="Date" runat="server" CssClass="e-calendar" OnSelectionChanged="DateCalendar_SelectionChanged"></asp:Calendar>
                 </div>
                 <div class="text-center">
                     <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
                 </div>
                 <asp:GridView ID="scheduleGridView" runat="server" CssClass="myGridClass" AutoGenerateColumns="False" AutoGenerateSelectButton="true" EnableViewState="true" OnSelectedIndexChanged="scheduleGridView_SelectedIndexChanged">
                     <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" /> 
                     <Columns>
                         <asp:BoundField DataField="RideID" HeaderText="Ride Number" />
                         <asp:BoundField DataField="Arrival" HeaderText="Arrival Station" />
                         <asp:BoundField DataField="Destination" HeaderText="Destination Station" />
                         <asp:BoundField DataField="TravelDate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" />
                         <asp:BoundField DataField="TravelTime" HeaderText="Time" />
                         <asp:BoundField DataField="Available_Seats" HeaderText="Seats_Available" />
                     </Columns>
                 </asp:GridView>
                 <div id="passengersSection" runat="server" visible="false">
                     <div class="mb-3">
                         <div class="text-input">
                              <asp:Label ID="Label3" runat="server" AssociatedControlID="Passengers" Text=""></asp:Label>
                             <asp:TextBox ID="Passengers" runat="server" required></asp:TextBox>
                        </div> 
                     </div>
                     <div class="mb-3">
                         <asp:Label ID="lblClass" runat="server" AssociatedControlID="type" Text="Ticket Class"></asp:Label>
                         <asp:DropDownList ID="type" runat="server" CssClass="form-select">
                             <asp:ListItem Text="Choose..." Selected="True"></asp:ListItem>
                             <asp:ListItem Text="Economy"></asp:ListItem>
                             <asp:ListItem Text="Business"></asp:ListItem>
                         </asp:DropDownList>
                     </div>
                     <div class="mb-3">
                         <asp:Label ID="lblRewards" runat="server" AssociatedControlID="Rewards" Text="Use Points"></asp:Label>
                                <asp:DropDownList ID="Rewards" runat="server" CssClass="form-select">
                                      <asp:ListItem Text="Choose..." Selected="True"></asp:ListItem>
                                      <asp:ListItem Text="Discount"></asp:ListItem>
                                      <asp:ListItem Text="Food"></asp:ListItem>
                                </asp:DropDownList>
                    </div>
                     <asp:Label ID="totalBill" runat="server" Text="Total Bill "></asp:Label> <br /> <br />
                     <asp:Button ID="btnBook" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="btnBook_Click" />
                     <asp:Button ID="purchasebtn" runat="server" Text="Purchase" Visible ="false" CssClass="btn btn-primary" OnClick="purchasebtn_Click" />
                     <asp:Label ID="error" runat="server"  Text="" CssClass="message"></asp:Label>
              </div>
             </ContentTemplate>
         </asp:UpdatePanel>
     </div>
 </form>
 
   
<footer>
	<h2> Contact Us </h2>
	<p> Telephone Number: 145-423-8724 </p>
	<p> Email: info@royalrailways.com </p>
    <a href="Main Page.aspx" style="color:white; text-decoration:none;">Home</a> <br/> <br/>
    <a href="Booking.aspx" style="color:white; text-decoration:none;">Book</a> <br/> <br/>
    <a href="Experience.aspx" style="color:white; text-decoration:none;">Experience</a> <br/> <br/>
    <a href="Reward System.aspx" style="color:white; text-decoration:none;">Rewards</a> <br/> <br/>
	<a href="Staff.aspx" style="color:white; text-decoration:none;">Staff</a> <br/> <br/>
	<a href="Reviews.aspx" style="color:white; text-decoration:none;">Reviews</a> <br/> <br/>
    <p> All Terms and Conditions Applied </p>
</footer>
</body>
</html>
