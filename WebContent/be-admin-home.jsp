<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
            <link href="css/styles.css" type="text/css" rel="stylesheet" />
    <title>Admin Home</title>
  </head>
  <body>
    <%@ include file="header.jsp" %>
    <div class="admin-content_cont">
      <%@ include file="include-admin-list-movies.jsp" %>
  </div>
    <%@ include file="footer.jsp" %>
    
  </body>
</html>