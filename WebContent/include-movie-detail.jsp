<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>

  <%
Movie mr= (Movie)request.getAttribute("Movie_Detail");
  // change the title of the page with javascript
  out.println("<script> type=\"text/javascript\"");
  out.print("document.title=\"" + mr.getTitle()+"\";"); 
  out.print("</script>"); 
%>

<div class="movieDetailCont clearfix">
<h1><%= mr.getTitle()%></h1>

<div class="clearfix">
	<div class="movie-poster">
		<img src="<%=mr.getImgUrl()%>" title="<%= mr.getTitle()%>" width="300"/>
	</div>
	
	<div class="movie-info">
		  <table>
 <tr><td class="column-A">Movie ID: </td><td class="column-B"><%= mr.getId()%> </td></tr>
 <tr><td class="column-A">Year: </td><td><%= mr.getYear()%> </td></tr>
  <tr><td class="column-A">Genre: </td><td> <a class="genre-link" href="Category?genre=<%= mr.getGenre()%>" title="<%= mr.getTitle()%>">
		<%= mr.getGenre()%>
		</a> </td></tr>
		  <tr><td class="column-A">IMDB:</td><td><%= mr.getImdb_rate() %></td></tr>
  
  
  
  
  
   <tr><td class="column-A">Cast: </td><td><%= mr.getCast()%> </td></tr>
   <tr><td class="column-A">Awards: </td><td><%= mr.getAwards()%> </td></tr>
</table>
	</div>

</div>


	<div class="movie-trailer clearfix ">
		<h3>Movie Trailer</h3>
		<iframe width="853" height="480" src="https://www.youtube.com/embed/<%= mr.getTrailerUrl()%>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
</div>




</body>