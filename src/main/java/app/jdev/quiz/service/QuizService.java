package app.jdev.quiz.service;

import java.time.LocalDateTime;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import lombok.Getter;
import org.springframework.stereotype.Service;

import app.jdev.quiz.model.QuizInstance;
import app.jdev.quiz.model.QuizResult;
import app.jdev.quiz.model.entity.Question;
import app.jdev.quiz.model.repository.QuestionRepository;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QuizService {

    public static final int EXPIRATION_HOURS = 2;

    private final QuestionRepository questionRepository;
    
    private ConcurrentHashMap<String, QuizInstance> quizzes;
    private int maxConcurrentQuizzes;
    @Getter
    private int numberOfQuestions;

    @PostConstruct
    public void postConstruct() {
        maxConcurrentQuizzes = 0;
        quizzes = new ConcurrentHashMap<>();
        numberOfQuestions = (int) questionRepository.count();
        ScheduledExecutorService executor = Executors.newSingleThreadScheduledExecutor();
        executor.scheduleWithFixedDelay(new QuizInstanceControl(this),
                EXPIRATION_HOURS * 60, 45, TimeUnit.MINUTES);
    }

    public Question startQuiz(int questionNumber, String sessionId) {
        var quiz = new QuizInstance(this);
        quiz.setStartQuestion(questionNumber - 1);
        quiz.setCurrentQuestion(questionNumber - 1);
        quizzes.put(sessionId, quiz);
        maxConcurrentQuizzes = Math.max(quizzes.size(), maxConcurrentQuizzes);
        LogService.log("Quiz started (" + sessionId + ") -- Start question: "
                + questionNumber + " -- Max concurrent quizzes: " + maxConcurrentQuizzes);
        return quiz.getNext();
    }

    public Question getQuestion(Integer id) {
        return questionRepository.findById(id).orElseThrow();
    }

    public Question nextQuestion(String sessionId) {
        if (!quizzes.containsKey(sessionId)) { return null; }
        return quizzes.get(sessionId).getNext();
    }

    public Question answerQuestion(int option, String sessionId) {
        if (!quizzes.containsKey(sessionId)) { return null; }
        return quizzes.get(sessionId).answerQuestion(option);
    }

    public boolean expired(QuizInstance quiz) {
        return quiz.getTimeStamp().plusHours(EXPIRATION_HOURS).isBefore(LocalDateTime.now());
    }

    public void removeExpiredQuizzes() {
        int initialQuizzes = quizzes.size();
        quizzes.entrySet().stream()
                .filter(entry -> expired(entry.getValue()))
                .forEach(entry -> quizzes.remove(entry.getKey()));

        int remainingQuizzes = quizzes.size();
        if (initialQuizzes != remainingQuizzes) {
            LogService.log("Task execution: remove expired quizzes -- Initial quizzes: "
                    + initialQuizzes + ", remaining quizzes: " + remainingQuizzes);
        }
    }

    public boolean moreQuestions(String sessionId) {
        if (!quizzes.containsKey(sessionId)) { return false; }
        return getQuestion(quizzes.get(sessionId).getCurrentQuestion())
                .getNumber() < numberOfQuestions;
    }

    public QuizResult getResult(String sessionId) {
        if (!quizzes.containsKey(sessionId)) { return null; }
        var quiz = quizzes.get(sessionId);
        var quizResult = new QuizResult(
                numberOfQuestions - quiz.getStartQuestion(),
                quiz.getPoints());
        
        LogService.log("Quiz finished (" + sessionId + ") -- Result: " + quizResult);
        return quizResult;
    }

    public boolean isQuestionAnswered(int questionNumber, String sessionId) {
        if (!quizzes.containsKey(sessionId)) { return false; }
        return quizzes.get(sessionId).getCurrentQuestion() > questionNumber;
    }

    public int getCurrentQuestion(String sessionId) {
        if (!quizzes.containsKey(sessionId)) { return 1; }
        return quizzes.get(sessionId).getCurrentQuestion();
    }

    public boolean isCurrentQuestionAnswered(String sessionId) {
        if (!quizzes.containsKey(sessionId)) { return false; }
        return quizzes.get(sessionId).isCurrentAnswered();
    }

}
