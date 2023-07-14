package com.otsbcs.pojo;
import lombok.Data;

import java.io.Serializable;

@Data
public class Applicant implements Serializable{
    public int applicantId;
    public String applicantName;
    public int applicantAge;
    public String applicantPassword;
    public String applicantTelephone;
    public String applicantUniversity;
    public String applicantGPA;
    public String applicantTeachingSubject;
    public String applicantLink;
    public String applicantTeachingTime;
    public String applicantImg;

    public String applicantDescription;


    public Applicant(){}
    public Applicant(int applicantId, String applicantName, int applicantAge, String applicantPassword
            , String applicantTelephone, String applicantUniversity, String applicantGPA, String applicantTeachingSubject,
                     String applicantLink, String applicantTeachingTime, String applicantImg, String applicantDescription) {
        this.applicantId = applicantId;
        this.applicantName = applicantName;
        this.applicantAge = applicantAge;
        this.applicantPassword = applicantPassword;
        this.applicantTelephone = applicantTelephone;
        this.applicantUniversity = applicantUniversity;
        this.applicantGPA = applicantGPA;
        this.applicantTeachingSubject = applicantTeachingSubject;
        this.applicantLink = applicantLink;
        this.applicantTeachingTime = applicantTeachingTime;
        this.applicantImg = applicantImg;
        this.applicantDescription = applicantDescription;
    }

    public int getApplicantId() {
        return applicantId;
    }

    public void setApplicantId(int applicantId) {
        this.applicantId = applicantId;
    }

    public String getApplicantName() {
        return applicantName;
    }

    public void setApplicantName(String applicantName) {
        this.applicantName = applicantName;
    }

    public int getApplicantAge() {
        return applicantAge;
    }

    public void setApplicantAge(int applicantAge) {
        this.applicantAge = applicantAge;
    }

    public String getApplicantPassword() {
        return applicantPassword;
    }

    public void setApplicantPassword(String applicantPassword) {
        this.applicantPassword = applicantPassword;
    }

    public String getApplicantTelephone() {
        return applicantTelephone;
    }

    public void setApplicantTelephone(String applicantTelephone) {
        this.applicantTelephone = applicantTelephone;
    }

    public String getApplicantUniversity() {
        return applicantUniversity;
    }

    public void setApplicantUniversity(String applicantUniversity) {
        this.applicantUniversity = applicantUniversity;
    }

    public String getApplicantGPA() {
        return applicantGPA;
    }

    public void setApplicantGPA(String applicantGPA) {
        this.applicantGPA = applicantGPA;
    }

    public String getApplicantTeachingSubject() {
        return applicantTeachingSubject;
    }

    public void setApplicantTeachingSubject(String applicantTeachingSubject) {
        this.applicantTeachingSubject = applicantTeachingSubject;
    }

    public String getApplicantLink() {
        return applicantLink;
    }

    public void setApplicantLink(String applicantLink) {
        this.applicantLink = applicantLink;
    }

    public String getApplicantTeachingTime() {
        return applicantTeachingTime;
    }

    public void setApplicantTeachingTime(String applicantTeachingTime) {
        this.applicantTeachingTime = applicantTeachingTime;
    }

    public String getApplicantImg() {
        return applicantImg;
    }

    public void setApplicantImg(String applicantImg) {
        this.applicantImg = applicantImg;
    }

    public String getApplicantDescription() {
        return applicantDescription;
    }

    public void setApplicantDescription(String applicantDescription) {
        this.applicantDescription = applicantDescription;
    }
}
