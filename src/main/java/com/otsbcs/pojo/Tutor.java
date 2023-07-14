package com.otsbcs.pojo;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.io.Serializable;

@Data

public class Tutor implements Serializable {
    public int tutorId;
    public String tutorName;
    public int tutorAge;
    public String tutorPassword;
    public String tutorTelephone;
    public String tutorUniversity;
    public String tutorGPA;
    public String tutorTeachingSubject;
    public String tutorLink;
    public String tutorTeachingTime;
    public String tutorImg;

    public String tutorDescription;

 public Tutor(){

 }

    public Tutor(int tutorId, String tutorName, int tutorAge, String tutorPassword,
                 String tutorTelephone, String tutorUniversity, String tutorGPA,
                 String tutorTeachingSubject, String tutorLink, String tutorTeachingTime,
                 String tutorImg,String tutorDescription) {
        this.tutorId = tutorId;
        this.tutorName = tutorName;
        this.tutorAge = tutorAge;
        this.tutorPassword = tutorPassword;
        this.tutorTelephone = tutorTelephone;
        this.tutorUniversity = tutorUniversity;
        this.tutorGPA = tutorGPA;
        this.tutorTeachingSubject = tutorTeachingSubject;
        this.tutorLink = tutorLink;
        this.tutorTeachingTime = tutorTeachingTime;
        this.tutorImg = tutorImg;
        this.tutorDescription = tutorDescription;
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

    public int getTutorAge() {
        return tutorAge;
    }

    public void setTutorAge(int tutorAge) {
        this.tutorAge = tutorAge;
    }

    public String getTutorPassword() {
        return tutorPassword;
    }

    public void setTutorPassword(String tutorPassword) {
        this.tutorPassword = tutorPassword;
    }

    public String getTutorTelephone() {
        return tutorTelephone;
    }

    public void setTutorTelephone(String tutorTelephone) {
        this.tutorTelephone = tutorTelephone;
    }

    public String getTutorUniversity() {
        return tutorUniversity;
    }

    public void setTutorUniversity(String tutorUniversity) {
        this.tutorUniversity = tutorUniversity;
    }

    public String getTutorGPA() {
        return tutorGPA;
    }

    public void setTutorGPA(String tutorGPA) {
        this.tutorGPA = tutorGPA;
    }

    public String getTutorTeachingSubject() {
        return tutorTeachingSubject;
    }

    public void setTutorTeachingSubject(String tutorTeachingSubject) {
        this.tutorTeachingSubject = tutorTeachingSubject;
    }

    public String getTutorLink() {
        return tutorLink;
    }

    public void setTutorLink(String tutorLink) {
        this.tutorLink = tutorLink;
    }

    public String getTutorTeachingTime() {
        return tutorTeachingTime;
    }

    public void setTutorTeachingTime(String tutorTeachingTime) {
        this.tutorTeachingTime = tutorTeachingTime;
    }

    public String getTutorImg() {
        return tutorImg;
    }

    public void setTutorImg(String tutorImg) {
        this.tutorImg = tutorImg;
    }

    public String getTutorDescription() {
        return tutorDescription;
    }

    public void setTutorDescription(String tutorDescription) {
        this.tutorDescription = tutorDescription;
    }
}
