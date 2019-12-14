<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>



<h2>List All Movies</h2>

   <%
ArrayList<Movie> homelist = (ArrayList<Movie>) request.getAttribute("HomeMovieList");
   
   int size = homelist.size();
   size -= 1;
  %>

    <% for(int i =size; i > 0; i--) {%>
    
    		<%Movie mv = homelist.get(i); %>
			<%@ include file="include-movie-loop.jsp" %>

  <% } %>
