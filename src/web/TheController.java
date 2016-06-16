package web;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import model.Comment;
import model.Post;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public void goHome(@RequestParam(required=false, defaultValue="1") int page, 
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {	
		Collection<Post> posts = postService.findPostsWithOffset((page-1)*5, 5);
		request.setAttribute("posts", posts);
		request.setAttribute("pageNo", page);
		request.setAttribute("pageCount", (postService.getPostCount()-1)/5+1);
		System.out.println(page);
		request.getRequestDispatcher("WEB-INF/view/index.jsp").forward(request, response);
	}
	
	@RequestMapping("/search.html")
	public void goSearch(@RequestParam(required=false, defaultValue="1") int page, 
			@RequestParam String query, 
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {	
		Collection<Post> posts = postService.findPostsWithOffsetAndFilter(query, (page-1)*5, 5);
		request.setAttribute("posts", posts);
		request.setAttribute("query", query);
		request.setAttribute("pageNo", page);
		int pageCount = (postService.getFilteredPostCount(query)-1)/5+1;
		request.setAttribute("pageCount", pageCount);
		request.getRequestDispatcher("WEB-INF/view/search.jsp").forward(request, response);
	}
	
	@RequestMapping("/post.html")
	public void viewpost(@RequestParam int id, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Post post = postService.findById(id);
		request.setAttribute("post", post);
		request.getRequestDispatcher("WEB-INF/view/post.jsp").forward(request, response);
	}
	
	@RequestMapping("/submit_post")
	public void submitPost(@RequestParam MultipartFile attachment, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SerialException, SQLException {	
		Post p = new Post(request.getParameter("title"),
							request.getParameter("author"),
							request.getParameter("content"),
							Calendar.getInstance().getTime());
		if(attachment.getSize()>0){
			Blob blob = new SerialBlob(IOUtils.toByteArray(attachment.getInputStream()));
			p.setFileData(blob);
		}
		
		postService.addPost(p);
		response.sendRedirect("index.html");	
	}
	
	@RequestMapping("/submit_comment")
	public void submitComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Post p = postService.findById(Integer.parseInt(request.getParameter("postId")));
		Comment c = new Comment(request.getParameter("author"),
								request.getParameter("content"),
								Calendar.getInstance().getTime());
		p.addComment(c);
		postService.updatePost(p);
		response.sendRedirect("post.html?id="+p.getId());	
	}
}
