<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.zensar.bean.*, java.util.List" %>
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
<div class="w-50 m-auto text-center p-4 rounded shadow" class="row container text-center m-auto">
<body>
<h2>List of All Cities</h2>
<%List<City> listOfAllCities=(List<City>) request.getAttribute("listOfAllCities"); %>
<div class="row container text-center m-auto">
<center>
    <%for(City city:listOfAllCities){ %>
      <%if(city.getCityId() == 12) {%>
        <div class="col-sm-6">
    <div class="card">
    <a class="btn btn-warning" href="user?requestAction=usercovidCenterDetails&cityId=<%=12%>">
    <img class="card-img-top" src="images/Classified.jpg" alt="city image cap">
    </a>
      <div class="card-body">
        <h5 class="card-title">PUNE</h5>
        
      </div>
 
  </div>
 </div>
     <%} %>
     
     <%if(city.getCityId() == 23) {%>
    
        <div class="col-sm-6">
    <div class="card">
    <a class="btn btn-warning" href="user?requestAction=usercovidCenterDetails&cityId=<%=23%>">
    <img class="card-img-top" src="images/Classified.jpg" alt="city image cap">
    </a>
      <div class="card-body">
        <h5 class="card-title">DELHI</h5>
        
      </div>
 
  </div>
 </div>
      
     <%} %>
  
     
    
     
     <%if(city.getCityId() == 34) {%>
     
        <div class="col-sm-6">
    <div class="card">
    <a class="btn btn-warning" href="user?requestAction=usercovidCenterDetails&cityId=<%=34%>">
    <img class="card-img-top" src="images/Classified.jpg" alt="city image cap">
    </a>
      <div class="card-body">
        <h5 class="card-title">MUMBAI</h5>
        
      </div>
 
  </div>
 </div>

     <%} %>
     
  
  <%if(city.getCityId() == 500) {%>
    
        <div class="col-sm-6">
    <div class="card">
    <a class="btn btn-warning" href="user?requestAction=usercovidCenterDetails&cityId=<%=500%>">
    <img class="card-img-top" src="images/Classified.jpg" alt="city image cap">
    </a>
      <div class="card-body">
        <h5 class="card-title">DEHRADUN</h5>
        
      </div>
 
  </div>
 </div>
   
     <%} %>

  <%}%>
  
</center>
</div>

</body>
</div>
</html>