package service;

import java.util.Collection;

import javax.persistence.TypedQuery;

import model.Post;

import org.springframework.stereotype.Repository;

@Repository
public class PostService extends JpaService {
	public void addPost(Post p){
		openTransaction();
		try {
			entityManager.persist(p);
		} finally {
			closeTransaction();
		}
	}
	
	public Collection<Post> findAll(){
		openTransaction();
		try {
			TypedQuery<Post> q = entityManager.createQuery("Select p from Post p", Post.class);
			return q.getResultList();
		} finally {
			closeTransaction();
		}
	}

	public Post findById(int id) {
		openTransaction();
		try{
			return entityManager.find(Post.class, id);
		} finally {
			closeTransaction();
		}
	}
}
