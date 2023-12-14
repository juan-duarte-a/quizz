package app.jdev.simulacro.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import app.jdev.simulacro.entity.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Integer> {
    
}
