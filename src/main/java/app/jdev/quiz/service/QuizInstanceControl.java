package app.jdev.quiz.service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class QuizInstanceControl implements Runnable {

    private final QuizService quizService;

    @Override
    public void run() {
        quizService.removeExpiredQuizzes();
    }
    
}
