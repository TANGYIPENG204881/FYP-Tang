package com.otsbcs.controller;

import com.otsbcs.pojo.Admin;
import com.otsbcs.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminService adminService;

    public void setAdminService(AdminService adminService) {
        this.adminService = adminService;
    }

    @RequestMapping("/adminDashboard")
    public  String adminDashboard(Model model){
        int countClient=adminService.countClient();
        System.out.println("clientTotal:"+countClient);
        model.addAttribute("clientTotal",countClient);
//        System.out.println("封装的model="+model);

        int countTutor=adminService.countTutor();
        System.out.println("tutorTotal:"+countTutor);
        model.addAttribute("tutorTotal",countTutor);

        int countApp=adminService.countApp();
        System.out.println("tutorApp:"+countApp);
        model.addAttribute("appTotal",countApp);

        int countCourse=adminService.countCourse();
        System.out.println("tutorTotal:"+countCourse);
        model.addAttribute("courseTotal",countCourse);

        return "adminDashboard";
    }

    @RequestMapping(value="/toAdminLogin",method = RequestMethod.GET)
    public String toAdminLogin(){
        return "adminLogin";
    }
    @RequestMapping(value="/adminLogin",method = RequestMethod.POST)
    public String adminLogin(@RequestParam String adminName,
                             @RequestParam String adminPassword,
                             HttpServletRequest request, HttpSession session) {
        Admin admin = adminService.adminLogin(adminName, adminPassword);
        if (null != admin) {
            session.setAttribute("Admin", admin);
            return "redirect:/admin/adminDashboard";

        } else {
            request.setAttribute("error", "Name or Password not correct");
            return "adminLogin";
        }

    }
}
