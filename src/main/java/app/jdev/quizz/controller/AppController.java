package app.jdev.quizz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import app.jdev.quizz.service.QuizzService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequestMapping("/")
@RequiredArgsConstructor
public class AppController {

    private final QuizzService quizzService;

    @GetMapping
    public String getHome() {
        return "home";
    }

    @GetMapping("quizz")
    public String startQuizz(HttpSession session, Model model) {
        String sessionId = Integer.toHexString(session.hashCode());
        model.addAttribute("question", quizzService.startQuizz(sessionId));
        model.addAttribute("numberOfQuestions", quizzService.getNumberOfQuestions());
        model.addAttribute("sessionId", sessionId);
        return "home";
    }

    @PostMapping("check")
    public String checkQuestion(@RequestParam int option, @RequestParam String sessionId,
            @RequestParam int questionNumber, Model model) {
        if (quizzService.isCurrentQuestionAnswered(sessionId)
                || quizzService.isQuestionAnswered(questionNumber, sessionId)) {
            model.addAttribute("question", quizzService.getQuestion(questionNumber));
        } else {
            model.addAttribute("question", quizzService.answerQuestion(option, sessionId));
        }

        model.addAttribute("numberOfQuestions", quizzService.getNumberOfQuestions());
        model.addAttribute("sessionId", sessionId);
        model.addAttribute("check", true);
        model.addAttribute("selected", option);
        return "home";
    }

    @PostMapping("quizz")
    public String nextQuestion(@RequestParam String sessionId, @RequestParam int questionNumber, Model model) {
        if (quizzService.moreQuestions(sessionId)) {
            if (quizzService.isQuestionAnswered(questionNumber, sessionId)
                    && !quizzService.isCurrentQuestionAnswered(sessionId)) {
                int currentQuestion = quizzService.getCurrentQuestion(sessionId);
                model.addAttribute("question", quizzService.getQuestion(currentQuestion));
            } else {
                model.addAttribute("question", quizzService.nextQuestion(sessionId));
            }

            model.addAttribute("numberOfQuestions", quizzService.getNumberOfQuestions());
            model.addAttribute("sessionId", sessionId);
            return "home";
        } else {
            model.addAttribute("result", quizzService.getResult(sessionId));
            return "result";
        }
    }

}