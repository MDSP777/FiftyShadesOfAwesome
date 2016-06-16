package model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

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
public class Comment implements Comparable<Comment>  {
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

	public String getDatePosted() {
        SimpleDateFormat formatter = new SimpleDateFormat("EEEEE, MMMMM d, yyyy 'at' h:mma", new Locale("en", "US"));
        return formatter.format(datePosted);
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	@Override
	public int compareTo(Comment o) {
		if(datePosted.before(o.datePosted)) return 1;
		else if (datePosted.after(o.datePosted)) return -1;
		else return 0;
	}	
}
