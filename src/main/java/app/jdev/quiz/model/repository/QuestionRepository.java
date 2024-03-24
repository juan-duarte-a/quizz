package app.jdev.quiz.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.jdev.quiz.model.entity.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Integer> {
    
}
