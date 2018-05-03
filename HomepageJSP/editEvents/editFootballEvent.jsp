<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
input[type=text] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

table, td, th {
	border: 1px solid #ddd;
	text-align: left;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 15px;
}

#myTABLE {
	width: 100%;
}

.button {
	background-color: blue;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="icon" href="./HomepageContent/img/SportLinkUp.jpg" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous" />

<link href="./HomepageContent/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Custom Fonts -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous" />
<link
	href="./HomepageContent/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="./HomepageContent/vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet" />

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" />

<!-- Custom CSS -->
<link rel="stylesheet" type="text/css"
	href="./HomepageContent/css/stylish-portfolio.css" />
	
<title>Edit Football Event</title>
</head>
<body>
	<!-- Call to Action -->
	<section class="content-section bg-primary text-white">
	<div class="container text-center">
		<h1 style="font-size: 75px">
			<a href="Homepage" style="color: white">SportsLinkUp</a>
		</h1>
	</div>
	</section>

	<div class="container">
		<div class="well">
			<form action="editFootballEvent" method="post">
				<!-- <h4>ID: ${entry.id}</h4> -->
				<input type="hidden" name="id" value="${entry.id}" />
				<h4>Name:</h4>
				<input type="text" name="name" value="${entry.user_name}" /> <br />
				<h4>City:</h4>
				<input type="text" name="city" value="${entry.city}" /> <br />
				<h4>Title:</h4>
				<input type="text" name="title" value="${entry.title}" /> <br />
				<h4>Date Posted:</h4>
				<input type="text" name="date_post" value="${entry.date_post}" /> <br />
				<h4>Date of Event:</h4>
				<input type="text" name="date_event" value="${entry.date_event}" />
				<br />
				<h4>Time of Event:</h4>
				<input type="text" name="event_time" value="${entry.event_time}" />
				<br />
				<h4>Number of Players:</h4>
				<input type="text" name="players" value="${entry.number_players}" />
				<br />
				<h4>Age Requirement:</h4>
				<input type="text" name="ageLimit" value="${entry.age_requirement}" />
				<br />
				<h4>Description:</h4>
				<input type="text" name="description" value="${entry.description}" />
				<br />
				<h4>Address:</h4>
				<input type="text" name="address" value="${entry.address}" /> <br />
				<input class="button" type="submit" name="save" value="Save" />
			</form>
		</div>
	</div>
</body>
</html>
