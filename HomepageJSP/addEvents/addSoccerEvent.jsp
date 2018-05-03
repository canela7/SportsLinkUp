<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Post Event</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="./HomepageContent/img/SportLinkUp.jpg" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>
<body>

	<form action="addSoccerEvent" method="post">

		<div
			class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin">



			<h2 class="w3-center">
				<i class="far fa-futbol"></i> Post Your Soccer Event <i
					class="far fa-futbol"></i>
			</h2>

			<!--FirstName Secion -->
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="w3-xxlarge fa fa-user"></i>
				</div>
				<div class="w3-rest">
					<input class="w3-input w3-border" name="name" type="text"
						placeholder="Name">
				</div>
			</div>


			<!--Title Secion -->
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="w3-xxlarge fa fa-user"></i>
				</div>
				<div class="w3-rest">
					<input class="w3-input w3-border" name="title" type="text"
						placeholder="Title of Soccer Event">
				</div>
			</div>



			<!--Number of players Secion -->
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="material-icons" style="font-size: 36px">people_outline</i>
				</div>
				<div class="w3-rest">
					<input class="w3-input w3-border" name="players" type="text"
						placeholder="Numbers of Players to Play">
				</div>
			</div>


			<!--Age Limit Description-->
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="fa fa-address-card" style="font-size: 36px"></i>
				</div>
				<div class="w3-rest">
					<input class="w3-input w3-border" name="ageLimit" type="text"
						placeholder="Age Requierment (i.e 14-17, 18-above...)">
				</div>
			</div>


			<!--Location Description-->
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="fa fa-location-arrow" style="font-size: 36px"></i>
				</div>
				<div class="w3-rest">
					<input class="w3-input w3-border" name="address" type="text"
						placeholder="Park Address">
				</div>
			</div>


			<!--Location Description-->
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="fa fa-location-arrow" style="font-size: 36px"></i>
				</div>
				<div class="w3-rest">
					<input class="w3-input w3-border" name="city" type="text"
						placeholder="City, State">
				</div>
			</div>

			<!--Location Description-->
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="fa fa-location-arrow" style="font-size: 36px"></i>
				</div>
				<div class="w3-rest">
					<input class="w3-input w3-border" name="zip" type="text"
						placeholder="Zip Code">
				</div>
			</div>


			<!--Time Description-->
			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="fas fa-clock" style="font-size: 36px"></i>
				</div>
				<div class="w3-rest">
					<div>
						<label for="party">Date of Event:</label> <input id="party"
							type="date" name="date" placeholder="YYYY-MM-DD"
							required><span class="validity"></span>
					</div>
				</div>
			</div>

			<div class="w3-row w3-section">
				<div class="w3-rest">
					<div>
						<label for="party">Time (required times only 7:00am -
							7:00pm):</label> <input id="party" type="time" name="time"
							required placeholder="7:00am - 7:00pm" min="07:00" max="19:00"><span class="validity"></span>
					</div>
				</div>
			</div>

			<div class="w3-row w3-section">
				<div class="w3-col" style="width: 50px">
					<i class="fas fa-pencil-alt" style="font-size: 36px"></i>
				</div>
				<div class="w3-rest">
					<textarea class="w3-input w3-border" name="description"
						placeholder="Description of the Event"></textarea>
					<br />
				</div>
			</div>






			<p class="w3-center">
				<button class="w3-button w3-section w3-blue w3-ripple">
					Post</button>



			</p>

		</div>
	</form>



	<script defer
		src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>


</body>
</html>


