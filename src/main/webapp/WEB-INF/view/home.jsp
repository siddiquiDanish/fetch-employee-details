<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>welcome</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-image:
		url("https://25.media.tumblr.com/d9e91fbaa9df0a3b07fdc4f34c97c277/tumblr_mxwv8zoWXd1qzq0t9o1_r2_500.gif");
	min-height: 80%;
	background-attachment: fixed;
	background-size: cover;
	backgorund-repeat: no-repeat;
}
</style>


</head>


<body align="center">
	<form action="/home" method="post" class="form-horizontal"
		modelAttribute="employee">

		<h2 align="center" style="margin-bottom: 50px;color:#CB4335">
			<strong >Cognizant Employees' Portal</strong>
		</h2>
		<fieldset>

			<legend >Search for an Employee</legend>

			<!-- Enter Employee Id -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="name">Enter
					Cognizant Id :</label>
				<div class="col-md-4">
					<input id="id" path="id" name="id" type="text"
						placeholder="Enter ID here!" class="form-control input-md"
						required="required" minlength="6" maxlength="6" />

				</div>
			</div>

			<!--SUBMIT Button -->
			<div style="margin-left: 390px" class="form-group">

				<div class="col-md-4">
					<button id="submit" type="submit" name="submit"
						class="btn btn-success">Search</button>
				</div>
			</div>

		</fieldset>
	</form>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>
</html>