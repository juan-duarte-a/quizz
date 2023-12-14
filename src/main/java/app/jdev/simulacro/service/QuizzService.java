package app.jdev.simulacro.service;

import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Service;

import app.jdev.simulacro.entity.Question;
import app.jdev.simulacro.repository.QuestionRepository;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QuizzService {

    private final QuestionRepository questionRepository;
    private ConcurrentHashMap<String, QuizzInstance> quizzes;

    @PostConstruct
    public void postConstruct( ) {
        quizzes = new ConcurrentHashMap<>();
    }

    public Question startQuizz(String sessionId) {
        var quizz = new QuizzInstance(this);
        quizzes.put(sessionId, quizz);
        return quizz.getNext();
    }

    public Question getQuestion(Integer id) {
        return questionRepository.findById(id).orElseThrow();
    }

    public Question nextQuestion(String sessionId) {
        return quizzes.get(sessionId).getNext();
    }

    public Question answerQuestion(int option, String sessionId) {
        return quizzes.get(sessionId).answerQuestion(option);
    }

}
