package app.jdev.quizz.service;

import java.time.LocalDateTime;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import org.springframework.stereotype.Service;

import app.jdev.quizz.model.QuizzInstance;
import app.jdev.quizz.model.QuizzResult;
import app.jdev.quizz.model.entity.Question;
import app.jdev.quizz.model.repository.QuestionRepository;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QuizzService {

    public static final int EXPIRATION_HOURS = 2;

    private final QuestionRepository questionRepository;
    private ConcurrentHashMap<String, QuizzInstance> quizzes;
    private QuizzInstanceControl quizzInstanceControl;
    private ScheduledExecutorService executor;
    private int maxConcurrentQuizzes;
    private int numberOfQuestions;

    @PostConstruct
    public void postConstruct() {
        maxConcurrentQuizzes = 0;
        quizzes = new ConcurrentHashMap<>();
        numberOfQuestions = (int) questionRepository.count();
        quizzInstanceControl = new QuizzInstanceControl(this);
        executor = Executors.newSingleThreadScheduledExecutor();
        executor.scheduleWithFixedDelay(quizzInstanceControl,
                EXPIRATION_HOURS * 60, 45, TimeUnit.MINUTES);
    }

    public Question startQuizz(int questionNumber, String sessionId) {
        var quizz = new QuizzInstance(this);
        quizz.setStartQuestion(questionNumber - 1);
        quizz.setCurrentQuestion(questionNumber - 1);
        quizzes.put(sessionId, quizz);
        maxConcurrentQuizzes = Math.max(quizzes.size(), maxConcurrentQuizzes);
        LogService.log("Quizz started (" + sessionId + ") -- Start question: " 
                + questionNumber + " -- Max concurrent quizzes: " + maxConcurrentQuizzes);
        return quizz.getNext();
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

    public boolean expired(QuizzInstance quizz) {
        return quizz.getTimeStamp().plusHours(EXPIRATION_HOURS)
                .compareTo(LocalDateTime.now()) < 0;
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

    public QuizzResult getResult(String sessionId) {
        if (!quizzes.containsKey(sessionId)) { return null; }
        var quizz = quizzes.get(sessionId);
        var quizzResult = new QuizzResult(
                numberOfQuestions - quizz.getStartQuestion(), 
                quizz.getPoints());
        
        quizzes.remove(sessionId);
        LogService.log("Quizz finished (" + sessionId + ") -- Result: " + quizzResult);
        return quizzResult;
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

    public int getNumberOfQuestions() {
        return numberOfQuestions;
    }

}
