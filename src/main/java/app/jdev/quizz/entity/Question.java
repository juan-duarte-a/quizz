package app.jdev.quizz.entity;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Question {
    
    @Id
    private Integer number;

    @Column(nullable = false)
    private String text;

    @OneToMany(mappedBy = "question", cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
    private List<AnswerOption> answerOptions;

    @Transient
    private AnswerOption selected;

}
