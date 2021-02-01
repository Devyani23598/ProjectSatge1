<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List, com.zensar.bean.* "%>
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
<%List<BusinessListing> businesslisting =(List<BusinessListing>) request.getAttribute("blist"); %>

<body class="container">
<form action="hospitaldetails" class="w-50 m-auto" method="post">
<h2 class="text-center pt-4 mt-4">Hospitals</h2>
<input type="hidden" name="requestAction" value="hospitaldetails1" />
<table border="1" class="table  m-auto">
<tr>

  <th>businessName</th>
  <th>businessDiscription</th>
  <th>address</th>
  <th>cityId</th>
  <th>categoryId</th>
  <th>Action</th>
  <th>Action</th>
  </tr>
  <%for(BusinessListing bl :businesslisting){ %>
<tr>
<td><%=bl.getBusinessName()%></td>
<td><%=bl.getBusinessDiscription()%></td>
<td><%=bl.getAddress()%></td>
<td><%=bl.getCityId()%></td>
<td><%=bl.getCategoryId()%></td>
 <!--<td>
 <a class="btn btn-warning" href="updateCovidCenter">Update</a>
</td>
<td>
<td> <a class="btn btn-warning" href="">Delete</a> </td>
</td>--> 
</tr> 
<%} %>
</table>
 
<br><br>
<a class="btn btn-dark" href="logout.jsp">LOGOUT</a>
</form>
</body>
</html>



