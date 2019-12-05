package com.moviemvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
			myConn = dataSource.getConnection();
			myStatement = myConn.prepareStatement("SELECT * FROM movie_search.movies2 WHERE id = ?");
			myStatement.setInt(1, movieId);

			
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
	
	public void addMovie(Movie movie) throws Exception {
		Connection myConn = null;
		PreparedStatement myStatement = null;
		
		
		try {
			myConn = dataSource.getConnection();
			String sql = "INSERT INTO movies2 " +
					"(title, year, genre, imdb, cast, awards, url) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?)";
			
			myStatement = myConn.prepareStatement(sql);
			myStatement.setString(1, movie.getTitle());
			myStatement.setInt(2, movie.getYear());
			myStatement.setString(3, movie.getGenre());
			myStatement.setFloat(4, movie.getImdb_rate());
			myStatement.setString(5, movie.getCast());
			myStatement.setString(6, movie.getAwards());
			myStatement.setString(7, movie.getTrailerUrl());
			myStatement.execute();

		}
		finally {
			close(myConn,myStatement, null );
		}
		
	}
	
	public List<Movie> getMovies() throws Exception {
		List<Movie> movies = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStatement = null;
		ResultSet resultSet = null;
		
		try {

			myConn = dataSource.getConnection();

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
	
	

}
