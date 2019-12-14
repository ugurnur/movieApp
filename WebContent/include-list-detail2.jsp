<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import ="com.moviemvc.Movie"%>

  <%
Movie mv= (Movie)request.getAttribute("Movie_Detail");
%>


 <%@ include file="include-movie-detail.jsp" %>

</body>