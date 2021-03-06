package com.hr.app.models.database;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.hr.app.models.api_helpers.AnswerModelDto;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "answers")
public class AnswersModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @ManyToOne
    @JoinColumn(name = "question_id", foreignKey = @ForeignKey(name = "FKanswerQuestion"))
    @JsonBackReference(value = "answer-question")
    @JsonIgnore
    private QuestionsModel FKanswerQuestion;

    @Column(name = "text")
    private String text;

    @Column(name = "is_correct")
    private boolean isCorrect;

    @Column(name = "points")
    private int points;


    // =========================================
    // RELATIONSHIPS
    // =========================================

    @OneToMany(mappedBy = "FKanswerIduserAnswer")
    @JsonBackReference(value = "answer_id_user_answer")
    private List<UserAnswersModel> userAnswers;


    // =========================================
    // GETTERS, SETTERS, CONSTRUCTORS
    // =========================================


    public boolean isCorrect() {
        return isCorrect;
    }

    public void setCorrect(boolean correct) {
        isCorrect = correct;
    }

    public long getId() {
        return id;
    }

    public QuestionsModel getFKanswerQuestion() {
        return FKanswerQuestion;
    }

    public String getText() {
        return text;
    }

    public int getPoints() {
        return points;
    }

    public void setFKanswerQuestion(QuestionsModel FKanswerQuestion) {
        this.FKanswerQuestion = FKanswerQuestion;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public void setUserAnswers(List<UserAnswersModel> userAnswers) {
        this.userAnswers = userAnswers;
    }

    protected AnswersModel() { }

    public AnswersModel(QuestionsModel FKanswerQuestion, String text, boolean isCorrect,
                        int points, List<UserAnswersModel> userAnswers) {
        this.FKanswerQuestion = FKanswerQuestion;
        this.text = text;
        this.isCorrect = isCorrect;
        this.points = points;
        this.userAnswers = userAnswers;
    }

    public AnswersModel(AnswerModelDto answerModelDto) {
        this.text = answerModelDto.getText();

        this.isCorrect = answerModelDto.isCorrect();

        this.points = answerModelDto.getPoints();
    }
}
