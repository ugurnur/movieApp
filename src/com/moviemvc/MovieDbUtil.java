package com.moviemvc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;


public class MovieDbUtil {
	private DataSource dataSource; 
	
	public MovieDbUtil (DataSource theDataSource) {
		dataSource = theDataSource;
	}
	
	public List<Movie> getMovies() throws Exception {
		List<Movie> movies = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStatement = null;
		ResultSet resultSet = null;
		
		try {
			
//			get a connection
			myConn = dataSource.getConnection();
//			myConn=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_search","root","!!Ugur34");  

			// query
			String sql = "SELECT * FROM movies2";
			myStatement = myConn.createStatement();
			resultSet = myStatement.executeQuery(sql);
			
			while(resultSet.next()) {

				
				int id = resultSet.getInt("id");
				String title = resultSet.getString("title");
				int year = resultSet.getInt("year");
				String genre = resultSet.getString("genre");
				float imdb = resultSet.getFloat("imdb");
				String cast = resultSet.getString("cast");
				String awards = resultSet.getString("awards");
				String url = resultSet.getString("url");
				
		
				
				
				Movie tempMovie = new Movie(id, title, year, genre, imdb, cast, awards, url);
				
				movies.add(tempMovie);
			}			
			// return list object
			return movies;
		}
		finally {
			close(myConn, myStatement, resultSet);
		}
	}

	private void close(Connection myConn, Statement myStatement, ResultSet resultSet) {
		try {
			if (myConn != null) myConn.close();
			if (myStatement != null) myStatement.close();
			if (resultSet != null) resultSet.close();		
		}
		catch (Exception exc){
			exc.printStackTrace();	
		}
		
	}

}
