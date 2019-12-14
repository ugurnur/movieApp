<%-- <%
    response.sendRedirect("http://localhost:8080/movie3/home");
%> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Movie Search - Admin Home</title>
  </head>
  <body>
    
    
    <%
        String redirectURL = "http://localhost:8080/movie3/admin?command=ADMIN_LIST";
        response.sendRedirect(redirectURL);
    %>
    
    
  </body>
</html>