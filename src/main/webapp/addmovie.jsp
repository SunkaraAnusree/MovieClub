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
</style>
</head>

<body>

	<%@ include file="index2.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<h3 align=center>
		<u>Add Movie</u>
	</h3>

	<br>

	<form action="insertmovie" method="post" enctype="multipart/form-data">

		<table align=center>

			<tr>
				<td><label>Category</label></td>
				<td><select name="category" required="required">
						<option value="">---Select---</option>
						<option value="Horror">Horror</option>
						<option value="Love">Love</option>
						<option value="Drama">Drama</option>
						<option value="Thriller">Thriller</option>
						<option value="Action">Action</option>
				</select></td>
			</tr>

			<tr>
				<td></td>
			</tr>

			<tr>
				<td><label>Name</label></td>
				<td><input type="text" name="moviename" required="required" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>

			<tr>
				<td><label>Description</label></td>
				<td><textarea name="description"></textarea></td>
			</tr>



			<tr>
				<td><label>Link(Optional)</label></td>
				<td><input type="text" name="movielink" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>

			<tr>
				<td><label>Image</label></td>
				<td><input type="file" name="movieimage" required="required" /></td>
			</tr>

			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>

			<tr align=center>
				<td colspan=2><input type="submit" value="Add" class="button"></td>
			</tr>

		</table>

	</form>


</body>

</html>
