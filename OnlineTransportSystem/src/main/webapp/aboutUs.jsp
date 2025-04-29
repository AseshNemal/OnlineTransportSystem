<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - RidePlus</title>
    <link rel="stylesheet" type="text/css" href="css/aboutUs.css">

</head>
<body>
	<jsp:include page="views/header.jsp"></jsp:include>
    <div class="container">
        
        <section class="intro">
            <h1>About RidePlus</h1>
            <p>RidePlus is a leading online transport platform that connects drivers and passengers to provide convenient, safe, and reliable rides.
                Whether you're commuting to work, exploring the city, or simply need a ride, RidePlus has you covered.
                 Our mission is to make transportation easy, affordable, and accessible to everyone.</p>
        </section>

        
        <section class="image-gallery">
            <div class="gallery-item">
                <img src="images/driverimg.png" alt="Driver Image">
                <p>Our dedicated drivers ensure safety and comfort on every journey.</p>
            </div>

            <div class="gallery-item">
                <img src="images/Fleetimg.png" alt="Fleet Image">
                <p>We offer a wide range of vehicles including cars, vans, and three-wheelers.</p>
            </div>

            <div class="gallery-item">
                <img src="images/tecimg.png" alt="Technology Image">
                <p>With the lastest technology, we bring you a seamless travel experience.</p>
            </div>
        </section>

        
        <section class="values">
            <h2>Our Values</h2>
            <ul>
                <li>Customer-first approach</li>
                <li>Innovation-driven solutions</li>
                <li>Safety and reliability</li>
                <li>Environmental responsibility</li>
            </ul>
        </section>

        
        <section class="fleet-section">
            <h2>Our Fleet</h2>
            <p>We offer a wide range of vehicles to suit your transportation needs, including cars, vans, motorcycles, buses, and three-wheelers. Whether you're traveling alone or in a group, we have the right vehicle for you.</p>
            
            <div class="fleet-gallery">
                <div class="fleet-item">
                    <img src="images/cars.png" alt="Car">
                    <h3>Cars</h3>
                    <p>Comfortable and modern cars for small groups and individuals.</p>
                </div>
        
                <div class="fleet-item">
                    <img src="images/vans.png" alt="Van">
                    <h3>Vans</h3>
                    <p>Spacious vans for group travel and family trips.</p>
                </div>
        
                <div class="fleet-item">
                    <img src="images/bike.png" alt="Motorcycle">
                    <h3>Motorcycles</h3>
                    <p>Quick and efficient motorcycles for city commutes.</p>
                </div>
        
                <div class="fleet-item">
                    <img src="images/bus.png" alt="Bus">
                    <h3>Buses</h3>
                    <p>Large buses for group travel, perfect for tours and events.</p>
                </div>
        
                <div class="fleet-item">
                    <img src="images/tuk1.png" alt="Three Wheel">
                    <h3>Three-Wheelers</h3>
                    <p>Convenient three-wheelers for quick and affordable trips.</p>
                </div>
            </div>
        </section>
        

       
        <section class="mission-vision">
            <h2>Our Mission</h2>
            <p>To revolutionize the transport industry by providing innovative solutions and world-class customer service.</p>

            <h2>Our Vision</h2>
            <p>To be the most trusted and widely used transport platform, enhancing mobility across the globe.</p>
        </section>


        
        <section class="customer-feedback">
            <h2>What Our Customers Say</h2>
            <div class="feedback-container">
                <div class="feedback-item">
                    <p>"My daily journey is so much easier thanks to RidePlus! The service is always reliable while the drivers are pleasant.Highly Recommended!"</p>
                    <h4>- Randimal</h4>
                </div>
                
                <div class="feedback-item">
                    <p>"I enjoy RidePlus's reliability. The costs are reasonable and the software is simple to use. Definitely my first choice for travel!"</p>
                    <h4>- Uditha</h4>
                </div>
                
                <div class="feedback-item">
                    <p>"Outstanding customer service and assistance. I had no trouble scheduling my transportation and arriving at my destination on schedule."</p>
                    <h4>- Lithila</h4>
                </div>
            </div>
        </section>
    </div>
    <jsp:include page="views/footer.jsp"></jsp:include>		
</body>
</html>
	
</body>
</html>