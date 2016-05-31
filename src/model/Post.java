package model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Post {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String title;
	private String author;
	@Lob
	private String content;
	@Temporal(TemporalType.TIMESTAMP)
	private Date datePosted;
	@OneToMany(mappedBy="post", cascade=CascadeType.ALL)
	Collection<Comment> commentsList;
	
	protected Post(){}
	
	public Post(String title, String author, String content, Date datePosted) {
		super();
		this.title = title;
		this.author = author;
		this.content = content;
		this.datePosted = datePosted;
		commentsList = new ArrayList<Comment>();
	}
	
	public int getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getAuthor() {
		return author;
	}
	public String getContent() {
		return content;
	}
	public Date getDatePosted() {
		return datePosted;
	}
	public Collection<Comment> getCommentsList() {
		return commentsList;
	}
	public void addComment(Comment c){
		commentsList.add(c);
		c.setPost(this);
	}
}
