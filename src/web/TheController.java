package web;

import java.io.IOException;
import java.util.Calendar;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.PostService;

@Controller
public class TheController {
	@Autowired
	private PostService postService;
	
	@RequestMapping({"/about.html", "/"})
	public void goToAbout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		request.getRequestDispatcher("WEB-INF/view/about.jsp").forward(request, response);
	}
	
	@RequestMapping("/index.html")
	public void goHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Collection<Post> posts = postService.findAll();
		request.setAttribute("posts", posts);
		request.getRequestDispatcher("WEB-INF/view/index.jsp").forward(request, response);
	}
	
	@RequestMapping("/post.html")
	public void viewpost(@RequestParam int id, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Post post = postService.findById(id);
		request.setAttribute("post", post);
		request.getRequestDispatcher("WEB-INF/view/post.jsp").forward(request, response);
	}
	
	@RequestMapping("/submit_post")
	public void submitPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		System.out.println(request.getParameter("author"));
		System.out.println(request.getParameter("title"));
		System.out.println(request.getParameter("content"));
		
		Post p = new Post(request.getParameter("title"),
							request.getParameter("author"),
							request.getParameter("content"),
							Calendar.getInstance().getTime());
		
		postService.addPost(p);
		response.sendRedirect("index.html");
		
	}
}
