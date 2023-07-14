package com.otsbcs.dao;

import com.otsbcs.pojo.Appointment;
import org.apache.ibatis.annotations.Param;
import java.util.List;
public interface AppointmentMapper {

    int deleteAppById(int appID);

    Appointment queryAppById(int id);
    List<Appointment> queryAllApp();

    Appointment queryAppByName(@Param("TutorName") String TutorName);
}
