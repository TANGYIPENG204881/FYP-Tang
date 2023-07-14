package com.otsbcs.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data

public class Feedback {
    public int feedbackId;
    public int clientId;
    public String clientName;
    public int tutorId;
    public String tutorName;
    public String course;
    public String performance;
    public String suggestion;
    public String feedbackDate;

    public Feedback(){}

    public Feedback(int feedbackId, int clientId, String clientName, int tutorId,
                    String tutorName, String course,String performance, String suggestion, String feedbackDate) {
        this.feedbackId = feedbackId;
        this.clientId = clientId;
        this.clientName = clientName;
        this.tutorId = tutorId;
        this.tutorName = tutorName;
        this.course=course;
        this.performance = performance;
        this.suggestion = suggestion;
        this.feedbackDate = feedbackDate;
    }

    public int getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(int feedbackId) {
        this.feedbackId = feedbackId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public String getClientName() {
        return clientName;
    }

    public void setClientName(String clientName) {
        this.clientName = clientName;
    }

    public int getTutorId() {
        return tutorId;
    }

    public void setTutorId(int tutorId) {
        this.tutorId = tutorId;
    }

    public String getTutorName() {
        return tutorName;
    }

    public void setTutorName(String tutorName) {
        this.tutorName = tutorName;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getPerformance() {
        return performance;
    }

    public void setPerformance(String performance) {
        this.performance = performance;
    }

    public String getSuggestion() {
        return suggestion;
    }

    public void setSuggestion(String suggestion) {
        this.suggestion = suggestion;
    }

    public String getFeedbackDate() {
        return feedbackDate;
    }

    public void setFeedbackDate(String feedbackDate) {
        this.feedbackDate = feedbackDate;
    }
}
