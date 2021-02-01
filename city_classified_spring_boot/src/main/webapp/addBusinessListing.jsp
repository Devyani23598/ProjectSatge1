<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.*, com.zensar.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Add Business Listing</title>
</head>

<body>

<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<div class="topnav">
  <a class="white"><b>Add Business Listing</b></a>
</div>

<div align="center">
<form action = "addBusinessListing">
<input type="hidden" name="requestAction" value="addBusinessListing">

<% List<City> listOfAllCities = (List<City>)request.getAttribute("listCities");%>
<% List<CategoryMaster> listOfAllCategories = (List<CategoryMaster>)request.getAttribute("listCategories");%>
<table>
	<tr>
		<td><b>Listing ID: </b></td>
		<td><input type = "text" name = "listingId"/></td>
	</tr>
	<tr>
		<td><b>Business Name: </b></td>
		<td><input type = "text" name = "businessName"/></td>
	</tr>
	<tr>
		<td><b>Business Description : </b></td>
		<td><input type = "text" name = "businessDiscription"/></td>
	</tr>
	<tr>
		<td><b>Address: </b></td>
		<td><input type = "text" name = "address"/></td>
	</tr>
	<tr>
		  
		 <td><b>City Name:</b></td>
                <td>
               
                <select id="cityId" name=cityId  >
                <option value="0">Select City</option>
                <%for(City city:listOfAllCities){ %>
                <span class="caret"></span>
                
                   <option value=<%=city.getCityId() %>> <%=city.getCityName()%></option>
                <%} %>
                </select>
               
                </td>
                
		
	</tr>
	
	
	<tr>
		<td><b>Category Name:</b></td>
                <td>
               
                <select id="categoryId" name=categoryId  >
                <option value="0">Select Category</option>
                <%for(CategoryMaster cm:listOfAllCategories){ %>
                <span class="caret"></span>
                
                   <option value=<%=cm.getCategoryId() %>> <%=cm.getCategoryName()%></option>
               <%} %>
                </select>
                
                </td>	</tr>
						
	<tr>
	
		<td>&nbsp;</td>
		
		<td><input type = "submit" value = "Add Business Listing"/></td>
	</tr>
</table>
</div>
</form>
</body>
</html>