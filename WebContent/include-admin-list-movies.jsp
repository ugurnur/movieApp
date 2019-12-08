<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>

  <%
ArrayList<Movie> list = (ArrayList<Movie>) request.getAttribute("Movie_List");
  %>

<h2>Admin List All Movies</h2>
  <table>
  <thead>
  <tr><th>Movie id</th><th>Movie Title</th><th>Update</th><th>Delete</th></tr>
  </thead>
  <% for(Movie mv : list) { %>
  <tr><td><%= mv.getId()%> </td><td><a href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=FETCH"><%= mv.getTitle()%></a></td>
  <td><a href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=LOAD" target="_blank">Update Movie</a></td>
  <td><a onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false" href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=DELETE" target="_blank">Delete Movie</a> </td></tr>
 
    <% } %>
  
</table> 