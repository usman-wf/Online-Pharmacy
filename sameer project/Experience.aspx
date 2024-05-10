<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Experience.aspx.cs" Inherits="Railway_Management_System.Experience" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Experience</title>
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
		padding: 50px;
        width: 700px;
        height: 520px;
    }
    .column.text {
        color: white;
        padding: 20px;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
	footer {
        background-color: #7810A3;
        color: white;
        text-align: left;
        padding: 20px;
		margin-top: 100px;
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

<h1 style="text-align:center; padding:40px;">Experience Perfection: Your Ticket to Unmatched Excellence</h1>

<div class="main-content">
	<div class="column text">
		<h1> Embark on a Journey Beyond Speed: Where Luxury Meets Landscape</h1>
        <p>Royal Railways' fast-moving trains are among the elite few that can reach speeds of up to 350 mph, setting them apart from conventional train services.<br/>
		This remarkable speed not only reduces travel time but also enhances the thrill of the journey, providing passengers with an exhilarating 
		and unforgettable experience.</p>
    </div>
    <div class="column">
        <img src="Images\shutterstock_1672556236-ezgif.com-webp-to-jpg-converter.jpg" alt="Fast Train"/>
    </div>
</div>

<div class="main-content">
	<div class="column">
        <img src="Images\highend-train-with-leather-seats-fine-dining-luxurious-bath-experience_124507-107589.jpg" alt="Fine Dining" />
    </div>
	<div class="column text">
		<h1> Taste the Journey: Indulge in 5-Star Dining on Rails</h1>
        <p>
Royal Railways' dining facilities redefine the onboard culinary experience, offering passengers a journey of gastronomic delight. <br/>
 From gourmet meals prepared by top chefs to impeccable service in elegant dining cars, every aspect of the dining experience is crafted to perfection. <br/>
 Passengers can savor a wide array of exquisite dishes, carefully curated to reflect the local flavors and culinary traditions of the regions traversed. <br/>
 The ambiance of the dining cars, with their luxurious décor and panoramic views, adds to the charm, creating a dining experience that is both memorable and unique. <br/>
Whether enjoying a leisurely breakfast as the countryside rolls by or indulging in a sumptuous dinner under the stars, dining on Royal Railways is an experience that 
lingers long after the journey ends.</p>
    </div>
</div>

<div class="main-content">
	<div class="column text">
		<h1> Journey in Bliss: Where Every Cabin Feels Like Home</h1>
        <p>Royal Railways' cabins redefine the notion of comfort and relaxation, offering passengers a haven on the move.  <br/>
		Each cabin is a sanctuary of luxury, designed to provide a peaceful retreat amidst the journey's excitement. <br/>
		From plush bedding to thoughtful amenities, every detail is tailored to enhance the passenger's comfort. <br/>
		The cabins' cozy ambiance, coupled with the gentle rhythm of the train, creates a soothing environment that is perfect for unwinding. <br/>
		Whether traveling solo or with family, the cabins offer a private oasis where passengers can relax, recharge, and make memories that last a lifetime.</p>
    </div>
    <div class="column">
        <img src="Images\230302093759-01-royal-scotsman-belmond-suites.jpg" alt="Comfortable Cabins"/>
    </div>
</div>

<h1 style="padding:40px; color:white"> Destinations </h1>

<div class="main-content">
	<div class="column">
        <img src="Images\Blog-BANNER-25th-Jan-1-1080x700-ezgif.com-webp-to-jpg-converter.jpg" alt="Lahore" />
    </div>
	<div class="column text">
		<h1> Discover Lahore: Where Every Street Tells a Story</h1>
        <p> Visiting Lahore is a journey through time, where the vibrant present meets a rich, storied past. 
 This city, steeped in history and culture, offers a glimpse into Pakistan's heritage unlike any other. <br/>
 From the majestic Lahore Fort to the bustling streets of the Walled City, every corner is a testament to the city's resilience and splendor. <br/>
 Lahore's cuisine is a culinary adventure in itself, with flavors that tantalize the taste buds and leave a lasting impression. <br/>
 Beyond its historical and gastronomic wonders, Lahore is a city of warmth and hospitality, where visitors are welcomed with open arms. <br/>
 A visit to Lahore is not just a trip; it's an experience that lingers in the heart and soul.</p>
    </div>
</div>

<div class="main-content">
	<div class="column text">
		<h1>Experience Islamabad: Where Modernity Meets Tradition</h1>
        <p>Visiting Islamabad offers a unique blend of modernity and natural beauty.
		As the capital of Pakistan, it's a city of contrasts, where modern architecture coexists with lush greenery and picturesque landscapes. <br/>
		The city's well-planned layout and peaceful atmosphere make it a haven for travelers seeking a break from the hustle and bustle of daily life. <br/>
		Islamabad is also home to a rich cultural heritage, with museums, art galleries, and cultural centers that showcase Pakistan's history and traditions.<br/>
		Whether you're exploring the Margalla Hills National Park, visiting the iconic Faisal Mosque, or simply enjoying a stroll in one of the city's many parks, 
		Islamabad offers a refreshing and unforgettable experience for visitors.</p>
    </div>
    <div class="column">
        <img src="Images\925895_9539798_Islamabad2_akhbar.jpg" alt="Islamabad"/>
    </div>
</div>

<div class="main-content">
	<div class="column">
        <img src="Images\Karachi-Pakistan-ezgif.com-webp-to-jpg-converter.jpg" alt="Karachi" />
    </div>
	<div class="column text">
		<h1>Karachi Awaits: Your Gateway to Pakistan's Heartbeat</h1>
        <p>Visiting Karachi offers a dynamic and diverse experience that reflects the essence of Pakistan's culture and commerce.
		As the country's largest and most populous city, Karachi is a melting pot of cultures, languages, and traditions. <br/>
		Its vibrant streets are alive with the hustle and bustle of daily life, offering a glimpse into the heart of Pakistan's urban culture. <br/>
		Karachi's rich history is evident in its architecture, from colonial-era buildings to modern skyscrapers, showcasing the city's evolution over time.<br/>
		The city's culinary scene is equally diverse, with a wide range of flavors and dishes to tantalize the taste buds.<br/>
		Whether you're exploring the historic sites of the old city, soaking in the sun at Clifton Beach, or sampling the local street food,
		Karachi promises an exciting and unforgettable experience for visitors.</p>
    </div>
</div>

<h1 style="padding:40px; color:white"> And Many More </h1>

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
