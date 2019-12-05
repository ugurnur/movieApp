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

/**
 * Servlet implementation class StudentControllerServlet
 */
@WebServlet("/MovieListControllerServlet")
public class MovieListControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	MovieDbUtil movieDbUtil;
	MovieDetailDbUtil movieDetailDbUtil;
	
	@Resource(name="jdbc/movie_search")
	
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			movieDbUtil = new MovieDbUtil(dataSource);
			movieDetailDbUtil = new MovieDetailDbUtil(dataSource);
		}
		catch (Exception exc){
			throw new ServletException();
		}
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String command = request.getParameter("command");
			
			switch (command) {
			case "ADD": 
				addMovies(request, response);
				break;		
			case "LIST": 
				listMovies(request, response);
				break;
			default: 
				listMovies(request, response);
				break;
			}
			
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}


	private void listMovies(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Movie> movies;
			movies = movieDbUtil.getMovies();
			request.setAttribute("Movie_List", movies);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/list-movies.jsp");
			dispatcher.forward(request, response);			
	}
	
	private void addMovies(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		create a new movie object
//		float imdb=0;
//		int year=0;
        String title= request.getParameter("title");
//        if (request.getParameter("year") != "") {
//        	year= Integer.parseInt(request.getParameter("year"));
//        } 
        int year= Integer.parseInt(request.getParameter("year"));
        String genre= request.getParameter("genre");
//        if (request.getParameter("imdb") != "") {
//        	imdb= Float.parseFloat(request.getParameter("imdb")) ;
//        } 
        float imdb= Float.parseFloat(request.getParameter("imdb")) ;
        String cast= request.getParameter("cast");
        String awards= request.getParameter("awards");
        String trailer= request.getParameter("trailer");
        
        Movie movie = new Movie(title, year, genre, imdb, cast, awards, trailer);
        
//		send it to the db
        movieDetailDbUtil.addMovie(movie);
		
		//send the user to the homepage
		listMovies(request, response);
					
	}
}
