package com.otsbcs.service;

import com.otsbcs.pojo.Admin;
import org.apache.ibatis.annotations.Param;

public interface AdminService {
    public Admin adminLogin (String adminName,String adminPassword);

    int countClient();
    int countTutor();
    int countApp();
    int countCourse();
}
