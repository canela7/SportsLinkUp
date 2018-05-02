<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html>
<head>
<title>Basketball Events</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<style>
body {
	font-family: "Lato", sans-serif
}

.mySlides {
	display: none
}

.button {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
}

table.d {
	width: 100%;
	height: 300px;
}

thead {
	display: block;
	width: 100%;
	overflow: auto;
	color: black;
}

tbody {
	display: block;
	width: 100%;
	height: 333px;
	overflow: auto;
}

th {
	background: #DFDFDF;
	font-weight: bold;
	height: 70px;
	width: 500px;
	text-align: center;
}

td {
	background: #FAFAFA;
	text-align: center;
	height: 70px;
	width: 500px;
}

tr td:hover {
	background: #666;
	color: #FFF;
}

tr th:hover {
	background: #666;
	color: #FFF;
}

table.tableSection {
	display: table;
	width: 100%;
}

table.tableSection thead, table.tableSection tbody {
	float: left;
	width: 100%;
}

table.tableSection tbody {
	overflow: auto;
	height: 333px;
}

table.tableSection tr {
	width: 100%;
	display: table;
	text-align: left;
}

table.tableSection th {
	width: 10%;
}

table.tableSection td {
	width: 10%;
}
</style>
</head>
<body id="page-top">


	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-black w3-card">
			<a href="Homepage" class="w3-bar-item w3-button w3-padding-large">HOME</a>
			<a href="Basketball"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small">Basketball</a>
			<a href="Soccer"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small">Soccer</a>
			<a href="Football"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small">Football</a>
			<a href="Cricket"
				class="w3-bar-item w3-button w3-padding-large w3-hide-small">Cricket</a>
			<div class="w3-dropdown-hover w3-hide-small"></div>
			<a href="#app"
				class="w3-padding-large w3-hover-red w3-hide-small w3-right"> <i
				class="fa fa-search"></i>
			</a>
		</div>
	</div>

	<!-- Page content -->
	<div class="w3-content" style="max-width: 100%; margin-top: 46px">

		<!-- Automatic Slideshow Images -->
		<div class="mySlides w3-display-container w3-center">
			<img src="./HomepageContent/img/Basketball-1.jpg" style="width: 100%"
				height="450">
			<div
				class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
				<h3>Los Angeles</h3>
				<p>
					<b>We had the best time playing at Venice Beach!</b>
				</p>
			</div>
		</div>
		<!-- <div class="mySlides w3-display-container w3-center">
    <img src="../img/Soccer-2.jpg" style="width:100%" height="450">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>New York</h3>
      <p><b>The atmosphere in New York is lorem ipsum.</b></p>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="../img/Soccer-3.jpg" style="width:100%" height="450">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>Chicago</h3>
      <p><b>Thank you, Chicago - A night we won't forget.</b></p>    
    </div> 
	</div> -->

		<!-- The Band Section -->
		<div class="w3-container w3-content w3-center w3-padding-64"
			style="max-width: 75%" id="app">

			<h2 class="w3-wide">Current Basketball Events</h2>
			<p class="w3-opacity">
				<i>Play Basketball</i>
			</p>
			<form action="Basketball">
				<h4 class="w3-wide">
					Search: <input type="text" name="query"
						placeHolder="Search City or Title"><input type="submit"
						value="Search">
				</h4>
			</form>

			<c:set var="userSearch" value="${param.query}" />
			<c:set var="userSearchModified" value="${fn:toLowerCase(userSearch)}" />
			<!-- <c:out value="${userSearchModified}" /> -->

			<c:choose>
				<c:when test="${userSearch != null && empty sessionScope.user}">
					<table class="tableSection">
						<thead>
							<tr>
								<th>Title</th>
								<th>City</th>
								<th>Date of Post</th>
								<th>Date of Event</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${basketball_events}" var="entry">
								<c:set var="cityName" value="${entry.city}" />
								<c:set var="cityNameModified"
									value="${fn:toLowerCase(cityName)}" />
								<c:set var="titleName" value="${entry.title}" />
								<c:set var="titleNameModified"
									value="${fn:toLowerCase(titleName)}" />

								<c:if
									test="${fn:contains(cityNameModified, userSearchModified) || fn:contains(titleNameModified, userSearchModified)}">
									<tr>
										<td>${entry.title}</td>
										<td>${entry.city}</td>
										<td>${entry.date_post}</td>
										<td>${entry.date_event}</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
					<strong>Login now to Link Up!</strong>
					<p>
						<a href='Login' class="button">Login</a>
					</p>
				</c:when>

				<c:when test="${userSearch != null && not empty sessionScope.user}">
					<table class="tableSection">
						<thead>
							<tr>
								<th>Title</th>
								<th>City</th>
								<th>Date of Post</th>
								<th>Date of Event</th>
								<th>View Event</th>
								<th>Edit Event</th>
								<th>Delete Event</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${basketball_events}" var="entry">
								<c:set var="cityName" value="${entry.city}" />
								<c:set var="cityNameModified"
									value="${fn:toLowerCase(cityName)}" />
								<c:set var="titleName" value="${entry.title}" />
								<c:set var="titleNameModified"
									value="${fn:toLowerCase(titleName)}" />

								<c:if
									test="${fn:contains(cityNameModified, userSearchModified) || fn:contains(titleNameModified, userSearchModified)}">
									<tr>
										<td>${entry.title}</td>
										<td>${entry.city}</td>
										<td>${entry.date_post}</td>
										<td>${entry.date_event}</td>
										<td><a href="viewBasketballEvent?id=${entry.id}">View
												Event</a></td>
										<td><a href="editBasketballEvent?id=${entry.id}">Edit
												Event</a></td>
										<td><a class="textColor"
											href="DeleteBasketball?id=${entry.id}">Delete Event</a></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
					<br>
					<h1>Link Up!</h1>
					<a href="addBasketballEvent" class="button">Create Basketball Link Up</a>
					<p class="button">
						<a class="link" href='Logout'>Logout</a>
					</p>
				</c:when>

				<c:when test="${not empty sessionScope.user}">
					<table class="tableSection">
						<thead>
							<tr>
								<th>Title</th>
								<th>City</th>
								<th>Date of Post</th>
								<th>Date of Event</th>
								<th>View Event</th>
								<th>Edit Event</th>
								<th>Delete Event</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${basketball_events}" var="entry">
								<tr>
									<td>${entry.title}</td>
									<td>${entry.city}</td>
									<td>${entry.date_post}</td>
									<td>${entry.date_event}</td>
									<td><a href="viewBasketballEvent?id=${entry.id}">View
											Event</a></td>
									<td><a href="editBasketballEvent?id=${entry.id}">Edit
											Event</a></td>
									<td><a class="textColor"
										href="DeleteBasketball?id=${entry.id}">Delete Event</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<br>
					<h1>Link Up!</h1>
					<a href="addBasketballEvent" class="button">Create Basketball Link Up</a>
					<p class="button">
						<a class="link" href='Logout'>Logout</a>
					</p>
				</c:when>

				<c:otherwise>
					<table class="tableSection">
						<thead>
							<tr>
								<th>Title</th>
								<th>City</th>
								<th>Date of Post</th>
								<th>Date of Event</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${basketball_events}" var="entry">
								<tr>
									<td>${entry.title}</td>
									<td>${entry.city}</td>
									<td>${entry.date_post}</td>
									<td>${entry.date_event}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<br>
					<strong>Login now to Link Up!</strong>
					<p>
						<a href='Login' class="button">Login</a>
					</p>
				</c:otherwise>
			</c:choose>
		</div>

		<a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
			<i class="fa fa-angle-up"></i>
		</a>
	</div>

	<script>
		// Automatic Slideshow - change image every 4 seconds
		var myIndex = 0;
		carousel();
		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 4000);
		}
		// Used to toggle the menu on small screens when clicking on the menu button
		function myFunction() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}
		// When the user clicks anywhere outside of the modal, close it
		var modal = document.getElementById('ticketModal');
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>


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


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/vue"></script>
	<script src="https://unpkg.com/vue/dist/vue.js"></script>
	<script src="./HomepageContent/js/seed.js"></script>
	<script src="./HomepageContent/js/main.js"></script>


</body>

</html>