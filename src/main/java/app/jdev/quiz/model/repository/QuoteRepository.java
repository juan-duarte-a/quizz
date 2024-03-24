package app.jdev.quiz.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.jdev.quiz.model.entity.Quote;

@Repository
public interface QuoteRepository extends CrudRepository<Quote, Long> {
    
}
