<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"import ="java.util.*, com.zensar.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">
	<%@include file="css/style.css" %>
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>
	<h2>Cities Details</h2>
<% List<City> listOfAllCities = (List<City>)request.getAttribute("listCities");%>
<% List<CategoryMaster> listOfAllCategories = (List<CategoryMaster>)request.getAttribute("listCategories");%>
	<%City city=null;%>
	<%CategoryMaster categorymaster=null;%>
	<form action="citydetails">
	<input type="hidden" name="requestAction" value="citydetails">
		<center>
	
		<table>
	
	<tr>
		  
		 <td><b>City Name:</b></td>
                <td>
               
                <select id="cityId" name=cityId  >
                <option value="0">Select City</option>
                <%for(City c:listOfAllCities){ %>
                <span class="caret"></span>
                
                   <option value=<%=c.getCityId() %>> <%=c.getCityName()%></option>
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
	
	<tr>
		<td>&nbsp;</td>
		<td><input class="btn btn-dark"  href="hospitaldetails1?requestAction=hospitaldetails1&cityId=<%=city.getCityId()%>&categoryId=<%=categorymaster.getCategoryId()%>" type = "submit" value = "submit"/>FIND</td>
	</tr>
</table>
		
		
		
		
			<%-- <table>
				<tr>
					<td><a class="btn btn-dark" href="hospitaldetails?requestAction=hospitaldetails1&cityId=<%=city.getCityId()%>&categoryId=<%=categorymaster.getCategoryId()%>">HOSPITAL</a>
						<br>
					<br></td>
					<td><a class="btn btn-dark" href="schooldetails">SCHOOL</a>
						<br>
					<br></td>
					<td><a class="btn btn-dark" href="hoteldetails">HOTEL</a> <br>
					<br></td>
				</tr>
			</table> --%>
		</center>
		<a href="logout.jsp">LOGOUT</a>
	</form>
</body>
</html>