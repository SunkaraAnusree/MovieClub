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
<style>
body {
	font-family: 'Poppins', sans-serif;
	background-color: #f8f9fa;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
	padding: 0;
}

.container {
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
}

.card {
	background-color: skyblue;
	border-radius: 10px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
	width: 400px;
	padding: 30px;
}

.form-container {
	margin-right: 30px;
}

.form-group {
	margin-bottom: 20px;
}

.form-label {
	display: block;
	margin-bottom: 10px;
	font-size: 16px;
	font-weight: bold;
	color: #fff;
}

.form-control {
	width: calc(100% - 10px); /* Adjusted width to account for padding */
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.button {
	width: 100%;
	padding: 15px;
	background-color: #0056b3;
	color: #fff;
	border: none;
	border-radius: 5px;
	font-size: 18px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.button:hover {
	background-color: #004080;
}

.registration-image {
	max-width: 100px;
	height: auto;
	margin-left: 10px;
	border-radius: 10px;
}
</style>
</head>
<body>

	<div class="container">
		<div class="card form-container">
			<form method="post" action="adduser">

				<div class="form-group">
					<label for="name" class="form-label">Name:</label> <input
						type="text" id="name" name="name" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="gender" class="form-label">Gender:</label> <input
						type="radio" name="gender" value="MALE" id="male" required>
					<label for="male" class="custom-radio"></label>Male <input
						type="radio" name="gender" value="FEMALE" id="female" required>
					<label for="female" class="custom-radio"></label>Female <input
						type="radio" name="gender" value="OTHERS" id="others" required>
					<label for="others" class="custom-radio"></label>Others
				</div>
				<div class="form-group">
					<label for="dob" class="form-label">Date of Birth:</label> <input
						type="date" id="dob" name="dob" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="email" class="form-label">Email ID:</label> <input
						type="email" id="email" name="email" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="pwd" class="form-label">Password:</label> <input
						type="password" id="pwd" name="pwd" class="form-control" required>
				</div>
				<div class="form-group">
					<label for="location" class="form-label">Location:</label> <input
						type="text" id="location" name="location" class="form-control"
						required>
				</div>
				<div class="form-group">
					<label for="contact" class="form-label">Contact No:</label> <input
						type="text" id="contact" name="contact" class="form-control"
						pattern="[789][0-9]{9}" placeholder="Must be 10 digits" required>
				</div>
				<div class="form-group">
					<input type="submit" value="Register" class="button">
				</div>
				<h3 align="center">
					<div class="text-center fs-6">
						<p>
							Already have an account?<a href="userlogin.jsp">Login here</a>
						</p>
					</div>
			</form>
		</div>
		<img src="assets/img/logo.jpg" alt="Register Logo">
	</div>
</body>
</html>
