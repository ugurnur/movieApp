<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Movies</title>
</head>

  <%
ArrayList<Movie> list = (ArrayList<Movie>) request.getAttribute("Movie_List");
  %>
<body>
<h2>Admin List All Movies</h2>
  <table>
  <thead>
  <tr><th>Movie id</th><th>Movie Title</th><th>Update</th><th>Delete</th></tr>
  </thead>
  <% for(Movie mv : list) { %>
  <tr><td><%= mv.getId()%> </td><td><%= mv.getTitle()%> </td>
  <td><a href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=LOAD" target="_blank">Update Movie</a></td>
  <td><a href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=LOAD" target="_blank">Delete Movie</a> </td></tr>
 
    <% } %>
  
</table> 


</body>
</html>