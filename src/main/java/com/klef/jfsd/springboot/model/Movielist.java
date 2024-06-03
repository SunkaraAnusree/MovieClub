package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="movielist_table")
public class Movielist 
{
	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private int id;
	  @Column(nullable = false,length = 100)
	  private String category;
	  @Column(nullable = false,length = 100)
	  private String moviename;
	  @Column(nullable = false,length = 1000)
	  private String description;
	  @Column(length = 200)
	  private String movielink;
	  private Blob movieimage;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMoviename() {
		return moviename;
	}
	public void setMoviename(String moviename) {
		this.moviename = moviename;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMovielink() {
		return movielink;
	}
	public void setMovielink(String movielink) {
		this.movielink = movielink;
	}
	public Blob getMovieimage() {
		return movieimage;
	}
	public void setMovieimage(Blob movieimage) {
		this.movieimage = movieimage;
	}
}
