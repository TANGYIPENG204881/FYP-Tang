package com.otsbcs.service;

import com.otsbcs.dao.CourseMapper;
import com.otsbcs.pojo.Course;

import java.util.List;

public class CourseServiceImpl implements CourseService{

    private CourseMapper courseMapper;
    public void setCourseMapper(CourseMapper courseMapper){
        this.courseMapper=courseMapper;
    }


    @Override
    public int addCourse(Course course) {
        return courseMapper.addCourse(course);
    }

    @Override
    public int deleteCourseById(int courseID) {
        return courseMapper.deleteCourseById(courseID);
    }

    @Override
    public int updateCourse(Course course) {
        System.out.println("CourseServiceImpl: updateCourse=>"+course);
        return courseMapper.updateCourse(course);
    }

    @Override
    public Course queryCourseById(int courseID) {
        return courseMapper.queryCourseById(courseID);
    }

    @Override
    public List<Course> queryAllCourse() {
        return courseMapper.queryAllCourse();
    }

    @Override
    public Course queryCourseByName(String courseName) {
        return courseMapper.queryCourseByName(courseName);
    }
}
