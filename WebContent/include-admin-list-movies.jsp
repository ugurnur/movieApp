<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>

  <%
ArrayList<Movie> list = (ArrayList<Movie>) request.getAttribute("Movie_List");
  %>

<h2>Admin List All Movies</h2>
  <table class="admin-list-table">
  <thead>
  <tr><th >Movie id</th><th>Movie Title</th><th>Update</th><th>Delete</th></tr>
  </thead>
  <% for(Movie mv : list) { %>
  <tr><td class="column-id"><%= mv.getId()%> </td><td class="column-title"><a class="title-link" href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=FETCH"><%= mv.getTitle()%></a></td>
  <td class="column-update"><a class="update-link" href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=LOAD">Update Movie</a></td>
  <td class="column-delete"><a class="delete-link" onclick="if (!(confirm('Are you sure you want to delete this movie?'))) return false" href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=DELETE">Delete Movie</a> </td></tr>
 
    <% } %>
  
</table> 