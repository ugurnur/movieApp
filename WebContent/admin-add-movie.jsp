<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link href="css/styles.css" type="text/css" rel="stylesheet" />
    <title>Add New Movie</title>
        
  </head>
  <body>
<h2>Admin Add A New Movie Page</h2>
    <form action="MovieListControllerServlet" action="GET" name="AddMovieForm" id="movieAdd">
        <input
            type="hidden"
            name="command"
            value="ADD"
          />
        <label>
          <span>Title:</span>
          <input
            id="title"
            title="Title of the Movie"
            type="text"
            name="title"
            aria-label="fullname"
            placeholder="Title of the Movie"
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
             required

          />
        </label>

        <label>
          <span>Genre:</span>
          <select required name="genre">
            <option value="Action">Action</option>
            <option value="Drama">Drama</option>
            <option value="Adventure">Adventure</option>
            <option value="Family">Family</option>
            <option value="Comedy">Comedy</option>
            <option value="Mystery">Mystery</option>
            <option value="Horror">Horror</option>
            <option value="Romance">Romance</option>
            <option value="Documentary">Documentary</option>
            <option value="Biography">Biography</option>
            <option value="Other">Other</option>
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
          />
        </label>

      <button type="submit" class="smb_button">Submit</button>
    </form>
  </body>
</html>