<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Application-History</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
	<style>
body {
	background-image:
		url("https://cdn1.logocore.com/wp-content/uploads/2016/04/13024634/White-Abstract-Wallpapers-HD-Download.jpg");
	min-height: 110%;
	background-attachment: fixed;
	background-size: cover;
	backgorund-repeat: no-repeat;
}
</style>
	
	
</head>

<body align="center">
	
	<h1 align="center" style="margin-bottom: 75px; margin-top: 50px;">
		<strong>Cognizant Employees' Portal</strong>
	</h1>



	<form class="form-horizontal">
		<fieldset>

			<!-- Form Name -->
			<legend align="center" style="color:red">Employee | Details</legend>

			<table class="table table-striped">
				
				
					<tbody>
					<tr>
							<th scope="row">Cognizant Id :</th>
							<td>${employee.id}</td>
						</tr>
						
						<tr>
							<th scope="row">Name :</th>
							<td>${employee.cognizantName}</td>
						</tr>
						
						
						<tr>
							<th scope="row">Effective Date :</th>
							<td>${employee.effectiveDate}</td>
						</tr>
						

					</tbody>
			</table>

			<p>
				<a href="/home"><st>Back</st></a>
			</p>


			<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
			<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>

</html>