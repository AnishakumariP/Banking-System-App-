<%@page import="com.nit.model.Bank"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Customer Data</title>
<link href="jspCommon.css" rel="stylesheet">
</head>
<body> 
<header>
		<div class="logo">
			<img src="img/axis.jpg">
		</div>
		<div class="title">
			<h1>Open-Axis Bank</h1>
			<p>Extra Ordinary Service</p>
		</div>
	</header>
	<nav>
		<a href="newUser.html">NEW ACCOUNT</a> 
		<a href="checkBalance.html">BALANCE</a>
		<a href="deposit.html">DEPOSIT</a> 
		<a href="withdraw.html">WITHDRAW</a>
		<a href="transfer.html">TRANSFER</a> 
		<a href="close.html">CLOSE A/C</a> 
		<a href="welcome.html">ABOUT US</a>
	</nav>
	<div class="container">
		<div class="service">
			<h1>Services</h1>
			<p>
				<b>1. Online Account Management: </b> Customers can easily
				open, manage, and close accounts through a secure online platform.
				 <br>
				<b>2. Balance Inquiry and Transaction History</b>  <br>
				<b>3. Fund Transfers</b> <br>
				<b>4. Deposit Services</b> <br>
				<b>5. Withdrawal Services</b> 
			</p>
		</div>
		<div class="result">
			<!--Bank bank = (Bank) request.getAttribute("save");"); %> -->
			<table border="1">
				<tr>
					<th>Account No.</th>
					<th>Username</th>
					<th>Password</th>
					<th>Holder Name</th>
					<th>Amount</th>
					<th>Email</th>
					<th>Phone No</th>
					<th>Address</th>
				</tr>

				<tr>

					<td>${save.accountno }</td>
					<td>${save.username }</td>
					<td>${save.password }</td>
					<td>${save.holder_name }</td>
					<td>${save.amount }</td>
					<td>${save.email }</td>
					<td>${save.mobile }</td>
					<td>${save.address }</td>

				</tr>

			</table>
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