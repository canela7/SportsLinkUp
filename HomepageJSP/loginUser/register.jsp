<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="./HomepageContent/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="icon" href="./HomepageContent/img/SportLinkUp.jpg" />
<!-- Custom Fonts -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link
	href="./HomepageContent/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<link
	href="./HomepageContent/vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">


<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">


<!-- Custom CSS -->
<link rel="stylesheet" type="text/css"
	href="./HomepageContent/css/stylish-portfolio.css" />
<style>
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

.button {
	background-color: green;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}
</style>
<script>
	function myFunction() {
		var x = document.getElementById("myInput");
		if (x.type === "password") {
			x.type = "text";
		} else {
			x.type = "password";
		}
	}
</script>
<title>Register</title>
</head>
<body>
	<div class="container">
		<section class="content-section bg-primary text-white">
		<div class="container text-center">
			<h1 style="font-size: 75px">
				<a href="Homepage" style="color: white">SportsLinkUp</a>
			</h1>
		</div>
		</section>

		<div class="well" align="center">
			<form action="Register" method="post">
				<h1>Register</h1>
				<br />
				<c:if test="${not empty alreadyExist}">
					<p class="lead text-danger">
						<code>${alreadyExist}</code>
					</p>
				</c:if>
				<h3>Your Desired Username:</h3>
				<input type="text" placeholder="Enter Username" name="username" required/> <br />
				<h3>Password:</h3>
				<input type="password" placeholder="Enter Password" name="password" id="myInput" required/>
				<strong style="font-size:20px">Show Password </strong>
				<input type="checkbox" onclick="myFunction()" />
				<br /> <input class="button" type="submit" name="register"
					value="Register" />
			</form>
		</div>
	</div>

</body>
</html>