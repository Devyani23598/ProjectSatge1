<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category Form</title>
</head>
<body>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<div class="topnav">
  <a class="white"><b>Add Category</b></a>
</div>
<div align="center">
<form action = "addCategoryMaster">
<input type="hidden" name="requestAction" value="addCategoryMaster">

<table>
	<tr>
		<td><b>Category ID: </b></td>
		<td><input type = "text" name = "categoryId"/></td>
	</tr>
	<tr>
		<td><b>Category Name: </b></td>
		<td><input type = "text" name = "categoryName"/></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td><input type = "submit" value = "Add Category"/></td>
	</tr>
</table>
</body>
</html>