package com.otsbcs.controller;

import com.otsbcs.pojo.Course;
import com.otsbcs.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/course")
public class CourseController {


    //controller 调service层
    @Autowired
    @Qualifier("CourseServiceImpl")
    private CourseService courseservice;

    //查询所有client，返回到client展示页面
    @RequestMapping("/allCourse")
    public String list(Model model) {
        List<Course> list = courseservice.queryAllCourse();
        model.addAttribute("list", list);
        return "allCourse";

    }

    //管理员跳转增加client页面
    @RequestMapping("/toAddCourse")
    public String toAddPaper() {
        return "addCourse";
    }

    //添加client请求,之后调到allClient请求
    @RequestMapping("/addCourse")
    public String addCourse(Course course) {
        System.out.println("addCourse==>" + course);
        courseservice.addCourse(course);
        return "redirect:/course/allCourse"; //重定向到我们的@RequestMapping（“/allClient”）请求
    }

    //跳转到update页面
    @RequestMapping("/toUpdateCourse")
    public String toUpdatePaper(int id, Model model) {
        Course course = courseservice.queryCourseById(id);
        System.out.println(course);
        model.addAttribute("QCourse", course);
        return "updateCourse";
    }

    //修改
    @RequestMapping("/updateCourse")
    public String updateCourse(Course course) {
        System.out.println("updateCourse=>" + course);
        courseservice.updateCourse(course);
        return "redirect:/course/allCourse";
    }

    //删除
    @RequestMapping("/toDeleteCourse/{courseId}")
    public String toDeletePaper(@PathVariable("courseId") int courseId) {
        courseservice.deleteCourseById(courseId);
        return "redirect:/course/allCourse";
    }

    //查询
    @RequestMapping("/queryCourse")
    public String queryCourse(String queryCourseName, Model model) {
        Course course = courseservice.queryCourseByName(queryCourseName);
        System.err.println("course=>" + course);
        List<Course> list = new ArrayList<Course>();
        list.add(course);

        if (course == null) {
            list = courseservice.queryAllCourse();
            model.addAttribute("error", "Sorry~NotFound");
        }

        model.addAttribute("list", list);
        return "allCourse";

    }


//    @RequestMapping("toClientViewAllCourse")
//    public String toClientViewAllCourse() {
//        return "clientViewAllCourse";
//    }

    @RequestMapping("/clientViewAllCourse")
    public String list1(Model model) {
        List<Course> list = courseservice.queryAllCourse();
        model.addAttribute("list", list);
        return "clientViewAllCourse";

    }
}
