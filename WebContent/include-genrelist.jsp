<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>

<%
ArrayList<Movie> list = (ArrayList<Movie>) request.getAttribute("Genre_Movies");
String genre = null;
if (request.getParameter("genre") != null){
	genre= request.getParameter("genre");
}
  
%>
   
   
    <% if (list.isEmpty()){ %>
        <h2 class="error">Sorry, We could not find any movie! <br> Please select another genre from the top menu</h2>
         
        
        <% } else { %>
        <h2><%=genre%> Movies</h2>
        
           <% for(Movie mv : list) { %>
   
	<%@ include file="include-movie-loop.jsp" %>
  <% } } %>
   
