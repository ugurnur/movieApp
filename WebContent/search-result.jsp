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

  <%String title = (String)request.getAttribute("title");
  out.print("<h2>"+title+"</h2>");
  %>



</body>
</html>