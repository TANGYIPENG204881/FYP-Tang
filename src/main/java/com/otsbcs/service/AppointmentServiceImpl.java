package com.otsbcs.service;

import com.otsbcs.dao.AppointmentMapper;
import com.otsbcs.pojo.Appointment;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AppointmentServiceImpl implements AppointmentService{

    private AppointmentMapper appointmentMapper;
    public void setAppointmentMapper(AppointmentMapper appointmentMapper){
        this.appointmentMapper=appointmentMapper;
    }

    public List<Appointment>queryAllApp(){
        return appointmentMapper.queryAllApp();
    }

    public Appointment queryAppById(int id){
        return appointmentMapper.queryAppById(id);
    }
    public int deleteAppById(int appID){
        return appointmentMapper.deleteAppById(appID);
    }

    public Appointment queryAppByName(String TutorName){
        return appointmentMapper.queryAppByName(TutorName);
    }

}
