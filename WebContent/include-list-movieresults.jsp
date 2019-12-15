<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>

<%
ArrayList<Movie> list = (ArrayList<Movie>) request.getAttribute("Movie_List");
  
%>
   
   
    <% if (list.isEmpty()){ %>
        <h2 class="error">We could not find any movie related to your search inquiry! <br> Please search again</h2>
 
         <%@ include file="include-advanced-search.jsp" %>
        
        <% } else { %>
        <h2>Search Results</h2>
        
           <% for(Movie mv : list) { %>
   
			<%@ include file="include-movie-loop.jsp" %>
  <% } } %>
   
