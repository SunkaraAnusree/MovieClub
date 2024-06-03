<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Movie Club</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<style>
/* Add background image */
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	font-family: Arial, sans-serif;
	background-image: url('assets/img/n1.jpg');
	/* Corrected background image URL */
	background-size: cover;
	background-position: center;
}

.button {
	background-color: #007bff; /* Bootstrap primary color */
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

input[type=text], input[type=password], input[type=number], input[type=email],
	select, input[type=date], input[type=file], textarea {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
	font-weight: bold;
}

.content {
	margin-top: 150px; /* Increase margin-top for more spacing */
}

.heading {
	margin-top: 50px; /* Additional margin for heading */
}
</style>
</head>

<body>

	<!-- ======= Header/Navbar ======= -->

	<%@ include file="index2.jsp"%>
	<div class="container content">


		<form action="viewmoviesbycategory" method="post">
			<table align="center">
				<tr>
					<td><label for="category"
						style="font-size: 20px; color: white;">Category</label></td>

					<td><select name="category" id="category" required="required">
							<option value="">---Select---</option>
							<option value="Horror">Horror</option>
							<option value="Love">Love</option>
							<option value="Drama">Drama</option>
							<option value="Thriller">Thriller</option>
							<option value="Action">Action</option>
					</select></td>
				</tr>

				<tr align="center">
				<tr align="center">
					<td colspan="2"><input type="submit" value="View"
						class="button green"></td>
				</tr>
				<br>
				<br>
				<Br>
				<br>
				<br>
				<br>
				<br>
				<Br>
				<br>
				<br>
				</tr>
			</table>
		</form>
	</div>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

</body>

</html>
