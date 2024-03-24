package app.jdev.quiz.model;

import java.time.LocalDateTime;

import app.jdev.quiz.model.entity.Question;
import app.jdev.quiz.service.QuizService;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QuizInstance {

    @Getter(AccessLevel.NONE)
    @Setter(AccessLevel.NONE)
    private final QuizService quizService;

    private int points;
    private int startQuestion;
    private int currentQuestion;
    private boolean currentAnswered;
    private LocalDateTime timeStamp;

    public QuizInstance(QuizService quizService) {
        this.quizService = quizService;
        postConstruct();
    }

    private void postConstruct() {
        points = 0;
        currentQuestion = 0;
        startQuestion = 0;
        currentAnswered = false;
        timeStamp = LocalDateTime.now();
    }

    public Question getNext() {
        timeStamp = LocalDateTime.now();
        currentAnswered = false;
        return quizService.getQuestion(++currentQuestion);
    }

    public Question getPrevious() {
        timeStamp = LocalDateTime.now();
        return quizService.getQuestion(--currentQuestion);
    }

    public Question answerQuestion(int option) {
        Question current = quizService.getQuestion(currentQuestion);
        current.setSelected(current.getAnswerOptions().get(option - 1));
        if (current.getSelected().isCorrect()) { points++; }
        currentAnswered = true;
        return current;
    }

}