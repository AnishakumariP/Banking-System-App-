<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	color: #333;
	margin: 0;
	padding: 0;
}

nav {
	display: flex;
	justify-content: space-around;
	align-items: center;
	color: black;
	padding: 20px;
	background-color: #3b3b3b;
	height: 200px;
}

.logo {
	width: 50%;
}

.logo img {
	margin-left: 70px;
	width: 200px;
	height: 200px;
	border: 1px solid white;
	border-radius: 50%;
}

.title {
	width: 50%;
	text-align: left;
}

.title h1 {
	color: #C63663;
	font-size: 35px;
	margin: 0;
	padding: 0;
}

.title p {
	margin: 0;
	padding: 0;
	color: #C24C70;
	font-size: 20px;
}

.container {
	padding: 20px;
}

.about h1 {
	color: #ff007f; /* Pink color */
}

.about p {
	line-height: 1.6;
	font-size: 18px;
}

.bank {
	margin-top: 20px;
}

.bank a {
	display: inline-block;
	background-color: #ff007f; /* Pink color */
	color: white;
	padding: 10px 20px;
	text-decoration: none;
	border-radius: 5px;
	font-size: 18px;
}

.bank a:hover {
	background-color: #cc0066; /* Darker pink */
}

footer {
	background-color: #3b3b3b;
	color: white;
	padding: 20px;
	margin-top: 20px;
}

.footer-container {
	display: flex;
	justify-content: space-between;
	align-items: flex-start;
	flex-wrap: wrap;
}

.footer-container div {
	margin-bottom: 20px;
}

.footer-container h3 {
	color: #ff007f; /* Pink color */
}

.social-media a {
	display: inline-block;
	margin-right: 10px;
}

.social-media img {
	width: 30px;
	height: auto;
	filter: grayscale(100%);
}

.social-media img:hover {
	filter: none;
}

.legal-info a {
	display: block;
	color: white; /* Pink color */
	text-decoration: none;
	margin-bottom: 5px;
}

.legal-info a:hover {
	text-decoration: underline;
}

.footer-bottom {
	text-align: center;
	border-top: 1px solid #ff007f; /* Pink color */
	padding-top: 10px;
	margin-top: 10px;
}

.footer-bottom p {
	margin: 0;
}
</style>
</head>
<body>
	<nav>
		<div class="logo">
			<img src="img/axis.jpg">
		</div>
		<div class="title">
			<h1>Open-Axis Bank</h1>
			<p>Extra Ordinary Service</p>
		</div>
	</nav>
	<div class="container">
		<div class="about">
			<h1>Welcome to Open-Axis Bank</h1>
			<p>
				Welcome to Open-Axis Bank, where innovation meets trust. Founded
				with a vision to revolutionize the banking experience, we are
				committed to providing a seamless, secure, and personalized
				financial journey for every customer. <br>
				<br> At Open-Axis Bank, we believe that banking should be more
				than just transactions—it should empower you to achieve your dreams.
				Whether you're saving for the future, investing in your passions, or
				managing your daily expenses, we offer a comprehensive suite of
				financial products and services tailored to your needs. <br>
				<br> Our state-of-the-art digital platform ensures that you can
				access your accounts, make payments, and manage your finances
				anytime, anywhere. We combine cutting-edge technology with
				human-centric customer service to deliver an experience that is both
				efficient and empathetic. <br>
				<br>
			</p>
		</div>
		<div class="bank">
			<a href="welcome.html">Go to Open-Axis Bank</a>
		</div>
	</div>
	<footer>
		<div class="footer-container">
			<div class="contact-info">
				<h3>Contact Us</h3>
				<p>Email: support@openaxisbank.com</p>
				<p>Phone: +1 (800) 123-4567</p>
				<p>Address: 123 Bank Street, City, Country</p>
			</div>
			<div class="social-media">
				<h3>Follow Us</h3>
				<a href="#"><img src="img/facebook.png" alt="Facebook"></a> 
				<a href="#"><img src="img/twitter.png" alt="Twitter"></a> 
				<a href="#"><img src="img/linkedin.png" alt="LinkedIn"></a>
			</div>
			<div class="legal-info">
				<h3>Legal</h3>
				<a href="terms.html">Terms of Service</a> 
				<a href="privacy.html">Privacy Policy</a>
			</div>
		</div>
		<div class="footer-bottom">
			<p>&copy; 2024 Open-Axis Bank. All rights reserved.</p>
		</div>
	</footer>
</body>
</html>