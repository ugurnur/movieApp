<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>



<h2>List All Movies</h2>
  <table>
   <%
ArrayList<Movie> list = (ArrayList<Movie>) request.getAttribute("Movie_List");
  %>
  
  
   <% for(Movie mv : list) { %>
 
  <tr><td>Movie Id: </td><td><%= mv.getId()%> </td></tr>
 
 <tr><td>Movie Title: </td>
 <td><a href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=FETCH" title="<%= mv.getTitle()%>">    
 <%= mv.getTitle()%> </a> 
 
 </td></tr>
 <tr><td>Year: </td><td><%= mv.getYear()%> </td></tr>
  <tr><td>IMDB Rate: </td><td><%= mv.getImdb_rate()%> </td></tr>
  <tr><td>Genre: </td><td><%= mv.getGenre()%> </td></tr>
   <tr><td>Cast: </td><td><%= mv.getCast()%> </td></tr>
   <tr><td>Awards: </td><td><%= mv.getAwards()%> </td></tr>
      <tr><td>Trailer: </td><td><a href="<%= mv.getTrailerUrl()%>" target="_blank"><%= mv.getTrailerUrl()%></a> </td></tr>
      <tr><td>Poster Link: </td><td><img src="<%= mv.getImgUrl()%>" width="200"></td></tr>

  <% } %>
  
</table>