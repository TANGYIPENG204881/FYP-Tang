package com.otsbcs.service;
import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Tutor;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
@Transactional
public interface TutorService {

    void addTutor(Tutor tutor) ;

    //删除
    int deleteTutorById(int tutorId);
    //更新
    int updateTutor(Tutor tutor);

    int changePassword(String tutorPassword,int Tid);

    List<Appointment> tutorApp(String TName);
    //查询
    Tutor queryTutorById(int id);
    //查询全部
    List<Tutor> queryAllTutor();
    //按照名字查询
    List<Tutor> queryTAP();
//
    void insertApp(String tutorName,String clientName);


    Tutor queryTutorByName(String tutorName);

    //用户登录
    Tutor tutorLogin (String tutorName,
                      String tutorPassword);

    void tutorRegister(Tutor tutor);
}
