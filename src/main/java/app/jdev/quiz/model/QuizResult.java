package app.jdev.quiz.model;

public record QuizResult(int questionsAnswered, int correct) {
    
    public int wrong() {
        return questionsAnswered - correct;
    }

    public int percentage() {
        return (int) Math.round(((double) correct / questionsAnswered) * 100);
    }

}
