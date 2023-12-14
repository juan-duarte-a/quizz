package app.jdev.simulacro.service;

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

    private int currentQuestion;

    @PostConstruct
    private void postConstruct() {
        this.currentQuestion = 0;
    }

    public Question getNext() {
        return quizzService.getQuestion(++currentQuestion);
    }

    public Question getPrevious() {
        return quizzService.getQuestion(--currentQuestion);
    }

    public Question answerQuestion(int option) {
        Question current = quizzService.getQuestion(currentQuestion);
        current.setSelected(current.getAnswerOptions().get(option - 1));
        return current;
    }

}