package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Comment {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String author;
	@Lob
	private String content;
	@Temporal(TemporalType.TIMESTAMP)
	private Date datePosted;
	@ManyToOne
	@JoinColumn(name="post_id")
	private Post post;
	
	protected Comment(){}
	
	public Comment(String author, String content, Date datePosted) {
		super();
		this.author = author;
		this.content = content;
		this.datePosted = datePosted;
	}

	public int getId() {
		return id;
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

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}	
}
