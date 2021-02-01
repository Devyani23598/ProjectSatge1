<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<title>Add City Form</title>
</head>

<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<body>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<div class="topnav">
  <a class="text-white bg-dark"><b>Add City</b></a>
</div>

<div align="center">
<form action = "addCity">
<input type="hidden" name="requestAction" value="addCity">

<form action = "addCity">
<input type="hidden" name="requestAction" value="add">
<div class="w-50 m-auto m-auto">
<br>
<br>

	<div class="mb-3">
	<label for="inputsm" class="form-label"><b>City ID</b></label>
		  <input type="text" class="form-control" name="cityId" required />
	</div>
	<div class="mb-3">
	<label for="inputsm" class="form-label"><b>City Name</b></label>
		  <input type="text" class="form-control" name="cityName" required />
	</div>
	<div class="col-auto">

		<button type="submit" class="btn btn-dark" name="addCity" value="addCity">Add City</button>
	</div>

</form>
</body>
</html>