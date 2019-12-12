package com.moviemvc;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet(urlPatterns = {"//ComponentsHome", "/home"})
public class ComponentsHome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MovieDetailDbUtil movieDetailDbUtil;
	
	@Resource(name="jdbc/movie_search")
	
	private DataSource dataSource;
	public void init() throws ServletException {
		super.init();	
		try {
//			movieDbUtil = new MovieDbUtil(dataSource);
			movieDetailDbUtil = new MovieDetailDbUtil(dataSource);
		}
		catch (Exception exc){
			throw new ServletException();
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try {
		homepage(request, response);
	} catch (Exception e) {
		throw new ServletException(e);
	}

	}
	
	// page handlers
	
	private void homepage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Movie> popularMovies;
		popularMovies = movieDetailDbUtil.popularMovies();
			request.setAttribute("PopularList", popularMovies);
		
			List<Movie> moviesHome;
			moviesHome = movieDetailDbUtil.getHomeMovies();		
			request.setAttribute("HomeMovieList", moviesHome);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/be-components-deneme.jsp");
			dispatcher.forward(request, response);			
	}

}
