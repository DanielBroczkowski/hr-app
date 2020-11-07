package com.hr.app.models.dto;

public class UserPanelListOfAnnoncementsDto {
    private String companyName;
    private String announcementName;
    private String quizCode;
    private Boolean isCompleted;

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public void setAnnouncementName(String announcementName) {
        this.announcementName = announcementName;
    }

    public void setQuizCode(String quizCode) {
        this.quizCode = quizCode;
    }

    public void setCompleted(Boolean completed) {
        isCompleted = completed;
    }

    public String getCompanyName() {
        return companyName;
    }

    public String getAnnouncementName() {
        return announcementName;
    }

    public String getQuizCode() {
        return quizCode;
    }

    public Boolean getCompleted() {
        return isCompleted;
    }

    public UserPanelListOfAnnoncementsDto() {
    }

    public UserPanelListOfAnnoncementsDto(String companyName, String announcementName) {
        this.companyName = companyName;
        this.announcementName = announcementName;
    }

    public UserPanelListOfAnnoncementsDto(String companyName, String announcementName, String quizCode,
                                          Boolean isCompleted) {
        this.companyName = companyName;
        this.announcementName = announcementName;
        this.quizCode = quizCode;
        this.isCompleted = isCompleted;
    }
}
