package app.jdev.quiz.service;

import java.time.LocalDateTime;

public class LogService {

    private LogService() { }
    
    public static void log(String message) {
        System.out.println(LocalDateTime.now() + " --- " + message);
    }

}
