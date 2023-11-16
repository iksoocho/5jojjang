<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML>
<!--
	Strongly Typed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
	<title>Strongly Typed by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</head>

<body class="homepage is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">
			<div class="container">
				<!-- header -->
				<tiles:insertAttribute name="header"></tiles:insertAttribute>


				<!-- Menu -->
				<tiles:insertAttribute name="menu"></tiles:insertAttribute>


			</div>
		</section>

		<!-- Features -->
		<tiles:insertAttribute name="body"></tiles:insertAttribute>

		<!-- Footer -->
		<tiles:insertAttribute name="footer"></tiles:insertAttribute>


	</div>


</body>

</html>