package com.hr.app.models.database;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "hr_alert")
public class HrAlertModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @ManyToOne
    @JoinColumn(name = "announcement_id", foreignKey = @ForeignKey(name = "FKhrAlertAnnouncement"))
    @JsonBackReference(value = "hralert-announcement")
    @JsonIgnore
    private AnnouncementsModel FKhrAlertAnnouncement;

    @ManyToOne
    @JoinColumn(name = "user_id", foreignKey = @ForeignKey(name = "FKhrAlertUser"))
    @JsonBackReference(value = "hralert-user")
    @JsonIgnore
    private UsersModel FKhrAlertUser;

    @Column(name = "read")
    private boolean read = false;

    @ManyToOne
    @JoinColumn(name = "test_participant_id", foreignKey = @ForeignKey(name = "FKhrAlertTestParticipant"))
    @JsonBackReference(value = "hralert-testParticipant")
    @JsonIgnore
    private TestParticipantModel FKhrAlertTestParticipant;


    // =========================================
    // GETTERS, SETTERS, CONSTRUCTORS
    // =========================================


    public long getId() {
        return id;
    }

    public AnnouncementsModel getFKhrAlertAnnouncement() {
        return FKhrAlertAnnouncement;
    }

    public void setFKhrAlertAnnouncement(AnnouncementsModel FKhrAlertAnnouncement) {
        this.FKhrAlertAnnouncement = FKhrAlertAnnouncement;
    }

    public UsersModel getFKhrAlertUser() {
        return FKhrAlertUser;
    }

    public void setFKhrAlertUser(UsersModel FKhrAlertUser) {
        this.FKhrAlertUser = FKhrAlertUser;
    }

    public boolean isRead() {
        return read;
    }

    public void setRead(boolean read) {
        this.read = read;
    }

    public TestParticipantModel getFKhrAlertTestParticipant() {
        return FKhrAlertTestParticipant;
    }

    public void setFKhrAlertTestParticipant(TestParticipantModel FKhrAlertTestParticipant) {
        this.FKhrAlertTestParticipant = FKhrAlertTestParticipant;
    }

    protected HrAlertModel() {
    }

    public HrAlertModel(AnnouncementsModel FKhrAlertAnnouncement, UsersModel FKhrAlertUser) {
        this.FKhrAlertAnnouncement = FKhrAlertAnnouncement;
        this.FKhrAlertUser = FKhrAlertUser;
    }

    public HrAlertModel(AnnouncementsModel FKhrAlertAnnouncement, UsersModel FKhrAlertUser, boolean read) {
        this.FKhrAlertAnnouncement = FKhrAlertAnnouncement;
        this.FKhrAlertUser = FKhrAlertUser;
        this.read = read;
    }
}
