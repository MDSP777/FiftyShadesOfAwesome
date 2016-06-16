package model;

import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
	@OneToMany(mappedBy="post", cascade=CascadeType.ALL, fetch=FetchType.EAGER)
	List<Comment> commentsList;
	private Blob fileData;
	
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
		return (content.length()<550) ? content : content.replaceAll("\n\n", "<br/><br/>").substring(0, 550)+"...";
	}
	public String getFullContent() {
		return content.replaceAll("\n", "<br/>");
	}
	public String getDatePosted() {
        SimpleDateFormat formatter = new SimpleDateFormat("MMMMM d, yyyy", new Locale("en", "US"));
		return formatter.format(datePosted);
	}
	public Collection<Comment> getCommentsList() {
		Collections.sort(commentsList);
		return commentsList;
	}
	public void addComment(Comment c){
		commentsList.add(c);
		c.setPost(this);
	}
	public String getFileData() throws SQLException {
		byte[] imgData = fileData.getBytes(1, (int)fileData.length());
		return new String(Base64.getEncoder().encode(imgData));
	}
	public void setFileData(Blob fileData) {
		this.fileData = fileData;
	}
}
