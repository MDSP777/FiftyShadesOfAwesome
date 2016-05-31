package service;

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
}
