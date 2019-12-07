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
<h2>Search Titles</h2>
    <form action="MovieListControllerServlet" action="GET" name="Title" id="movieAdd">
        <input
            type="hidden"
            name="command"
            value="SEARCHTITLE"
          />
        <label>
          <span>Title:</span>
          <input
            id="title"
            title="Title of the Movie"
            type="text"
            name="searchTitle"
            aria-label="fullname"
            placeholder="Title of the Movie"
            required
          />
        </label>

        

      <button type="submit" class="smb_button">Search</button>
    </form>
  </body>
</html>