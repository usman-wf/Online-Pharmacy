<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Railway_Management_System.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile</title>
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
        padding: 15px 20px;
        text-decoration: none;
		margin-right: 20px;
    }
    .navbar a:hover {
        background-color: #7810A3;
    }
	.navbar .right {
        margin-left: 250px;
        white-space: nowrap;
    }
	footer {
        background-color: #7810A3;
        color: white;
        text-align: left;
        padding: 20px;
		margin-top: 100px;
    }
    .container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    text-align: center;
}

.profile {
    margin-top: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.profile img {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    margin-bottom: 10px;
}

.info {
    text-align: left;
}

.info p {
    margin: 5px 0;
}
.btn-primary {
  background-color: #6c5ce7; /* Dark Purple */
  border-color: #6c5ce7;
  cursor: pointer;
}
.btn-primary:hover {
  background-color: #4834d4; /* Slightly Darker Purple */
  border-color: #4834d4;
  cursor: pointer;
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

message {
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
	
   <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
                <asp:Button class="btn-primary" runat="server" Text="Logout" OnClick="Logout" style="margin-top: 21px; margin-left: 900px" />
            <h1>User Profile</h1>
            <div class="profile">
                <asp:Image ID="profilePhoto" runat="server" CssClass="profile-photo" />
                <div class="info">
                    <p><strong>Full Name:</strong> <asp:Label ID="lblFullName" runat="server"></asp:Label></p>
                    <p><strong>Phone Number:</strong> <asp:Label ID="lblPhoneNumber" runat="server"></asp:Label></p>
                    <p><strong>CNIC:</strong> <asp:Label ID="lblCnic" runat="server"></asp:Label></p>
                    <p><strong>Email:</strong> <asp:Label ID="lblEmail" runat="server"></asp:Label></p>
                    <p><strong>Points:</strong> <asp:Label ID="lblPoints" runat="server"></asp:Label></p>
                </div>
            </div>
            <asp:FileUpload ID="fileToUpload" runat="server" />
            <asp:Button ID="btnUpload" class="btn-primary" runat="server" Text="Upload Photo" OnClick="btnUpload_Click" style="margin-top: 21px" />
           </div>

       <br /> <br />
       <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
         <ContentTemplate>
       <h2 style="color:white"> Your Bookings</h2>
       <asp:GridView ID="GridViewBookings" runat="server" AutoGenerateColumns="False" CssClass="myGridClass" AutoGenerateSelectButton="true">
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="BookingID" HeaderText="Booking ID" />
                <asp:BoundField DataField="RideID" HeaderText="Ride Number" />
                <asp:BoundField DataField="Arrival" HeaderText="Arrival" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" />
                <asp:BoundField DataField="TravelDate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}"/>
                <asp:BoundField DataField="TravelTime" HeaderText="Time" />
                <asp:BoundField DataField="Seats" HeaderText="Passengers" />
                <asp:BoundField DataField="Class" HeaderText="Class" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
            </Columns>
        </asp:GridView>
                         <asp:Button ID="removebtn" class="btn-primary" runat="server" Text="Cancel Booking" OnClick="Cancel_Booking"/>


              <h2 style="color:white"> Previous Bookings</h2>
                <asp:GridView ID="PBooking" runat="server" AutoGenerateColumns="False" CssClass="myGridClass" AutoGenerateSelectButton="true">
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Columns>
                            <asp:BoundField DataField="BookingID" HeaderText="Booking ID" />
                            <asp:BoundField DataField="RideID" HeaderText="Ride Number" />
                            <asp:BoundField DataField="Arrival" HeaderText="Arrival" />
                             <asp:BoundField DataField="Destination" HeaderText="Destination" />
                             <asp:BoundField DataField="TravelDate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}"/>
                            <asp:BoundField DataField="TravelTime" HeaderText="Time" />
                            <asp:BoundField DataField="Seats" HeaderText="Passengers" />
                            <asp:BoundField DataField="Class" HeaderText="Class" />
                            <asp:BoundField DataField="Status" HeaderText="Status" />
                            <asp:BoundField DataField="Rated" HeaderText="Rated" />
                    </Columns>
            </asp:GridView>
                             <asp:Button ID="RateButton" class="btn-primary" runat="server" Text="Rate Booking" Visible="false" OnClick="Rate_Booking"/>
                                <asp:Label ID="Label3" runat="server" CssClass="message" Text=""></asp:Label>
                     </ContentTemplate>
         </asp:UpdatePanel>
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
