package app.jdev.simulacro.service;

import java.time.LocalDateTime;

import app.jdev.simulacro.entity.Question;
import jakarta.annotation.PostConstruct;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public class QuizzInstance {

    @Getter(AccessLevel.NONE)
    private final QuizzService quizzService;

    private int points;
    private int currentQuestion;
    private boolean currentAnswered;
    private LocalDateTime timeStamp;

    @PostConstruct
    private void postConstruct() {
        points = 0;
        currentQuestion = 0;
        currentAnswered = false;
        timeStamp = LocalDateTime.now();
    }

    public Question getNext() {
        timeStamp = LocalDateTime.now();
        currentAnswered = false;
        return quizzService.getQuestion(++currentQuestion);
    }

    public Question getPrevious() {
        timeStamp = LocalDateTime.now();
        return quizzService.getQuestion(--currentQuestion);
    }

    public Question answerQuestion(int option) {
        Question current = quizzService.getQuestion(currentQuestion);
        current.setSelected(current.getAnswerOptions().get(option - 1));
        if (current.getSelected().isCorrect()) { points++; }
        currentAnswered = true;
        return current;
    }

}