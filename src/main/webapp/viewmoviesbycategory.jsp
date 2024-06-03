<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Movie Club</title>
<style>
.navbar {
	background-color: black;
	border-radius: 30px;
}

.navbar ul {
	overflow: auto;
}

.navbar li {
	float: left;
	list-style: none;
	margin: 13px 20px;
}

.navbar li a {
	padding: 3px 3px;
	text-decoration: none;
	color: white;
}

.navbar li a:hover {
	color: red
}

.search {
	float: right;
	color: white;
	padding: 12px 75px;
}

.navbar input {
	border: 2px solid black;
	border-radius: 14px;
	padding: 3px 17px;
	width: 129px;
}

.button {
	background-color: black;
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

.movie-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	margin-top: 20px;
}

.movie-card {
	border: 1px solid #ddd;
	border-radius: 8px;
	margin: 10px;
	padding: 10px;
	width: 300px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	background-color: #f9f9f9;
}

.movie-card img {
	width: 100%;
	height: auto;
	border-radius: 8px;
}

.movie-card-title {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

.movie-card-details {
	margin-bottom: 10px;
}
</style>
</head>

<body>



	<br>

	<div class="movie-container">
		<c:forEach items="${movielist}" var="movie">
			<div class="movie-card">
				<div class="movie-card-title">${movie.moviename}</div>
				<div class="movie-card-details">
					<strong>ID:</strong> ${movie.id}<br> <strong>Category:</strong>
					${movie.category}<br> <strong>Description:</strong>
					${movie.description}<br> <strong>Link:</strong> <a
						href="<c:url value='${movie.movielink}' />">Watch Now</a><br>
					<strong>Image:</strong><br> <img
						src="displaymovieimage?id=${movie.id}" alt="${movie.moviename}">
				</div>
			</div>
		</c:forEach>
	</div>

</body>

</html>
