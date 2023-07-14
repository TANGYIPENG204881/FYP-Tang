package com.otsbcs.service;

import com.otsbcs.dao.ApplicantMapper;
import com.otsbcs.pojo.Applicant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ApplicantServiceImpl implements ApplicantService{

    @Autowired
    private ApplicantMapper applicantMapper;

    public void setApplicantMapper(ApplicantMapper applicantMapper) {
        this.applicantMapper = applicantMapper;
    }

    @Override
    public void addApplicant(Applicant applicant) {
        applicantMapper.addApplicant(applicant);
    }

    @Override
    public int deleteApplicantById(int applicantId) {
        return applicantMapper.deleteApplicantById(applicantId);
    }

    @Override
    public List<Applicant> queryAllApplicant() {
        return applicantMapper.queryAllApplicant();
    }


    public Applicant queryApplicantById(int id){
        return applicantMapper.queryApplicantById(id);
    }
    @Override
    public int addToTutor(Applicant applicant) {
        System.out.println("ApplicantServiceImpl: App=>"+applicant);
        return applicantMapper.addToTutor(applicant);
    }
}
