package com.otsbcs.dao;
import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Tutor;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TutorMapper {
    void addTutor(Tutor tutor);
    //删除
    int deleteTutorById(int tutorId);
    //更新
    int updateTutor(Tutor tutor);
    //改密码
    Integer changePassword(@Param("tutorPassword") String tutorPassword,@Param("Tid") int Tid);
    //查询
    List<Appointment> tutorApp(@Param("TName") String TName);
    Tutor queryTutorById(int id);
    //查询全部
    List<Tutor> queryAllTutor();

    List<Tutor> queryTAP();

    void insertApp(@Param("tutorName")String tutorName, @Param("clientName")String clientName);

    //按照名字查询
    Tutor queryTutorByName(@Param("tutorName") String tutorName);

    //用户登录
    Tutor tutorLogin (@Param("tutorName") String tutorName,
                        @Param("tutorPassword") String tutorPassword);

    void tutorRegister(Tutor tutor);


}
