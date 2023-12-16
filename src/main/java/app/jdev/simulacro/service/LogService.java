package app.jdev.simulacro.service;

import java.time.LocalDateTime;

public class LogService {

    private LogService() { }
    
    public static void log(String message) {
        System.out.println(LocalDateTime.now() + " --- " + message);
    }

}
