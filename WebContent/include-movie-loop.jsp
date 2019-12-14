<div class="movieDetailCont clearfix">
	<div class="movie-poster-loop">
		<a href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=FETCH" title="<%= mv.getTitle()%>">
		<img src="<%=mv.getImgUrl()%>"/>
		</a>
		
	</div>
	
	<div class="movie-info-loop">
		  <table>
 <tr ><td colspan=2>
 <a href="MovieListControllerServlet?movieId=<%= mv.getId()%>&command=FETCH" title="<%= mv.getTitle()%>" class=list-title  ><%= mv.getTitle()%></a>
 </td></tr>
 <tr><td class="column-A">Movie ID: </td><td class="column-B"><%= mv.getId()%> </td></tr>
 <tr><td class="column-A">Year: </td><td><%= mv.getYear()%> </td></tr>
   <tr><td class="column-A">Genre:  </td><td>
   <a class="genre-link" href="Category?genre=<%= mv.getGenre()%>" title="<%= mv.getTitle()%>">
		<%= mv.getGenre()%>
		</a>
   
    </td></tr>
    
       <tr><td class="column-A">Cast: </td><td><%= mv.getCast()%> </td></tr>
   <tr><td class="column-A">Awards: </td><td><%= mv.getAwards()%> </td></tr>
</table>
	</div>
</div>