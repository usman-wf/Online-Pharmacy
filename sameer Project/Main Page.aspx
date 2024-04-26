<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main Page.aspx.cs" Inherits="Railway_Management_System.Main_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Royal Railways</title>
    <style>  
h1 {color: white;}
body {
		background-color: #1E0122;
		background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='2000' height='2000' viewBox='0 0 800 800'%3E%3Cg fill='none' %3E%3Cg stroke='%23610166' stroke-width='17'%3E%3Cline x1='-8' y1='-8' x2='808' y2='808'/%3E%3Cline x1='-8' y1='792' x2='808' y2='1608'/%3E%3Cline x1='-8' y1='-808' x2='808' y2='8'/%3E%3C/g%3E%3Cg stroke='%235e0163' stroke-width='16'%3E%3Cline x1='-8' y1='767' x2='808' y2='1583'/%3E%3Cline x1='-8' y1='17' x2='808' y2='833'/%3E%3Cline x1='-8' y1='-33' x2='808' y2='783'/%3E%3Cline x1='-8' y1='-783' x2='808' y2='33'/%3E%3C/g%3E%3Cg stroke='%235b015f' stroke-width='15'%3E%3Cline x1='-8' y1='742' x2='808' y2='1558'/%3E%3Cline x1='-8' y1='42' x2='808' y2='858'/%3E%3Cline x1='-8' y1='-58' x2='808' y2='758'/%3E%3Cline x1='-8' y1='-758' x2='808' y2='58'/%3E%3C/g%3E%3Cg stroke='%2358025c' stroke-width='14'%3E%3Cline x1='-8' y1='67' x2='808' y2='883'/%3E%3Cline x1='-8' y1='717' x2='808' y2='1533'/%3E%3Cline x1='-8' y1='-733' x2='808' y2='83'/%3E%3Cline x1='-8' y1='-83' x2='808' y2='733'/%3E%3C/g%3E%3Cg stroke='%23550259' stroke-width='13'%3E%3Cline x1='-8' y1='92' x2='808' y2='908'/%3E%3Cline x1='-8' y1='692' x2='808' y2='1508'/%3E%3Cline x1='-8' y1='-108' x2='808' y2='708'/%3E%3Cline x1='-8' y1='-708' x2='808' y2='108'/%3E%3C/g%3E%3Cg stroke='%23520255' stroke-width='12'%3E%3Cline x1='-8' y1='667' x2='808' y2='1483'/%3E%3Cline x1='-8' y1='117' x2='808' y2='933'/%3E%3Cline x1='-8' y1='-133' x2='808' y2='683'/%3E%3Cline x1='-8' y1='-683' x2='808' y2='133'/%3E%3C/g%3E%3Cg stroke='%234f0252' stroke-width='11'%3E%3Cline x1='-8' y1='642' x2='808' y2='1458'/%3E%3Cline x1='-8' y1='142' x2='808' y2='958'/%3E%3Cline x1='-8' y1='-158' x2='808' y2='658'/%3E%3Cline x1='-8' y1='-658' x2='808' y2='158'/%3E%3C/g%3E%3Cg stroke='%234d024f' stroke-width='10'%3E%3Cline x1='-8' y1='167' x2='808' y2='983'/%3E%3Cline x1='-8' y1='617' x2='808' y2='1433'/%3E%3Cline x1='-8' y1='-633' x2='808' y2='183'/%3E%3Cline x1='-8' y1='-183' x2='808' y2='633'/%3E%3C/g%3E%3Cg stroke='%234a024c' stroke-width='9'%3E%3Cline x1='-8' y1='592' x2='808' y2='1408'/%3E%3Cline x1='-8' y1='192' x2='808' y2='1008'/%3E%3Cline x1='-8' y1='-608' x2='808' y2='208'/%3E%3Cline x1='-8' y1='-208' x2='808' y2='608'/%3E%3C/g%3E%3Cg stroke='%23470348' stroke-width='8'%3E%3Cline x1='-8' y1='567' x2='808' y2='1383'/%3E%3Cline x1='-8' y1='217' x2='808' y2='1033'/%3E%3Cline x1='-8' y1='-233' x2='808' y2='583'/%3E%3Cline x1='-8' y1='-583' x2='808' y2='233'/%3E%3C/g%3E%3Cg stroke='%23440345' stroke-width='7'%3E%3Cline x1='-8' y1='242' x2='808' y2='1058'/%3E%3Cline x1='-8' y1='542' x2='808' y2='1358'/%3E%3Cline x1='-8' y1='-558' x2='808' y2='258'/%3E%3Cline x1='-8' y1='-258' x2='808' y2='558'/%3E%3C/g%3E%3Cg stroke='%23410342' stroke-width='6'%3E%3Cline x1='-8' y1='267' x2='808' y2='1083'/%3E%3Cline x1='-8' y1='517' x2='808' y2='1333'/%3E%3Cline x1='-8' y1='-533' x2='808' y2='283'/%3E%3Cline x1='-8' y1='-283' x2='808' y2='533'/%3E%3C/g%3E%3Cg stroke='%233e033f' stroke-width='5'%3E%3Cline x1='-8' y1='292' x2='808' y2='1108'/%3E%3Cline x1='-8' y1='492' x2='808' y2='1308'/%3E%3Cline x1='-8' y1='-308' x2='808' y2='508'/%3E%3Cline x1='-8' y1='-508' x2='808' y2='308'/%3E%3C/g%3E%3Cg stroke='%233b033c' stroke-width='4'%3E%3Cline x1='-8' y1='467' x2='808' y2='1283'/%3E%3Cline x1='-8' y1='317' x2='808' y2='1133'/%3E%3Cline x1='-8' y1='-333' x2='808' y2='483'/%3E%3Cline x1='-8' y1='-483' x2='808' y2='333'/%3E%3C/g%3E%3Cg stroke='%23390339' stroke-width='3'%3E%3Cline x1='-8' y1='342' x2='808' y2='1158'/%3E%3Cline x1='-8' y1='442' x2='808' y2='1258'/%3E%3Cline x1='-8' y1='-458' x2='808' y2='358'/%3E%3Cline x1='-8' y1='-358' x2='808' y2='458'/%3E%3C/g%3E%3Cg stroke='%23360336' stroke-width='2'%3E%3Cline x1='-8' y1='367' x2='808' y2='1183'/%3E%3Cline x1='-8' y1='417' x2='808' y2='1233'/%3E%3Cline x1='-8' y1='-433' x2='808' y2='383'/%3E%3Cline x1='-8' y1='-383' x2='808' y2='433'/%3E%3C/g%3E%3Cg stroke='%23330333' stroke-width='1'%3E%3Cline x1='-8' y1='392' x2='808' y2='1208'/%3E%3Cline x1='-8' y1='-408' x2='808' y2='408'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
		background-attachment: fixed;
        margin: 0;
        font-family: Arial, sans-serif;
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
	
	 .main-content {
        display: flex;
        flex-wrap: wrap;
		margin-top: 100px;
    }
    .column {
        flex: 1;
        padding: 0px;
    }
    .column img {
        width: 700px;
        height: 520px;
    }
    .column.text {
		background-color: #000000;
		background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='100%25' viewBox='0 0 800 800'%3E%3Cg %3E%3Ccircle fill='%23000000' cx='400' cy='400' r='600'/%3E%3Ccircle fill='%23110418' cx='400' cy='400' r='500'/%3E%3Ccircle fill='%23220830' cx='400' cy='400' r='400'/%3E%3Ccircle fill='%23330b47' cx='400' cy='400' r='300'/%3E%3Ccircle fill='%23440f5f' cx='400' cy='400' r='200'/%3E%3Ccircle fill='%23551377' cx='400' cy='400' r='100'/%3E%3C/g%3E%3C/svg%3E");
		background-attachment: fixed;
		background-size: cover;
        color: white;
        padding: 0px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
	 .main-content2 {
        display: flex;
        flex-wrap: wrap;
		margin-top: 100px;
    }
    .column2 {
        flex: 1;
        padding: 0px;
    }
    .column2 img {
        width: 700px;
        height: 520px;
    }
    .column.text2 {
		background-color: #9B08FF;
		background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='100%25' height='100%25' viewBox='0 0 1200 800'%3E%3Cdefs%3E%3ClinearGradient id='a' gradientUnits='userSpaceOnUse' x1='600' y1='25' x2='600' y2='777'%3E%3Cstop offset='0' stop-color='%239B08FF'/%3E%3Cstop offset='1' stop-color='%23EB2FFF'/%3E%3C/linearGradient%3E%3ClinearGradient id='b' gradientUnits='userSpaceOnUse' x1='650' y1='25' x2='650' y2='777'%3E%3Cstop offset='0' stop-color='%23a30cff'/%3E%3Cstop offset='1' stop-color='%23c923fc'/%3E%3C/linearGradient%3E%3ClinearGradient id='c' gradientUnits='userSpaceOnUse' x1='700' y1='25' x2='700' y2='777'%3E%3Cstop offset='0' stop-color='%23ab0fff'/%3E%3Cstop offset='1' stop-color='%23a317f9'/%3E%3C/linearGradient%3E%3ClinearGradient id='d' gradientUnits='userSpaceOnUse' x1='750' y1='25' x2='750' y2='777'%3E%3Cstop offset='0' stop-color='%23b313ff'/%3E%3Cstop offset='1' stop-color='%237c0bf6'/%3E%3C/linearGradient%3E%3ClinearGradient id='e' gradientUnits='userSpaceOnUse' x1='800' y1='25' x2='800' y2='777'%3E%3Cstop offset='0' stop-color='%23bb16ff'/%3E%3Cstop offset='1' stop-color='%23550ce6'/%3E%3C/linearGradient%3E%3ClinearGradient id='f' gradientUnits='userSpaceOnUse' x1='850' y1='25' x2='850' y2='777'%3E%3Cstop offset='0' stop-color='%23c21aff'/%3E%3Cstop offset='1' stop-color='%23350ed5'/%3E%3C/linearGradient%3E%3ClinearGradient id='g' gradientUnits='userSpaceOnUse' x1='900' y1='25' x2='900' y2='777'%3E%3Cstop offset='0' stop-color='%23ca1dff'/%3E%3Cstop offset='1' stop-color='%23190fc5'/%3E%3C/linearGradient%3E%3ClinearGradient id='h' gradientUnits='userSpaceOnUse' x1='950' y1='25' x2='950' y2='777'%3E%3Cstop offset='0' stop-color='%23d121ff'/%3E%3Cstop offset='1' stop-color='%23101fb5'/%3E%3C/linearGradient%3E%3ClinearGradient id='i' gradientUnits='userSpaceOnUse' x1='1000' y1='25' x2='1000' y2='777'%3E%3Cstop offset='0' stop-color='%23d824ff'/%3E%3Cstop offset='1' stop-color='%231133a5'/%3E%3C/linearGradient%3E%3ClinearGradient id='j' gradientUnits='userSpaceOnUse' x1='1050' y1='25' x2='1050' y2='777'%3E%3Cstop offset='0' stop-color='%23de28ff'/%3E%3Cstop offset='1' stop-color='%23124295'/%3E%3C/linearGradient%3E%3ClinearGradient id='k' gradientUnits='userSpaceOnUse' x1='1100' y1='25' x2='1100' y2='777'%3E%3Cstop offset='0' stop-color='%23e52bff'/%3E%3Cstop offset='1' stop-color='%23124d86'/%3E%3C/linearGradient%3E%3ClinearGradient id='l' gradientUnits='userSpaceOnUse' x1='1150' y1='25' x2='1150' y2='777'%3E%3Cstop offset='0' stop-color='%23EB2FFF'/%3E%3Cstop offset='1' stop-color='%23125477'/%3E%3C/linearGradient%3E%3C/defs%3E%3Cg fill-opacity='0.63'%3E%3Crect fill='url(%23a)' width='1200' height='800'/%3E%3Crect fill='url(%23b)' x='100' width='1100' height='800'/%3E%3Crect fill='url(%23c)' x='200' width='1000' height='800'/%3E%3Crect fill='url(%23d)' x='300' width='900' height='800'/%3E%3Crect fill='url(%23e)' x='400' width='800' height='800'/%3E%3Crect fill='url(%23f)' x='500' width='700' height='800'/%3E%3Crect fill='url(%23g)' x='600' width='600' height='800'/%3E%3Crect fill='url(%23h)' x='700' width='500' height='800'/%3E%3Crect fill='url(%23i)' x='800' width='400' height='800'/%3E%3Crect fill='url(%23j)' x='900' width='300' height='800'/%3E%3Crect fill='url(%23k)' x='1000' width='200' height='800'/%3E%3Crect fill='url(%23l)' x='1100' width='100' height='800'/%3E%3C/g%3E%3C/svg%3E");
		background-attachment: fixed;
		background-size: cover;
        color: white;
        padding: 0px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
	footer {
        background-color: #7810A3;
        color: white;
        text-align: left;
        padding: 20px;
		margin-top: 100px;
    }
	 .menu {
			margin-top: 100px;
			background-color: #7810A3;
            display: flex;
            justify-content: space-between;
            padding: 10px;
            overflow-x: auto;
            white-space: nowrap;
			color: white;
        }

        .menu-item {
            flex: 1;
        }

        .heading {
            padding: 10px;
            cursor: pointer;
        }

        .view {
            display: none;
            padding: 10px;
        }

        .active {
            display: block;
        }

.button-85 {
  padding: 0.6em 2em;
  border: none;
  outline: none;
  color: rgb(255, 255, 255);
  background: #111;
  cursor: pointer;
  position: relative;
  z-index: 0;
  border-radius: 10px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  margin-top: 25px;
}

.button-85:before {
  content: "";
  background: linear-gradient(
    45deg,
    #ff0000,
    #ff7300,
    #fffb00,
    #48ff00,
    #00ffd5,
    #002bff,
    #7a00ff,
    #ff00c8,
    #ff0000
  );
  position: absolute;
  top: -2px;
  left: -2px;
  background-size: 400%;
  z-index: -1;
  filter: blur(5px);
  -webkit-filter: blur(5px);
  width: calc(100% + 4px);
  height: calc(100% + 4px);
  animation: glowing-button-85 20s linear infinite;
  transition: opacity 0.3s ease-in-out;
  border-radius: 10px;
}

@keyframes glowing-button-85 {
  0% {
    background-position: 0 0;
  }
  50% {
    background-position: 400% 0;
  }
  100% {
    background-position: 0 0;
  }
}

.button-85:after {
  z-index: -1;
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  background: #222;
  left: 0;
  top: 0;
  border-radius: 10px;
}

@import  url(https://fonts.googleapis.com/css?family=Montserrat);



.text-input{
  
  position: relative;
  margin-top: 50px;
  
  input[type="text"]
  {
    display: inline-block;
    width: 500px;
    height: 40px;
    box-sizing: border-box;
    outline: none;
    border: 1px solid lightgray;
    border-radius: 3px;
    padding: 10px 10px 10px 100px;
    transition: all 0.1s ease-out;
  }
  
  input[type="text"] + label{
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    height: 40px;
    line-height: 40px;
    color: white;
    border-radius: 3px 0 0 3px;
    padding: 0 20px;
    background: #E03616;
    transform: translateZ(0) translateX(0);
    transition: all 0.3s ease-in;
    transition-delay: 0.2s;
  }
  
  input[type="text"]:focus + label{
    transform: translateY(-120%) translateX(0%);
    border-radius: 3px;
    transition: all 0.1s ease-out;
  }
  
  input[type="text"]:focus{
    padding: 10px;
    transition: all 0.3s ease-out;
    transition-delay: 0.2s;
  }
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

<div class="main-content">
	<div class="column text">
		<h1> About Royal Railways </h1>
        <p>Welcome to Royal Railways, where we believe in pursuing perfection in everything we do. At Royal Railways, we are not just a railway company;
		we are a symbol of excellence, reliability, and luxury in the transportation industry. <br/> <br/> 
		Since our inception, we have been committed to providing our passengers with <br/> an unparalleled travel experience that is both comfortable and safe.
		Our dedication to perfection is evident in every aspect of our operations. From our meticulously maintained trains to our highly trained staff, 
		we strive to exceed our passengers' expectations at every turn. Whether you are traveling for business or pleasure, you can trust Royal Railways to
		deliver a journey that is nothing short of exceptional. <br/> <br/>
		But our pursuit of perfection extends beyond our services. We are also committed to being a responsible corporate citizen, minimizing our environmental impact
		and giving back to the communities we serve. Through our sustainable practices and community initiatives, we are working to create a better future for all. <br/> <br/>
		Join us on a journey of excellence. Experience the difference of Royal Railways, where perfection is not just a goal, but a way of life.</p>
    </div>
    <div class="column">
        <img src="Images\Bernina-Express-near-Bernina-Pass-to-Tirano-small.jpg" alt="Image" />
    </div>
</div>

    <form runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="menu">
    <div class="menu-item">
        <h2 class="heading" data-view="itinerary">Itinerary</h2>
        <div id="itinerary-view" class="view">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
            <div class="text-input">
                <asp:TextBox ID="ArrivalStation" runat="server"></asp:TextBox>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="ArrivalStation">Enter Arrival Station</asp:Label>
            </div>
            <div class="text-input">
                <asp:TextBox ID="DestinationStation" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" AssociatedControlID="DestinationStation">Enter Destination Station</asp:Label>
            </div>
            <asp:Button ID="SearchButton" runat="server" CssClass="button-85" Text="Search" OnClick="SearchButton_Click" />
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="myGridClass">
             <Columns>
        <asp:BoundField DataField="Arrival" HeaderText="Arrival Station" />
        <asp:BoundField DataField="Destination" HeaderText="Destination Station" />
        <asp:BoundField DataField="TravelDate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" />
        <asp:BoundField DataField="TravelTime" HeaderText="Time" />
        <asp:BoundField DataField="Available_Seats" HeaderText="Available Seats" />
    </Columns>
</asp:GridView>
             </ContentTemplate>
         </asp:UpdatePanel>
        </div>
    </div>

    <div class="menu-item">
        <h2 class="heading" data-view="v-ride">View Ride</h2>
        <div id="v-ride-view" class="view">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
            <div class="text-input">
                <asp:TextBox ID="Destination_Station" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" AssociatedControlID="Destination_Station">Enter Destination Station</asp:Label>
            </div>
            <asp:Button ID="PurchaseButton" runat="server" CssClass="button-85" Text="View" OnClick="ViewButton_Click" />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="myGridClass">
             <Columns>
        <asp:BoundField DataField="Arrival" HeaderText="Arrival Station" />
        <asp:BoundField DataField="Destination" HeaderText="Destination Station" />
        <asp:BoundField DataField="TravelDate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}" />
        <asp:BoundField DataField="TravelTime" HeaderText="Time" />
        <asp:BoundField DataField="Available_Seats" HeaderText="Available Seats" />
    </Columns>
</asp:GridView>
             </ContentTemplate>
         </asp:UpdatePanel>
 </div>
    </div>

    <div class="menu-item">
        <h2 class="heading" data-view="schedule">Schedule</h2>
        <div id="schedule-view" class="view">
            <asp:UpdatePanel ID="ScheduleUpdatePanel" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
            <div class="text-input">
                <asp:Label ID="Label4" runat="server" Text="Select Start Date"></asp:Label>
                <asp:Calendar ID="StartDateCalendar" runat="server" CssClass="e-calendar" OnSelectionChanged="StartDateCalendar_SelectionChanged"></asp:Calendar>
            </div>
            <div class="text-input">
                <asp:Label ID="Label5" runat="server" Text="Select End Date"></asp:Label>
                <asp:Calendar ID="EndDateCalendar" runat="server" CssClass="e-calendar" OnSelectionChanged="EndDateCalendar_SelectionChanged"></asp:Calendar>
            </div>
            <asp:Button ID="ViewScheduleButton" runat="server" CssClass="button-85" Text="View Schedule" OnClick="ViewScheduleButton_Click" />
             <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="myGridClass">
         <Columns>
             <asp:BoundField DataField="Arrival" HeaderText="Arrival Station" />
             <asp:BoundField DataField="Destination" HeaderText="Destination Station" />
             <asp:BoundField DataField="TravelDate" HeaderText="Departure Date" DataFormatString="{0:MM/dd/yyyy}" />
             <asp:BoundField DataField="TravelTime" HeaderText="Travel Time" />
             <asp:BoundField DataField="Available_Seats" HeaderText="Available Seats" />
         </Columns>
     </asp:GridView>
        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
        </div>
    </div>
    </div>
</form>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const headings = document.querySelectorAll('.heading');
            const views = document.querySelectorAll('.view');

            headings.forEach(function (heading) {
                heading.addEventListener('click', function () {
                    // Hide all views
                    views.forEach(function (view) {
                        view.classList.remove('active');
                    });

                    // Show only the clicked view
                    const viewId = this.getAttribute('data-view');
                    document.getElementById(viewId + '-view').classList.add('active');
                });
            });
        });
    </script>

<div class="main-content2">
	<div class="column text2">
		<h1 style = "color:white;"> Our Sustainable Approach </h1>
        <p>Royal Railways is a trailblazer in sustainable development and clean transportation, prioritizing environmental stewardship in its operations.
		The company's approach to sustainability encompasses various facets, including energy efficiency, renewable energy adoption, and waste management. 
		By investing in modern, energy-efficient locomotives and trains,
		Royal Railways not only reduces its carbon footprint but also sets a precedent for the industry. 
		Furthermore, the gradual transition to renewable energy sources like solar power underscores its commitment to clean energy and a greener future. <br/><br/>
		In addition to its operational practices, Royal Railways also focuses on green infrastructure development.
		This includes eco-friendly railway stations and facilities that are designed to minimize environmental impact and enhance sustainability. 
		Moreover, the company actively engages with passengers to raise awareness about sustainable travel practices,
		encouraging them to participate in the journey towards a cleaner, more sustainable future. 
		Through collaboration, innovation, and a steadfast commitment to sustainability, 
		Royal Railways exemplifies how companies can lead the way in promoting environmental responsibility in the transportation sector.</p>
    </div>
    <div class="column2">
        <img src="Images\Track-workers-working-on-tracks-aspect-ratio-800-557.jpg" alt="Image"/>
    </div>
</div>


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