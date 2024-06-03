package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Movielist;
import com.klef.jfsd.springboot.model.User;
import com.klef.jfsd.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
	private UserService userservice;
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	@GetMapping("userlogin") 
	public ModelAndView userlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userlogin");
		return mv;
	}
	@GetMapping("userreg")
	public ModelAndView userreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userreg");
		return mv;
	}
	@PostMapping("checkuserlogin")
	public ModelAndView checkuserlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		User u = userservice.checkuserlogin(email, pwd);
		if (u != null) {
			// session
			HttpSession session = request.getSession();

			session.setAttribute("uid", u.getId()); 
			session.setAttribute("uname", u.getName()); 

			// session
			mv.setViewName("userhome");
		} else {
			mv.setViewName("userlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	@PostMapping("adduser")
	public ModelAndView insert(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;

		try {
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String location = request.getParameter("location");
			String contact = request.getParameter("contact");
			User u = new User();
			u.setName(name);
			u.setGender(gender);
			u.setDateofbirth(dob);
			u.setEmail(email);
			u.setPassword(pwd);
			u.setLocation(location);
			u.setContact(contact);
			u.setActive(true);

			msg = userservice.adduser(u);

			mv.setViewName("displaymsg");
			mv.addObject("message", msg);
		} catch (Exception e) {
			msg = e.getMessage();

			mv.setViewName("displayerror");
			mv.addObject("message", msg);
		}
		return mv;
	}


	@GetMapping("userhome")
	   public ModelAndView userhome(HttpServletRequest request)
	   {
		 //session
		 HttpSession session=request.getSession();
		   
		  int uid=(int) session.getAttribute("uid"); 
		  String uname =(String)session.getAttribute("uname"); 
		   
		   //session
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("userhome");
	     mv.addObject("uid", uid);
	     mv.addObject("uname",uname);
	     return mv;
	   }
	   @GetMapping("addmovie")
	   public ModelAndView addmovie()
	   {
		   ModelAndView mv = new ModelAndView("addmovie");
		   return mv;
	   }
	   @PostMapping("insertmovie")
	   public ModelAndView insertmoviedemo(HttpServletRequest request,@RequestParam("movieimage") MultipartFile file) throws IOException, SerialException, SQLException
	   {
		   String msg = null;
		   
		   ModelAndView mv = new ModelAndView();
		   
		   try
		   {
		   String category = request.getParameter("category");
		   String moviename = request.getParameter("moviename");
		   String description = request.getParameter("description");
		   String movielink = request.getParameter("movielink");
		   
			  byte[] bytes = file.getBytes();
			  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			  
			  Movielist m = new Movielist();
			  m.setCategory(category);
			  m.setMoviename(moviename);
			  m.setDescription(description);
			  m.setMovielink(movielink);
			  m.setMovieimage(blob);
			  
			  msg=userservice.AddMovie(m);
			  System.out.println(msg);
			  mv.setViewName("moviemsg");
			  mv.addObject("message",msg);
		   }	  
		   catch(Exception e)
		   {
			   msg = e.getMessage();
			   System.out.println(msg.toString());
			   mv.setViewName("movieerror");
			   mv.addObject("message",msg);
		   }
		   return mv;
	   }
	   @GetMapping("viewallmovies")
	   public ModelAndView viewallprodsdemo()
	   {
		   List<Movielist> productlist = userservice.ViewAllMovies();
		   
		   ModelAndView mv = new ModelAndView("viewallmovies");
		   
		   mv.addObject("movielist", productlist);
		   
		   return mv;
	   }
	   
	@GetMapping("displaymovieimage")
	public ResponseEntity<byte[]> displaymovieimage(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Movielist movie =  userservice.ViewMovieByID(id);
	  byte [] imageBytes = null;
	  imageBytes = movie.getMovieimage().getBytes(1,(int) movie.getMovieimage().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	  @GetMapping("viewmoviesbyid")
	  public ModelAndView  viewproductbyiddemo()
	  {
	  	   List<Movielist> movielist=userservice.ViewAllMovies();
	  	   ModelAndView mv=new ModelAndView("viewmoviesbyid");
	  	   mv.addObject("movielist",movielist);
	  	   return mv;
	  }
	     
	     @PostMapping("displaymovie")
	     public ModelAndView displayproductdemo(HttpServletRequest request)
	     {
	  	   int mid=Integer.parseInt(request.getParameter("mid"));
	  	   Movielist movie=userservice.ViewMovieByID(mid);
	  	   ModelAndView mv=new ModelAndView("displaymovie");
	  	   mv.addObject("movie",movie);
	  	   return mv;
	     }
	     
	     @GetMapping("displaycategory")
	     public ModelAndView displaycategory() 
	     {
	       ModelAndView mv=new ModelAndView("displaycategory");
	       return mv;
	     }
	     @PostMapping("viewmoviesbycategory")
	     public ModelAndView viewmoviesbycategory(HttpServletRequest request)
	     {
	       String category = request.getParameter("category");
	       
	         List<Movielist> movielist = userservice.viewallmoviesbycategory(category);
	       
	       ModelAndView mv = new ModelAndView("viewallmovies");
	       
	       mv.addObject("movielist", movielist);
	       
	       return mv;
	     }
	     
	    }
