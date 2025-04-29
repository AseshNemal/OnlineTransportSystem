<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<script src="js/home.js"></script>
	<title>RidePlus</title>
	<style type="text/css">
	</style>
</head>
<body>
	
	<div class = "div-1">
		<ul id="naviUL">
		
			<li class="naviLI" id="ID-1"><b>RidePlus</b></li>
			<li class ="naviLI"><a href="#" class="a1">Home</a></li>
			<li class ="naviLI"><a href="passengerLogin.jsp" class="a1">Ride</a></li>
			<li class ="naviLI"><a href="passengerLogin.jsp" class="a1">Trip</a></li>
			<li class ="naviLI"><a href="login.jsp" class="a1">Drive</a></li>
			<li class ="naviLI"><a href="passengerLogin.jsp" class="a1">Available Cabs</a></li>
			<li class ="naviLI"><a href="aboutUs.jsp" class="a1">About</a></li>

			<li class ="naviLIF"><a href="contactUs.jsp" class="a1">Help</a></li>
			<li class ="naviLIF"><a href="passengerLogin.jsp" class="a1">Login</a></li>
			<li class ="naviLIF"><a href=passengerRegister.jsp class="a1">Sign up</a></li>	
			
		</ul>
		<div class="div-2">

		<div id="ID-4">

			<p id="demo"></p>

			<h2>Go Anywhere With<br>RidePlus</h2>

			<p>Request Ride, Hop In And Go</p>
		</div>

		<form id="ID-5">
			<input class="input" type="text" name="Location" placeholder="Location"><br>
			<input class="input" type="text" name="Destination" placeholder= "Destination"><br><br>
			<a href="passengerLogin.jsp"><button class="button">See Prices</button></a>
		</form>

		</div>

		<div id="ID-2">
			<img id = "ID-3" src="images/image-1.jpeg">
			
		</div>





	</div>

	<center><h1>Welcome to RidePlus</h1></center>
	<center><p>At RidePlus, we offer a wide range of vehicles to meet your 
	every transport need, from quick city rides to large cargo moves.<br> Whether you’re commuting through the city
	 or transporting goods across the region, our reliable and cost-effective services are here for you.</p></center>


<center><h3>RidePlus's most popular ride options</h3></center>

<div class="department">
	<div class="ridelist-b">
	<button class=ride-b type="button" id="btn1" onclick="loadData('btn1')">RidePlus - Comfort</button><br>

   <button class=ride-b type="button" id="btn2" onclick="loadData('btn2')">RidePlus - Black</button><br>

   <button class=ride-b type="button" id="btn3" onclick="loadData('btn3')">RidePlus - WAV</button><br>

   <button class=ride-b type="button" id="btn4" onclick="loadData('btn4')">RidePlus - Share</button><br>

   <button class=ride-b type="button" id="btn5" onclick="loadData('btn5')">RidePlus - Reserve</button><br>

   <button class=ride-b type="button" id="btn6" onclick="loadData('btn6')">RidePlus - Hourly</button><br>

   <button class=ride-b type="button" id="btn7" onclick="loadData('btn7')">RidePlus - Rent</button><br>
	</div>

	<div class="ridelist-b">
		
		<img class="depIMG" id="depIMG" src="images/goX.webp">
		<h4 id="depH">RidePlus - Economic</h4>
		<p id="depP">Affordable rides, all to yourself</p>
		
	</div>

	
	

</div><br><br><br>


<hr>

<div class="op">



<div class="Operations">
	<h2>Our Operations - Existing</h2>
	
	<p>We are a proud homegrown technology solutions provider specializing in mobility solutions, striving towards alleviating mobility struggles we all face in our day to day lives. As a company, it is a privilege
	 to be a forerunner in this domain, as we understand and can relate to the needs of our people intimately, and thereby have the unique advantage of developing tailor-made solutions that are safe, 
	sustainable and swift to the public.<br><br>We continue providing the best of the tech, evaluating ourselves each step of the way
</p></div>
<div class="Operations">

	<img class="OpIMG" id="depIMG" src="images/img-operations.png">

</div></div>


<hr>
<center><h3>Our Services:</h3></center>
	<table>
		<tr><th class="th-1">&#x2022; Mini Cars - </th><td class ="td-1">Mini cars are perfect for quick, efficient city rides. Whether you’re traveling alone or with a companion, these compact cars offer a smooth and economical ride, especially for short distances. Ideal for navigating busy streets and finding parking easily.</td></tr>
		<tr><th class="th-1">&#x2022; Cars - </th><td class ="td-1">Our cars offer comfort and convenience for small families or groups of up to four passengers. They’re great for longer trips, city outings, or family errands, providing enough space for passengers and light luggage. Enjoy a comfortable journey with air conditioning and modern amenities.</td></tr>
		<tr><th class="th-1">&#x2022; Cabs - </th><td class ="td-1">A versatile option, our cabs are ideal for rural or off-road areas, combining passenger seating with space for light cargo. Whether you need to transport goods or travel to less accessible areas, our cabs offer the flexibility you need. Perfect for construction sites, farms, or transporting equipment.</td></tr>
		<tr><th class="th-1">&#x2022; Vans - </th><td class ="td-1">Need to travel with a large group? Our vans can accommodate 8-10 passengers with plenty of room to stretch out. Ideal for family road trips, group tours, or airport transfers with lots of luggage. Spacious and designed for comfort on long rides.</td></tr>
		<tr><th class="th-1">&#x2022;  Light Trucks (7ft) - </th><td class ="td-1">These 7-foot trucks are perfect for small moves or deliveries, such as furniture, appliances, or equipment. With ample cargo space and easy maneuverability, they are great for businesses or individuals looking to transport medium-sized goods locally or over short distances.</td></tr>
		<tr><th class="th-1">&#x2022;  Movers (10ft) - </th><td class ="td-1">For large-scale moving or transporting heavy items, our 10-foot movers are the best option. Whether you’re relocating a house or need to move bulky items, these trucks offer extra space and power for long-distance or local heavy-duty transportation. Ideal for full-scale house moves or business relocations.</td></tr>
	
	</table><br><br><br>

		

		<div class="vehi-class">


			<div class="div-class-1">
				<img class="Vehicle" src="images/miniCar.png">
				<ul>
					<li><b>Type</b>- Mini Car</li>
					<li> <b>Details</b> 
					<ul>
						<li>Ideal for 1-2 passengers</li>
						<li>Compact and fuel-efficient</li>
						<li>Suitable for city rides or short distances</li>
					</ul></li>

				</ul>
			</div>


			<div class="div-class-1">
				<img class="Vehicle" src="images/car.png">
				<ul>
					<li><b>Type</b>- Car</li>
					<li> <b>Details</b> 
					<ul>
						<li>Accommodates up to 4 passengers</li>
						<li>Comfortable for long rides</li>
						<li>Perfect for small families or groups</li>
					</ul></li>

				</ul>
			</div>

			<div class="div-class-1"><br><br><br>
				<img class="Vehicle" src="images/cab.png"><br><br>
				<ul>
					<li><b>Type</b>- Cab</li>
					<li> <b>Details</b> 
					<ul>
						<li>Pickup vehicle with cargo space</li>
						<li>Great for transporting light goods</li>
						<li>Suitable for rural areas or off-road travel</li>
					</ul></li>

				</ul>
			</div>

			<div class="div-class-1"><br><br><br><br>
				<img class="Vehicle" src="images/van.png">
				<ul>
					<li><b>Type</b>- Van</li>
					<li> <b>Details</b> 
					<ul>
						<li>Fits 8-10 passengers</li>
						<li>Spacious and ideal for group travel</li>
						<li>Good for airport transfers or road trips</li>
					</ul></li>

				</ul>
			</div>

			<div class="div-class-1">
				<img class="Vehicle" src="images/lightL.png">
				<ul>
					<li><b>Type</b>- Light (7ft)</li>
					<li> <b>Details</b> 
					<ul>
						<li>Small truck with 7ft cargo space</li>
						<li>Perfect for moving small furniture or equipment</li>
						<li>Suitable for local deliveries</li>
					</ul></li>

				</ul>
			</div>

			<div class="div-class-1"><br>
				<img class="Vehicle" src="images/mover.png"><br><br>
				<ul>
					<li><b>Type</b>- Mover (10ft)</li>
					<li> <b>Details</b>  
					<ul>
						<li>Large truck with 10ft cargo space</li>
						<li>Ideal for house moving or large goods</li>
						<li>Suitable for long-distance transportation of heavy loads</li>
					</ul></li>

				</ul>
			</div>

		</div>
		<br><br><br>
		




	<footer>
		<div class="F-div-1">
			<div class="F-div-2">
				<h3>RidePlus</h3>
				<a href="#">Visit Help Center</a><br>
				
			</div>


			<div class="F-div-3">
				<h3>Quick Links</h3>
				<a href="#">Home</a><br>
				<a href="contactUs.jsp">Privacy Policy</a><br>
				<a href="aboutUs.jsp">Blog</a><br>
				<a href="aboutUs.jsp">About Us</a><br>
				<a href="contactUs.jsp">FAQ</a>
			</div>


			<div class="F-div-4">
				<h3>Products</h3>
				<a href="passengerLogin.jsp">Ride</a><br>
				<a href="login.jsp">Drive</a><br>
				<a href="passengerLogin.jsp">Deliver</a><br>
				<a href="passengerLogin.jsp">Trip</a><br>
				<a href="contactUs.jsp">FAQ</a>
			</div>

			<div class="F-div-5">
				<h3>Other</h3>
				<a href="contactUs.jsp">Sefty</a><br>
				<a href="aboutUs.jsp">Sustainability</a><br>
			</div>

			<div class="F-div-6">
			<h3>Support</h3>
			<a href="#">Contact US</a>
		</div>







			


		</div>		

	</footer>






	

</body>
</html>
<p id="demo"></p>

<script>

    var today = new Date()
    var curHr = today.getHours()

    if (curHr >= 0 && curHr < 6) {
        document.getElementById("demo").innerHTML = 'What are you doing that early?';
    } else if (curHr >= 6 && curHr <= 12) {
        document.getElementById("demo").innerHTML = 'Good Morning';
    } else if (curHr >= 12 && curHr < 17) {
        document.getElementById("demo").innerHTML = 'Good Afternoon';
    } else {
        document.getElementById("demo").innerHTML = 'Good Evening';
    }
    
    
    

    function loadData(name){
    	if (name=="btn1"){
    		document.getElementById("depH").innerHTML="RidePlus - Comfort";
    		document.getElementById("depIMG").src="images/comfort.webp";
    		document.getElementById("depP").innerHTML="Newer cars with extra legroom";
    	}

    	else if (name=="btn2"){
    		document.getElementById("depH").innerHTML="RidePlus - Black";
    		document.getElementById("depIMG").src="images/black.webp";
    		document.getElementById("depP").innerHTML="Premium rides in luxury cars";
    	}

    	else if (name=="btn3"){
    		document.getElementById("depH").innerHTML="RidePlus - WAV";
    		document.getElementById("depIMG").src="images/WAV.webp";
    		document.getElementById("depP").innerHTML="Rides in wheelchair-accessible vehicles";
    	}

    	else if (name=="btn4"){
    		document.getElementById("depH").innerHTML="RidePlus - Share";
    		document.getElementById("depIMG").src="images/share.webp";
    		document.getElementById("depP").innerHTML="Share the ride with up to one co-rider at a time";
    	}

    	else if (name=="btn5"){
    		document.getElementById("depH").innerHTML="RidePlus - Reserve";
    		document.getElementById("depIMG").src="images/Reserve.webp";
    		document.getElementById("depP").innerHTML="Book a ride in advance";
    	}

    	else if (name=="btn6"){
    		document.getElementById("depH").innerHTML="RidePlus - Hourly";
    		document.getElementById("depIMG").src="images/Hourly.webp";
    		document.getElementById("depP").innerHTML="As many stops as you need in one car";
    	}

    	else if (name=="btn7"){
    		document.getElementById("depH").innerHTML="RidePlus - Rent";
    		document.getElementById("depIMG").src="images/rent.webp";
    		document.getElementById("depP").innerHTML="Pick a car. See the price. Get moving.";
    		}
        
        else{
        	{"invalid"}
        }

    }

</script>

