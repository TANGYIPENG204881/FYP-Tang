package com.otsbcs.controller;


import com.otsbcs.pojo.Feedback;
import com.otsbcs.service.FeedbackService;
import com.otsbcs.service.FeedbackServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/feedback")
public class FeedbackController {
    @Autowired
    @Qualifier("FeedbackServiceImpl")
    private FeedbackService feedbackservice;

    @RequestMapping("/allFeedback")
    public String allFeedback(Model model){
        List<Feedback> list = feedbackservice.allFeedback();
        model.addAttribute("list", list);
        return "allFeedback";
    }

}
