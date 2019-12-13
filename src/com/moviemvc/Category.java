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


@WebServlet("/Category")
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
//	MovieDbUtil movieDbUtil;
	MovieDetailDbUtil movieDetailDbUtil;
	
	@Resource(name="jdbc/movie_search")
	
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
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
			getGenre(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
	
	
	private void getGenre(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String sql = "SELECT * FROM movies2 ";
		String genre=null;
		
		if (request.getParameter("genre") == null){
			genre= "all";
		}
		
		if (request.getParameter("genre") != null){
			genre= request.getParameter("genre").toLowerCase();
		}
		
		
//		if (!request.getParameter("genre").equals("") ) {
			String[] genres = {"action","drama", "adventure", "family", "comedy", "mystery","horror","romance","documentary", "biography", "other"};
	       
			for (int i = 0; i < genres.length; i++) {
			  	if (genre.equals(genres[i])) 
			  		sql += " where genre=\'"+genre+"\'";
			  	 
			}
//		}
		System.out.println(genre);
		System.out.println(sql);
	
		List<Movie> movies;
			movies = movieDetailDbUtil.getSearchResult(sql);
			request.setAttribute("Genre_Movies", movies);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/fe-category-list.jsp");
			dispatcher.forward(request, response);			

	}
}