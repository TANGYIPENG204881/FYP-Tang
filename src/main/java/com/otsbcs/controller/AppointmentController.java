package com.otsbcs.controller;

import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Tutor;
import com.otsbcs.service.AppointmentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/appointment")

public class AppointmentController {
    @Autowired
    @Qualifier("AppointmentServiceImpl")
    private AppointmentService appointmentservice;


    @RequestMapping("/allApp")
    public String list(Model model) {
        List<Appointment> list = appointmentservice.queryAllApp();
        model.addAttribute("list", list);
        return "allAppointment";
    }

    @RequestMapping("/toDeleteApp/{appID}")
    public String toDeleteApp(@PathVariable("appID") int appID) {
        appointmentservice.deleteAppById(appID);
        return "redirect:/appointment/allApp";
    }

    @RequestMapping("/queryApp")
    public String queryApp(String queryTName, Model model) {
        Appointment app = appointmentservice.queryAppByName(queryTName);
        System.err.println("Appointment=>" + app);
        List<Appointment> list = new ArrayList<Appointment>();
        list.add(app);
        if (app == null) {
            list = appointmentservice.queryAllApp();
            model.addAttribute("error", "Sorry~This people Not Found");
        }
        model.addAttribute("list", list);
        return "allAppointment";
    }

}
