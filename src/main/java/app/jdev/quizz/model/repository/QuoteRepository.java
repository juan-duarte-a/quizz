package app.jdev.quizz.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.jdev.quizz.model.entity.Quote;

@Repository
public interface QuoteRepository extends CrudRepository<Quote, Long> {
    
}
