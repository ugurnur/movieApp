<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <%
Movie mv= (Movie)request.getAttribute("Movie_Detail");
  %>
<title><%= mv.getTitle()%></title>
</head>


<body>
<h2>Movie Detail Page</h2>
  <table>
 <tr><td>Movie id: </td><td><%= mv.getId()%> </td></tr>
 <tr><td>Title: </td><td><%= mv.getTitle()%> </td></tr>
 <tr><td>Year: </td><td><%= mv.getYear()%> </td></tr>
  <tr><td>Genre: </td><td><%= mv.getGenre()%> </td></tr>
   <tr><td>Cast: </td><td><%= mv.getCast()%> </td></tr>
   <tr><td>Awards: </td><td><%= mv.getAwards()%> </td></tr>
      <tr><td>Trailer: </td><td><a href="<%= mv.getTrailerUrl()%>" target="_blank"><%= mv.getTrailerUrl()%></a> </td></tr>

  
</table>


</body>
</html>