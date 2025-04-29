<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="css/style5CU.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">
</head>
<body>

	  <div class="contact-us">
        <h1>Contact Us</h1>
        <p>We're here to help! If you have any questions, feedback or need any assistance, 
            please reach out to us by filling out the below form </p>
        <form action="#" method="post">
            <p>Name</p>
            <input type="text" name="name" placeholder="Full Name" required>

            <p>Email</p>
            <input type="email" name="email" placeholder="Frequently used Email" required>

            <p>Phone Number</p>
            <input type="tel" name="phone" placeholder="Phone Number" required>

            <p>Inquiry Type</p>
            <select name="inquiry-type">
                <option value="general"> General Support</option>
                <option value="feedback">FeedBack</option>
                <option value="technical">Technical Issue</option>
            </select>


            <p>Message</p>
            <textarea name="message" placeholder="Type your message here..." raws="5" required></textarea>


            <button type="submit">Submit Message</button> 

        </form>
        <div class="direct-contact">
            <p>If you'd like to speak to us directly , Please do feel free to call us on:</p>
            <h2><a href="tel:+941296698">+94 129 6698</a></h2>

        </div>
    </div>
	

</html>