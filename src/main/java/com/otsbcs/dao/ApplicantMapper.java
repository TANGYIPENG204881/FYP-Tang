package com.otsbcs.dao;

import com.otsbcs.pojo.Applicant;

import java.util.List;

public interface ApplicantMapper {
    List<Applicant> queryAllApplicant ();

    void addApplicant(Applicant applicant);

    int deleteApplicantById(int applicantId);

//    Applicant addToTutor(int id);

    Applicant queryApplicantById(int id);
    int addToTutor(Applicant applicant);
}
