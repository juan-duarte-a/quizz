package app.jdev.quizz.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.jdev.quizz.entity.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Integer> {
    
}
