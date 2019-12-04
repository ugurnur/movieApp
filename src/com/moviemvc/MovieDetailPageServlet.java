package com.moviemvc;

import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet("/MovieDetailPageServlet")
public class MovieDetailPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MovieDetailDbUtil movieDetailDbUtil;
	
	@Resource(name="jdbc/movie_search")
	
	private DataSource dataSource;
	
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			movieDetailDbUtil = new MovieDetailDbUtil(dataSource);
		}
		catch (Exception exc){
			throw new ServletException();
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			fetchMovie(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}


	private void fetchMovie(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Movie movie;
			movie = movieDetailDbUtil.getMovie(3);
			request.setAttribute("Movie_Detail", movie);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/movie-detail.jsp");
			dispatcher.forward(request, response);			
	}
}
