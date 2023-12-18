package app.jdev.quizz.model;

public record QuizzResult(int questionsAnswered, int correct) {
    
    public int wrong() {
        return questionsAnswered - correct;
    }

    public int percentage() {
        return (int) Math.round(((double) correct / questionsAnswered) * 100);
    }

}
