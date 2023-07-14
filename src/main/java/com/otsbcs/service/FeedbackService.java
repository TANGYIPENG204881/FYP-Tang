package com.otsbcs.service;

import com.otsbcs.pojo.Feedback;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
@Transactional
public interface FeedbackService {
    void addFeedback (Feedback feedback);


    List<Feedback> allFeedback();
    List<Feedback> tFeedback(String TName);

    List<Feedback> cFeedback(String cName);
}
