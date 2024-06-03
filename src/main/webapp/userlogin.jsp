<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Movie Club</title>
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="assets/css/style.css" rel="stylesheet">
<style>
body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	font-family: Arial, sans-serif;
	background-image: url('assets/img/m2.jpg');
	/* Corrected background image URL */
	background-size: cover;
	background-position: center;
}

body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
	display: flex;
	justify-content: center;
	align-items: center;
}

.wrapper {
	display: flex;
	flex-direction: column;
	align-items: center;
	background: white;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
	width: 80%;
	max-width: 400px; /* Adjust max-width as needed */
	padding: 20px;
}

.logo {
	margin-bottom: 20px;
}

.logo img {
	max-width: 200px; /* Decrease the size of the image */
	height: auto;
}

.content {
	width: 100%; /* Set the width to 100% */
	max-width: 600px; /* Increase the max-width to expand the table */
	padding: 20px; /* Add padding for better appearance */
}

.form-field input {
	width: 100%; /* Set the width of the input fields to 100% */
	padding: 15px; /* Increase the padding for better input size */
}

.wrapper {
	display: flex;
	flex-direction: column;
	align-items: center;
	background: white;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	border-radius: 5px;
	overflow: hidden;
	width: 90%; /* Adjust the width of the entire table */
	max-width: 600px; /* Set a maximum width if needed */
	padding: 20px;
}

.signup-link {
	color: blue;
	text-decoration: underline;
	transition: color 0.3s;
}

.signup-link:hover {
	color: darkblue;
}
</style>
</head>
<body>


	<div class="wrapper">
		<div class="logo">
			<img src="assets/img/logo.jpg" alt="Twitter Logo">
		</div>
		<form method="post" action="checkuserlogin">
			<div class="content">
				<div class="text-center mt-4 name"></div>
				<form class="p-3 mt-3">

					<form method="post" action="checkuserlogin">

						<table align=center>
							<td><label>Email ID</label></td>
							<td><input type="email" name="email" required /></td>
							</tr>

							<tr>
								<td></td>
							</tr>

							<tr>
								<td><label>Password</label></td>
								<td><input type="password" name="pwd" required /></td>
							</tr>
							<tr>
								<td></td>
							</tr>
							<tr>
								<td></td>
							</tr>
							<td>
							<tr align=center>
								<td colspan=2><input type="submit" value="Login"
									class="button"></td>
							</tr>

						</table>

					</form>

					<br>
				</form>
				<h3 align="center">
					<div class="text-center fs-6">
						<p>
							Don't have an account? <a href="userreg" class="signup-link">Sign
								up</a>
						</p>
					</div>
				</h3>
			</div>
	</div>

</body>
</html>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/purecounter/purecounter.js"></script>
</body>
</html>
