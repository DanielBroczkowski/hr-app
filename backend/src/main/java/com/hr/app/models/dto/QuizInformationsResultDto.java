package com.hr.app.models.dto;

public class QuizInformationsResultDto {
    private long quizId;
    private long amountOfQuestions;
    private boolean isBackPossible;
    private long timeForTestInMilis;

    public long getTimeForTestInMilis() {
        return timeForTestInMilis;
    }

    public void setTimeForTestInMilis(long timeForTestInMilis) {
        this.timeForTestInMilis = timeForTestInMilis;
    }

    public long getQuizId() {
        return quizId;
    }

    public void setQuizId(long quizId) {
        this.quizId = quizId;
    }

    public long getAmountOfQuestions() {
        return amountOfQuestions;
    }

    public void setAmountOfQuestions(long amountOfQuestions) {
        this.amountOfQuestions = amountOfQuestions;
    }

    public boolean isBackPossible() {
        return isBackPossible;
    }

    public void setBackPossible(boolean backPossible) {
        isBackPossible = backPossible;
    }

    public QuizInformationsResultDto(long quizId, long amountOfQuestions, boolean isBackPossible, long timeForTestInMilis) {
        this.quizId = quizId;
        this.amountOfQuestions = amountOfQuestions;
        this.isBackPossible = isBackPossible;
        this.timeForTestInMilis = timeForTestInMilis;
    }


}

