package com.otsbcs.dao;

import com.otsbcs.pojo.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
    Admin adminLogin (@Param("adminName") String adminName,
                      @Param("adminPassword") String adminPassword);

    int countClient();
    int countTutor();
    int countApp();
    int countCourse();
}
