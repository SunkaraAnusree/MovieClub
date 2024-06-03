<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Movie Club</title>
<style>
.movie-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	margin-top: 20px;
	margin-bottom: 50px;
}

.movie-card {
	border: 1px solid #ddd;
	border-radius: 8px;
	margin: 10px;
	padding: 10px;
	width: 300px; /* Adjust the width as needed */
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	background-color: #b0e0e6; /* Light blue */
}

.movie-card img {
	width: 90%;
	height: 90%;
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

.search {
	width: 100%;
	text-align: center;
	margin: 20px 0;
	padding-top: 20px;
}

body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	font-family: Arial, sans-serif;
	background-image: url('assets/img/bg1.jpg');
	background-size: cover;
	background-position: center;
}

input[type=text] {
	width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

button[type=button] {
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	background-color: #4CAF50;
	color: white;
	cursor: pointer;
	box-sizing: border-box;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
	font-weight: bold;
}
</style>
<script>
	function filterMovies() {
		var input, filter, cards, cardContainer, title, i;
		input = document.getElementById("myInput");
		filter = input.value.toUpperCase();
		cardContainer = document.getElementById("movieContainer");
		cards = cardContainer.getElementsByClassName("movie-card");
		for (i = 0; i < cards.length; i++) {
			title = cards[i].getElementsByClassName("movie-card-title")[0];
			if (title.innerText.toUpperCase().indexOf(filter) > -1) {
				cards[i].style.display = "";
			} else {
				cards[i].style.display = "none";
			}
		}
	}

	function handleKeyPress() {
		filterMovies();
	}
</script>
</head>

<body>

	<%@ include file="index2.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<div class="search">
		<input type="text" id="myInput" placeholder="Enter Movie Name"
			onkeyup="handleKeyPress()">
		<button type="button" onclick="filterMovies()">Search</button>
	</div>

	<div id="movieContainer" class="movie-container">
		<c:forEach items="${movielist}" var="movie">
			<div class="movie-card">
				<div class="movie-card-title">${movie.moviename}</div>
				<div class="movie-card-details">
					<img src="displaymovieimage?id=${movie.id}"
						alt="${movie.moviename}"> <strong>Category:</strong>
					${movie.category}<br> <strong>Description:</strong>
					${movie.description}<br> <strong>Link:</strong> <a
						href="<c:url value='${movie.movielink}' />">Watch Now</a><br>
				</div>
			</div>
		</c:forEach>
	</div>

</body>

</html>
