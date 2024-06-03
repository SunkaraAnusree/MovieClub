package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Movielist;
import com.klef.jfsd.springboot.model.User;

public interface UserService 
{
	public  String adduser(User user);
	public User checkuserlogin(String email,String pwd);
	public String AddMovie(Movielist movie);
	public List<Movielist> ViewAllMovies();
	public Movielist ViewMovieByID(int movieid);
	public void DeleteMovieByID(int movieid);
	public List<Movielist> viewallmoviesbycategory(String category);
}
