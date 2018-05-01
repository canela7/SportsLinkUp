<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<meta name="viewport" content="width=device-width, initial-scale=1">

<title>View Basketball Event</title>

<!-- Bootstrap Core CSS -->
<link href="./HomepageContent/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

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
</head>

<body id="page-top">
	<!-- Navigation -->
	<a class="menu-toggle rounded" href="#"> <i class="fa fa-bars"></i>
	</a>
	<nav id="sidebar-wrapper">
		<ul class="sidebar-nav">
			<li class="sidebar-brand"><a class="js-scroll-trigger"
				href="#page-top">SportsLinkUp</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#contact">Contact</a></li>
		</ul>
	</nav>


	<!-- Call to Action -->
	<section class="content-section bg-primary text-white">
		<div class="container text-center">
			<h1 style="font-size: 75px">
				<a href="Homepage" style="color: white">SportsLinkUp</a>
			</h1>
		</div>
	</section>


	<!-- Getting the Description Action -->
    <c:set var="userAddress" value="${entry.address}" />
    <!-- <c:out value="${userAddress}" /> -->
    <c:set var="userAddressModified"
        value="${fn:replace(userAddress, \" \", \"+\")}" />
    <!-- <c:out value="${userAddressModified}" /> -->
    
	<div class="container">
		<div class="well" align="center">
			<form action="viewBasketballEvent" method="post">
				<h2>Name of Creator: ${entry.user_name}</h2>
				<br />
				<h2>City of Event: ${entry.city}</h2>
				<br />
				<h2>Title of Event: ${entry.title}</h2>
				<br />
				<h2>Date Posted: ${entry.date_post}</h2>
				<br />
				<h2>Date of Event: ${entry.date_event}</h2>
				<br />
				<h2>Time of Event: ${entry.event_time}</h2>
				<br />
				<h2>Number of Players: ${entry.number_players}</h2>
				<br />
				<h2>Age Requirement: ${entry.age_requirement}</h2>
				<br />
				<h2>Description: ${entry.description}</h2>
				<br />
				<h2>Address: ${entry.address}</h2>
				<br /> <input class="w3-button w3-section w3-blue w3-ripple"
					type="submit" name="Return to Sport Page"
					value="Return to Basketball Page" />
			</form>

			<section id="contact" class="map">
				<iframe width="100%" height="100%" frameborder="0" style="border: 0"
					src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDjmeo6YPG5efrHmJ-mwUYtAdQnA5eciZI
                        &q=${userAddressModified}"
					allowfullscreen> </iframe>
			</section>
		</div>
	</div>


	<br />
	<br />

	<!-- Scroll to Top Button -->
    <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>

	<!-- Map 
	<section id="contact" class="map">
		<iframe width="100%" height="100%" frameborder="0" scrolling="no"
			marginheight="0" marginwidth="0"
			src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe>
		<br /> <small> <a
			href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;aq=0&amp;oq=twitter&amp;sll=28.659344,-81.187888&amp;sspn=0.128789,0.264187&amp;ie=UTF8&amp;hq=Twitter,+Inc.,+Market+Street,+San+Francisco,+CA&amp;t=m&amp;z=15&amp;iwloc=A"></a>
		</small>
	</section>

	<section id="contact" class="map">
		<iframe width="100%" height="100%" frameborder="0" style="border: 0"
			src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDjmeo6YPG5efrHmJ-mwUYtAdQnA5eciZI
    &q=${userAddressModified}"
			allowfullscreen> </iframe>
	</section> -->


	<!-- Bootstrap core JavaScript -->
	<script src="./HomepageContent/vendor/jquery/jquery.min.js"></script>
	<script
		src="./HomepageContent/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="./HomepageContent/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for this template -->
	<script src="./HomepageContent/js/stylish-portfolio.min.js"></script>


	<script defer
		src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>

</body>

</html>