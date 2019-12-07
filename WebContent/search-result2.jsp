<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Search Result</title>
</head>


<body>
<h2>Search Result 2</h2>
  <%
ArrayList<Movie> list = (ArrayList<Movie>) request.getAttribute("Search_ResultList");
  
  if (list == null){
	 out.print("<h2>no search result</h2>");
  } else {
	  out.print("<h2>search result found</h2>");
  }
  %>


</body>
</html>