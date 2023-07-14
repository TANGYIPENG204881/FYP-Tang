package com.otsbcs.service;

import com.otsbcs.dao.TutorMapper;
import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Tutor;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TutorServiceImpl implements TutorService{

    @Autowired
    private TutorMapper tutorMapper;

    public void setTutorMapper(TutorMapper tutorMapper) {
        this.tutorMapper = tutorMapper;
    }

    @Transactional

    public void addTutor(Tutor tutor)  {
        tutorMapper.addTutor(tutor);
    }


    public int deleteTutorById(int tutorId) {
        return tutorMapper.deleteTutorById(tutorId);
    }

    public int updateTutor(Tutor tutor) {
        System.out.println("CTutorServiceImpl: updateTutor=>"+tutor);
        return tutorMapper.updateTutor(tutor);
    }

    public int changePassword(String tutorPassword,int Tid){
        System.out.println("TUTORId=="+Tid);
        return tutorMapper.changePassword(tutorPassword,Tid);
    }

    public List<Appointment> tutorApp(String TName){
        return tutorMapper.tutorApp(TName);
    }

    public Tutor queryTutorById(int id) {
        return tutorMapper.queryTutorById(id);
    }

    public List<Tutor> queryAllTutor() {
        return tutorMapper.queryAllTutor();
    }
//价格加老师
    public List<Tutor> queryTAP(){
        return tutorMapper.queryTAP();
    }
    public void insertApp(String tutorName, String clientName){
        tutorMapper.insertApp(tutorName,clientName);
    }



    public Tutor queryTutorByName(String tutorName) {
        return tutorMapper.queryTutorByName(tutorName);
    }

    public Tutor tutorLogin(String tutorName, String tutorPassword) {
        return tutorMapper.tutorLogin(tutorName,tutorPassword);
    }

    public void tutorRegister(Tutor tutor) {
         tutorMapper.tutorRegister(tutor);
    }
}
