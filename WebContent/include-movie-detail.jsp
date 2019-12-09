<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>

  <%
Movie mr= (Movie)request.getAttribute("Movie_Detail");
  %>
<h2>Movie Detail Page</h2>
  <table>
 <tr><td>Movie Id: </td><td><%= mr.getId()%> </td></tr>
 <tr><td>Title: </td><td><%= mr.getTitle()%> </td></tr>
 <tr><td>Year: </td><td><%= mr.getYear()%> </td></tr>
  <tr><td>Genre: </td><td><%= mr.getGenre()%> </td></tr>
    <tr><td>IMDB Rate: </td><td><%= mr.getImdb_rate()%> </td></tr>
   <tr><td>Cast: </td><td><%= mr.getCast()%> </td></tr>
   <tr><td>Awards: </td><td><%= mr.getAwards()%> </td></tr>
      <tr><td>Trailer: </td><td><a href="<%= mr.getTrailerUrl()%>" target="_blank"><%= mr.getTrailerUrl()%></a> </td></tr>
      
      <tr><td>Poster: </td><td><img src="<%=mr.getImgUrl()%>"/></td></tr> 
</table>