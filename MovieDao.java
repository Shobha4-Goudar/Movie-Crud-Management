package moviecrud.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import moviecrud.entity.Movie;

@Component
public class MovieDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("m17");
	EntityManager manager = factory.createEntityManager();
	EntityTransaction transaction = manager.getTransaction();

	public void save(Movie movie) {
		transaction.begin();
		manager.persist(movie);
		transaction.commit();
	}

	public List<Movie> getMovies() {
		return manager.createNativeQuery("select * from movie", Movie.class).getResultList();
	}

	public Movie findById(int id) {
		return manager.find(Movie.class, id);
	}

	public void delete(int id) {
		transaction.begin();
		manager.remove(findById(id));
		transaction.commit();
	}

	public void update(Movie movie) {
		transaction.begin();
		manager.merge(movie);
		transaction.commit();
	}
}
