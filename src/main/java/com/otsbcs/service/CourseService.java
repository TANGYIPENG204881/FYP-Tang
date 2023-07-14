package com.otsbcs.service;


import com.otsbcs.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseService {
    int addCourse(Course course);
    //删除
    int deleteCourseById(int CourseID);
    //更新
    int updateCourse(Course course);
    //查询
    Course queryCourseById(int courseID);
    //查询全部
    List<Course> queryAllCourse();
    //按照名字查询
    Course queryCourseByName(String courseName);



}
