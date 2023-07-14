package com.otsbcs.service;

import com.otsbcs.dao.AdminMapper;
import com.otsbcs.pojo.Admin;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminServiceImpl implements AdminService{
    @Resource
    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    public Admin adminLogin(String adminName, String adminPassword) {
        return adminMapper.adminLogin(adminName,adminPassword);
    }
    public int countClient(){
        return adminMapper.countClient();
    }
    public int countTutor(){
        return adminMapper.countTutor();
    }
    public int countApp(){
        return adminMapper.countApp();
    }
    public int countCourse(){
        return adminMapper.countCourse();
    }
}
