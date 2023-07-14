package com.otsbcs.dao;

import com.otsbcs.pojo.Course;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CourseMapper {
    int addCourse(Course course);
    //删除
    int deleteCourseById(int courseID);
    //更新
    int updateCourse(Course course);
    //查询
    Course queryCourseById(int CourseID);
    //查询全部
    List<Course> queryAllCourse();
    //按照名字查询
    Course queryCourseByName(@Param("courseName") String courseName);



}
