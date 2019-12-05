package com.moviemvc;


public class Movie {
	private int id;
	private String title;
	private int year;
	private String genre;
	private float imdb_rate;
	private String cast;
	private String awards;
	private String trailerUrl;
	private String imgUrl;
	
	
	public Movie(String title, int year, String genre, float imdb_rate, String cast, String awards, String trailerUrl, String imgUrl) {
		super();
		this.title = title;
		this.year = year;
		this.genre = genre;
		this.imdb_rate = imdb_rate;
		this.cast = cast;
		this.cast = cast;
		this.awards = awards;
		this.trailerUrl = trailerUrl;
		this.imgUrl = imgUrl;
		
	}
	
	public Movie(int id, String title, int year, String genre, float imdb_rate, String cast, String awards, String trailerUrl, String imgUrl) {
		this.id = id;
		this.title = title;
		this.year = year;
		this.genre = genre;
		this.imdb_rate = imdb_rate;
		this.cast = cast;
		this.cast = cast;
		this.awards = awards;
		this.trailerUrl = trailerUrl;
		this.imgUrl = imgUrl;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public float getImdb_rate() {
		return imdb_rate;
	}

	public void setImdb_rate(float imdb_rate) {
		this.imdb_rate = imdb_rate;
	}

	public String getCast() {
		return cast;
	}

	public void setCast(String cast) {
		this.cast = cast;
	}

	public String getAwards() {
		return awards;
	}

	public void setAwards(String awards) {
		this.awards = awards;
	}

	public void setTrailerUrl(String trailerUrl) {
		this.trailerUrl = trailerUrl;
	}
	
	public String getTrailerUrl() {
		return trailerUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	
	public String getImgUrl() {
		return imgUrl;
	}

	
}
