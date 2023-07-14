package com.otsbcs.service;

import com.otsbcs.pojo.Applicant;


import java.util.List;

public interface ApplicantService {
    void addApplicant(Applicant applicant);

    int deleteApplicantById(int applicantId);

    List<Applicant> queryAllApplicant();

//    Applicant addToTutor(int id);

    Applicant queryApplicantById(int id);
    int addToTutor(Applicant applicant);
}
