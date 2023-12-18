package app.jdev.quizz.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.jdev.quizz.entity.Quote;

@Repository
public interface QuoteRepository extends CrudRepository<Quote, Long> {
    
}
