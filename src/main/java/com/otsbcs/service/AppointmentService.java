package com.otsbcs.service;

import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Tutor;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;
@Transactional
public interface AppointmentService {
//list all appointment
    List<Appointment> queryAllApp();

    Appointment queryAppById(int id);
    //delete
    int deleteAppById(int appID);

    Appointment queryAppByName(String TutorName);
}
