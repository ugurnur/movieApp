<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>



<h2>List All Movies</h2>

   <%
ArrayList<Movie> homelist = (ArrayList<Movie>) request.getAttribute("HomeMovieList");
  %>
  
   <% for(Movie mv : homelist) { %>
 
	<%@ include file="include-movie-loop.jsp" %>

  <% } %>
