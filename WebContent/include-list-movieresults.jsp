<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>


  <%
ArrayList<Movie> list = (ArrayList<Movie>) request.getAttribute("Movie_List");
  %>
<h2>List All Movie Results</h2>
  <table>
 
   <% for(Movie mv : list) { %>
 <tr><td>Movie id: </td><td><%= mv.getId()%> </td></tr>
 <tr><td>Title: </td><td><%= mv.getTitle()%> </td></tr>
 <tr><td>Year: </td><td><%= mv.getYear()%> </td></tr>
  <tr><td>IMDB Rate: </td><td><%= mv.getImdb_rate()%> </td></tr>
  <tr><td>Genre: </td><td><%= mv.getGenre()%> </td></tr>
   <tr><td>Cast: </td><td><%= mv.getCast()%> </td></tr>
   <tr><td>Awards: </td><td><%= mv.getAwards()%> </td></tr>
      <tr><td>Trailer: </td><td><a href="<%= mv.getTrailerUrl()%>" target="_blank"><%= mv.getTrailerUrl()%></a> </td></tr>
      <tr><td>Poster Link: </td><td><img src="<%= mv.getImgUrl()%>" width="200"></td></tr>
  <% } %>
</table>