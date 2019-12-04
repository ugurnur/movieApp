package com.moviemvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;


import javax.sql.DataSource;

public class MovieDetailDbUtil {
private DataSource dataSource; 
	
	public MovieDetailDbUtil (DataSource theDataSource) {
		dataSource = theDataSource;
	}
	
	public Movie getMovie(int movieid) throws Exception {
		Movie movie = null;
		int movieId = movieid;
		
		Connection myConn = null;
		PreparedStatement myStatement = null;
		ResultSet resultSet = null;
		
		try {
			
//			get a connection
			myConn = dataSource.getConnection();
//			myConn=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_search","root","!!Ugur34");  

			// query

			myStatement = myConn.prepareStatement("SELECT * FROM movie_search.movies2 WHERE id = ?");
			myStatement.setInt(1, movieId);
			System.out.println(movieId);
			
			resultSet = myStatement.executeQuery();
			

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
				movie = tempMovie;
			}
			return movie;
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
