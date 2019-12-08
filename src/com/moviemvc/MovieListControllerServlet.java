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


@WebServlet("/MovieListControllerServlet")

//@WebServlet(urlPatterns = {"/MovieListControllerServlet", "/home","/search", "/advancedSearch"})
public class MovieListControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//	MovieDbUtil movieDbUtil;
	MovieDetailDbUtil movieDetailDbUtil;
	
	@Resource(name="jdbc/movie_search")
	
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
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
			
			String uri = request.getRequestURI();
			System.out.println(uri);
			
			if (request.getParameter("command") != null) {
				String command = request.getParameter("command");
				switch (command) {
				case "ADD": 
					addMovies(request, response);
					break;
				case "ADMIN_LIST": 
					adminListMovies(request, response);
					break;
				case "LOAD": 
					loadMovie(request, response);
					break;
				case "LIST": 
					listMovies(request, response);
					break;
				case "FETCH": 
					fetchMovie(request, response);
					break;
				case "UPDATE": 
					updateMovie(request, response);
					break;	
				case "DELETE": 
					deleteMovie(request, response);
					break;
					
				case "SEARCHTITLE": 
					searchMovies(request, response);
					break;
					
				case "ADVANCEDSEARCH": 
					advancedSearch(request, response);
					break;				
				default: 
					listMovies(request, response);
					break;
				}
			}
			
			listMovies(request, response);

			
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}


	
	// page handlers
	
	private void advancedSearch(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		List<Movie> movies;
//			movies = movieDetailDbUtil.getMovies();
//			request.setAttribute("Movie_List", movies);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/fe-advanced-search.jsp");
			dispatcher.forward(request, response);			
	}
	

	private void listMovies(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Movie> movies;
			movies = movieDetailDbUtil.getMovies();
			request.setAttribute("Movie_List", movies);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/home.jsp");
			dispatcher.forward(request, response);			
	}
	
	private void searchMovies(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String movTitle= request.getParameter("searchTitle");
		List<Movie> movies;
			movies = movieDetailDbUtil.getSearchedMovies(movTitle);
			request.setAttribute("Movie_List", movies);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/fe-listresults.jsp");
			dispatcher.forward(request, response);			
	}
	
	private void loadMovie(HttpServletRequest request, HttpServletResponse response) throws Exception {
			int movieId = Integer.parseInt(request.getParameter("movieId"));
		
			Movie theMovie = movieDetailDbUtil.getMovie(movieId);	
			
			request.setAttribute("The_Movie", theMovie);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/be-admin-updatemovie.jsp");
			dispatcher.forward(request, response);			
	}
	
	
	
	private void adminListMovies(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Movie> movies;
			movies = movieDetailDbUtil.getMovies();
			request.setAttribute("Movie_List", movies);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/be-admin-home.jsp");
			dispatcher.forward(request, response);			
	}
	
	
	private void addMovies(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		create a new movie object

        String title= request.getParameter("title");
        int year= Integer.parseInt(request.getParameter("year"));
        String genre= request.getParameter("genre");
        float imdb= Float.parseFloat(request.getParameter("imdb")) ;
        String cast= request.getParameter("cast");
        String awards= request.getParameter("awards");
        String trailer= request.getParameter("trailer");
        String imgUrl= request.getParameter("imgUrl");
        System.out.println(imgUrl);
 
        
        Movie movie = new Movie(title, year, genre, imdb, cast, awards, trailer, imgUrl);
        
//		send it to the db
        movieDetailDbUtil.addMovie(movie);
        
        
		
		//send the user to the homepage
        List<Movie> movies;
		movies = movieDetailDbUtil.getMovies();
		request.setAttribute("Movie_List", movies);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/be-admin-home.jsp");
		dispatcher.forward(request, response);	
					
	}
	
	private void fetchMovie(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int movie_id = Integer.parseInt(request.getParameter("movieId"));
		Movie movie;
			movie = movieDetailDbUtil.getMovie(movie_id);
			request.setAttribute("Movie_Detail", movie);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/fe-movieDetail.jsp");
			dispatcher.forward(request, response);			
	}
	
	private void updateMovie(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int movieid= Integer.parseInt(request.getParameter("movieId"));
        String title= request.getParameter("title");
        int year= Integer.parseInt(request.getParameter("year"));
        String genre= request.getParameter("genre");
        float imdb= Float.parseFloat(request.getParameter("imdb")) ;
        String cast= request.getParameter("cast");
        String awards= request.getParameter("awards");
        String trailer= request.getParameter("trailer");
        String imgUrl= request.getParameter("imgUrl");
        
        Movie movie = new Movie(movieid, title, year, genre, imdb, cast, awards, trailer, imgUrl);
        
//		send it to the db
        movieDetailDbUtil.updateMovie(movie);
		
		//send the user to the homepage
        adminListMovies(request, response);
					
	}
	
	private void deleteMovie(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int movieid= Integer.parseInt(request.getParameter("movieId"));
        
//		send it to the db
        movieDetailDbUtil.deleteMovie(movieid);
		
		//send the user to the homepage
        adminListMovies(request, response);
					
	}
}
