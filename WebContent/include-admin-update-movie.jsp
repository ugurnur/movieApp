<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>


  <%
Movie mv= (Movie)request.getAttribute("The_Movie");
  String selected = (String) mv.getGenre();
  %>


<h2>Update Movie Page</h2>


<form action="MovieListControllerServlet" action="GET" name="AddMovieForm" id="movieAdd">
        
        
        <input
            type="hidden"
            name="command"
            value="UPDATE"
          />
          <input
            type="hidden"
            name="movieId"
            value="<%= mv.getId()%>"
          />

          
                  <label>
          <span>Movie ID:</span>
          <input
            id="MovieId"
            title="Movie Id"
            type="number"
            aria-label="Movie Id"
            value="<%= mv.getId()%>"
            placeholder="Movie Id"
            disabled
          />
        </label>
        <label>
          <span>Title:</span>
          <input
            id="title"
            title="Title of the Movie"
            type="text"
            name="title"
            aria-label="fullname"
            placeholder="Title of the Movie"
            value="<%= mv.getTitle()%>"
            required
          />
        </label>

        <label>
          <span>Year:</span>
          <input
            id="year"
            name="year"
            title="Movie Year"
            type="number"
            aria-label="Enter the year of the Movie"
            placeholder="Enter the year of the Movie"
            min="1900"
            max="2023"
            value="<%= mv.getYear()%>"
             required

          />
        </label>
        <label>
          <span>Genre:</span>
          <select required name="genre">
<%
   String[] genres = {"Action","Drama", "Adventure", "Family", "Comedy", "Mystery","Horror","Romance","Documentary", "Biography", "Other"};
       for (int i = 0; i < genres.length; i++) {
	  	if (selected.equals(genres[i])) {
		  out.print("<option selected value="+genres[i]+">"+genres[i]+"</option>");
	  } else {
		  out.print("<option value="+genres[i]+">"+genres[i]+"</option>");
	  }
   }
%>
            
          </select>
        </label>



        <label>
          <span>IMDB Rate:</span>
          <input
            id="imdb"
            name="imdb"
            title="IMDB Rate"
            type="text"
            aria-label="Enter IMDB Rate"
            placeholder="Enter IMDB Rate"
            value="<%= mv.getImdb_rate() %>"
             required
          />
        </label>
        <label>
          <span>Cast:</span>
          <input
            id="cast"
            title="Cast of the Movie"
            type="text"
            name="cast"
            aria-label="Cast of the Movie"
            placeholder="Cast of the Movie"
            value="<%= mv.getCast()%>"
          />
        </label>

        <label>
          <span>Awards:</span>
          <input
            id="awards"
            title="Awards"
            type="text"
            name="awards"
            aria-label="Awards won"
            placeholder="Awards won"
            value="<%= mv.getAwards()%>"
          />
        </label>

        <label>
          <span>Trailer:</span>
          <input
            id="trailer"
            title="Trailer URL"
            type="text"
            name="trailer"
            aria-label="Trailer URL"
            placeholder="Trailer URL"
            value="<%= mv.getTrailerUrl()%>"
          />
        </label>
        
                <label>
          <span>Poster:</span>
          <input
            id="imgUrl"
            title="Poster URL"
            type="text"
            name="imgUrl"
            aria-label="Poster URL"
            value="<%= mv.getImgUrl()%>"
          />
        </label>

       <label><span></span><button type="submit" class="smb_button">Update</button></label>
    </form>