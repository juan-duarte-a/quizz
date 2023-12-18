package app.jdev.quizz.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.jdev.quizz.model.entity.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Integer> {
    
}
