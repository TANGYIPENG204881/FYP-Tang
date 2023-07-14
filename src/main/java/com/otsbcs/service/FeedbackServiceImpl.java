package com.otsbcs.service;

import com.otsbcs.dao.FeedbackMapper;
import com.otsbcs.pojo.Feedback;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class FeedbackServiceImpl implements FeedbackService{

    @Autowired
    private FeedbackMapper feedbackMapper;
    public void setFeedbackMapper(FeedbackMapper feedbackMapper){
        this.feedbackMapper = feedbackMapper;
    }
    @Transactional
    @Override
    public void addFeedback(Feedback feedback) {
        feedbackMapper.addFeedback(feedback);
    }

    @Override
    public List<Feedback> allFeedback() {
        return feedbackMapper.allFeedback();
    }

    public List<Feedback> tFeedback(String TName){
        return feedbackMapper.tFeedback(TName);
    }
    public List<Feedback> cFeedback(String cName){
        return feedbackMapper.cFeedback(cName);
    }
}
