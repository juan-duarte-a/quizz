package app.jdev.quiz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import app.jdev.quiz.model.QuizResult;
import app.jdev.quiz.service.QuizService;
import app.jdev.quiz.service.QuoteService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class AppController {

    private final QuizService quizService;
    private final QuoteService quoteService;

    @GetMapping
    public String getHome(Model model) {
        model.addAttribute("quote", quoteService.getQuote());
        model.addAttribute("numberOfQuestions", quizService.getNumberOfQuestions());
        return "home";
    }

    @GetMapping("quiz")
    public String startQuiz(@RequestParam(required = false, defaultValue = "1") int questionNumber,
                            HttpSession session, Model model) {
        String sessionId = Integer.toHexString(session.hashCode());
        model.addAttribute("question", quizService.startQuiz(questionNumber, sessionId));
        model.addAttribute("numberOfQuestions", quizService.getNumberOfQuestions());
        model.addAttribute("sessionId", sessionId);
        return "home";
    }

    @PostMapping("check")
    public String checkQuestion(@RequestParam int option, @RequestParam String sessionId,
            @RequestParam int questionNumber, Model model) {
        if (quizService.isCurrentQuestionAnswered(sessionId)
                || quizService.isQuestionAnswered(questionNumber, sessionId)) {
            model.addAttribute("question", quizService.getQuestion(questionNumber));
        } else {
            model.addAttribute("question", quizService.answerQuestion(option, sessionId));
        }

        model.addAttribute("numberOfQuestions", quizService.getNumberOfQuestions());
        model.addAttribute("sessionId", sessionId);
        model.addAttribute("check", true);
        model.addAttribute("selected", option);
        return "home";
    }

    @PostMapping("quiz")
    public String nextQuestion(@RequestParam String sessionId, @RequestParam int questionNumber, Model model) {
        if (quizService.moreQuestions(sessionId)) {
            if (quizService.isQuestionAnswered(questionNumber, sessionId)
                    && !quizService.isCurrentQuestionAnswered(sessionId)) {
                int currentQuestion = quizService.getCurrentQuestion(sessionId);
                model.addAttribute("question", quizService.getQuestion(currentQuestion));
            } else {
                model.addAttribute("question", quizService.nextQuestion(sessionId));
            }

            model.addAttribute("numberOfQuestions", quizService.getNumberOfQuestions());
            model.addAttribute("sessionId", sessionId);
            return "home";
        } else {
            QuizResult result = quizService.getResult(sessionId);
            model.addAttribute("result", result);
            return "result";
        }
    }

    @GetMapping("check")
    public String avoidGetRequestAction() {
        return "redirect:/go-back";
    }

    @GetMapping("go-back")
    public String goBack() {
        return "go-back";
    }

}