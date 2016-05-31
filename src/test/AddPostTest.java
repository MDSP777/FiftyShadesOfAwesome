package test;

import java.util.Calendar;

import model.Comment;
import model.Post;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import service.PostService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "/ApplicationContext.xml" })
public class AddPostTest {
	@Autowired
	private PostService postService;
	
	@Test
	public void addPost(){
		Post p = new Post("Rissa is Awesome", 
				"Shayane", 
				"Rissa is awesome. She's my bae but she likes biting other people. "
				+ "I also think she's married to another person.", 
				Calendar.getInstance().getTime());
		p.addComment(new Comment("Rissa", "SHAYANE!", Calendar.getInstance().getTime()));
		p.addComment(new Comment("Marc", "HAHAHAHAHAHHA", Calendar.getInstance().getTime()));
		p.addComment(new Comment("Stanley", "POTATO!", Calendar.getInstance().getTime()));
		
		postService.addPost(p);
	}
}
