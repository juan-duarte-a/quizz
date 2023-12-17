package app.jdev.quizz.service;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public class QuizzInstanceControl implements Runnable {

    private final QuizzService quizzService;

    @Override
    public void run() {
        quizzService.removeExpiredQuizzes();
    }
    
}
