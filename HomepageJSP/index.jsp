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
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sports Link Up</title>

<link rel="icon" href="./HomepageContent/img/SportLinkUp.jpg" />
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
				href="#portfolio">Portfolio</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#services">Services</a></li>
			<li class="sidebar-nav-item"><a class="js-scroll-trigger"
				href="#contact">Contact</a></li>
			<c:if test="${not empty sessionScope.user}">
				<li class="sidebar-nav-item"><a class="js-scroll-trigger"
					href="Logout?sportid=0">Logout</a></li>
			</c:if>
			<c:if test="${empty sessionScope.user}">
				<li class="sidebar-nav-item"><a class="js-scroll-trigger"
					href="Login">Login</a></li>
				<li class="sidebar-nav-item"><a class="js-scroll-trigger"
					href="Register">Register</a></li>
			</c:if>
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

	<!-- Portfolio -->
	<section class="content-section" id="portfolio">
		<div class="container">
			<div class="content-section-heading text-center">
				<!--  <h3 class="text-secondary mb-0">Portfolio</h3> 
          <h2 class="mb-5">Recent Projects</h2> -->
			</div>
			<div class="row no-gutters">
				<div class="col-lg-6">
					<a class="portfolio-item" href="Soccer"> <span class="caption">
							<span class="caption-content">
								<h1>Soccer</h1>
								<h5 class="mb-0">Kick Ball!</h5> <br>
							<br>
						</span>
					</span> <img class="img-fluid" src="./HomepageContent/img/Soccer-1.jpg"
						alt=""></a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item" href="Basketball"> <span
						class="caption"> <span class="caption-content">
								<h1>Basketball</h1>
								<h5 class="mb-0">Play Ball!</h5> <br>
							<br>
						</span>
					</span> <img class="img-fluid"
						src="./HomepageContent/img/Basketball-1.jpg" alt=""></a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item" href="Football"> <span
						class="caption"> <span class="caption-content">
								<h1>Football</h1>
								<h5 class="mb-0">Game On!</h5> <br>
							<br>
						</span>
					</span> <img class="img-fluid" src="./HomepageContent/img/Football-2.jpg"
						alt=""></a>
				</div>
				<div class="col-lg-6">
					<a class="portfolio-item" href="Cricket"> <span class="caption">
							<span class="caption-content">
								<h1>Cricket</h1>
								<h5 class="mb-0">
									<b>Let's Play!</b>
								</h5> <br>
							<br>
						</span>
					</span> <img class="img-fluid" src="./HomepageContent/img/Cricket-2.jpg"
						alt=""></a>
				</div>
			</div>
		</div>
	</section>


	<!-- Services -->
	<section class="content-section bg-primary text-white text-center"
		id="services">
		<div class="container">
			<div class="content-section-heading">
				<h3 class="text-secondary mb-0">Services</h3>
				<h2 class="mb-5">What We Offer</h2>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
					<span class="service-icon rounded-circle mx-auto mb-3"> <i
						class="far fa-futbol"></i>
					</span>
					<h4>
						<strong>Meet Local Sports Fans</strong>
					</h4>
					<p class="text-faded mb-0"></p>
				</div>
				<div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
					<span class="service-icon rounded-circle mx-auto mb-3"> <i
						class="fas fa-basketball-ball"></i>
					</span>
					<h4>
						<strong>Create Events</strong>
					</h4>
					<p class="text-faded mb-0"></p>
				</div>
				<div class="col-lg-3 col-md-6 mb-5 mb-md-0">
					<span class="service-icon rounded-circle mx-auto mb-3"> <i
						class="fas fa-football-ball"></i>
					</span>
					<h4>
						<strong>View Your Favorite Sports</strong>
					</h4>
					<p class="text-faded mb-0"></p>
				</div>
				<div class="col-lg-3 col-md-6">
					<span class="service-icon rounded-circle mx-auto mb-3"> <i
						class="fas fa-baseball-ball"></i>
					</span>
					<h4>
						<strong>Meeting New Potential Friends Who Share a Common
							Interest</strong>
					</h4>
					<p class="text-faded mb-0"></p>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="footer text-center" id="contact">
		<div class="container">
			<ul class="list-inline mb-5">
				<!-- <li class="list-inline-item">
            <a class="social-link rounded-circle text-white mr-3" href="#">
              <i class="icon-social-facebook"></i>
            </a>
          </li> -->
				<!-- <li class="list-inline-item">
            <a class="social-link rounded-circle text-white mr-3" href="#">
              <i class="icon-social-twitter"></i>
            </a>
          </li> -->
				<li class="list-inline-item"><a
					class="social-link rounded-circle text-white"
					href="https://github.com/canela7/SportsLinkUp"> <i
						class="icon-social-github"></i>
				</a></li>
			</ul>
			<p class="text-muted small mb-0">Copyright &copy; SportsLinkUp</p>
		</div>
	</footer>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
		<i class="fa fa-angle-up"></i>
	</a>

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
