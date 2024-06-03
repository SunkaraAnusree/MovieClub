package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Movielist;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.repository.UserRepository;
import com.klef.jfsd.springboot.repository.movielistRepository;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	private UserRepository userrepository;
	
	@Autowired 
	private movielistRepository movielistRepository;
	
	@Override
	public User checkuserlogin(String email, String pwd) 
	{
		return userrepository.checkuserlogin(email, pwd);
	}
	@Override
	public String adduser(User user) 
	{
		userrepository.save(user);
		return "User Added Successfully";
	}
	@Override
	public String AddMovie(Movielist movie) 
	{
		movielistRepository.save(movie);
		return "Movie Added Successfully";
	}
	@Override
	public List<Movielist> ViewAllMovies() 
	{
		return (List<Movielist>) movielistRepository.findAll();
	}
	@Override
	public Movielist ViewMovieByID(int movieid) {
		return movielistRepository.findById(movieid).get();
	}
	@Override
	public void DeleteMovieByID(int movieid) 
	{
		movielistRepository.deleteById(movieid);	
	}
	@Override
	public List<Movielist> viewallmoviesbycategory(String category) 
	{
		return movielistRepository.viewallmoviesbycategory(category);
	}
}
