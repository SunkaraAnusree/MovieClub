<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
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

/* Styles for the form content */

/* Add any other custom styles as needed */
</style>
</head>
<body>
	<nav
		class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
		<div class="container">
			<button class="navbar-toggler collapsed" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarDefault"
				aria-controls="navbarDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span></span> <span></span> <span></span>
			</button>
			<a class="navbar-brand text-brand" href="index.html">Movie<span
				class="color-b">Club</span></a>

			<div class="navbar-collapse collapse justify-content-center"
				id="navbarDefault">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						href="index1.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="viewallmovies">All Movies</a></li>

					<li class="nav-item"><a class="nav-link active"
						href="displaycategory">Category</a></li>
			</div>
	</nav>

	<h3>
		<font color="white">Welcome to Our Website, ${uname}!</font><br><br>
		<font color="white">We're thrilled to have you here.<br>
		 Explore our page and discover everything we have to offer.</font>
	</h3>
</body>
</html>