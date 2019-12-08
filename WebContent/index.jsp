<%-- <%
    response.sendRedirect("http://localhost:8080/movie3/home");
%> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Movie Search - Home</title>
  </head>
  <body>
    
    
    <a href="MovieListControllerServlet?command="LIST">List All Movies</a>
    <br>  <br>  <br>  <br>

        <a href="MovieListControllerServlet?movieId=3&command=FETCH">Movie Detail Page</a>
    <br>  <br>  <br>  <br>
    <a href="admin-add-movie.jsp">Add Movie Page</a>
     <br>  <br>  <br>  <br>
    <a href="MovieListControllerServlet?command=ADMIN_LIST">Admin List Movies</a>
     <br>  <br>  <br>  <br>
    <a href="MovieListControllerServlet?movieId=1&command=LOAD">Movie Update Page Sample</a>
         <br>  <br>  <br>  <br>
    <a href="searchbyTitle.jsp">Search By Title</a>
        <br>  <br>  <br>  <br>
         <a href="fe-advanced-search.jsp">Adavnced Search By Title</a>
        <br>  <br>  <br>  <br>
    
    
  </body>
</html>