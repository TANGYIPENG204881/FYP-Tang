package com.otsbcs.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data

public class Appointment {

    public int appID;
    public int ClientID;
    public String ClientName;
    public int TutorID;
    public String TutorName;
    public String TutorImage;
    public String TutoringTime;
    public String Link;
    public String TutorTelephone;
    public String CourseName;
//    public String CoursePrice;

    public int getAppID() {
        return appID;
    }

    public void setAppID(int appID) {
        this.appID = appID;
    }

    public int getClientID() {
        return ClientID;
    }

    public void setClientID(int clientID) {
        this.ClientID = clientID;
    }

    public String getClientName() {
        return ClientName;
    }

    public void setClientName(String clientName) {
        ClientName = clientName;
    }

    public int getTutorID() {
        return TutorID;
    }

    public void setTutorID(int tutorID) {
        this.TutorID = tutorID;
    }

    public String getTutorName() {
        return TutorName;
    }

    public void setTutorName(String tutorName) {
        this.TutorName = tutorName;
    }

    public String getTutorImage() {
        return TutorImage;
    }

    public void setTutorImage(String tutorImage) {
        this.TutorImage = tutorImage;
    }



    public String getTutoringTime() {
        return TutoringTime;
    }

    public void setTutoringTime(String tutoringTime) {
        this.TutoringTime = tutoringTime;
    }

    public String getLink() {
        return Link;
    }

    public void setLink(String link) {
        this.Link = link;
    }

    public String getTutorTelephone() {
        return TutorTelephone;
    }

    public void setTutorTelephone(String tutorTelephone) {
        this.TutorTelephone = tutorTelephone;
    }
    public String getCourseName() {
        return CourseName;
    }

    public void setCourseName(String courseName) {
        this.CourseName = courseName;
    }

//    public String getCoursePrice() {
//        return CoursePrice;
//    }
//
//    public void setCoursePrice(String coursePrice) {
//        this.CoursePrice = coursePrice;
//    }


}
