package com.otsbcs.dao;

import com.otsbcs.pojo.Feedback;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FeedbackMapper {
    void addFeedback (Feedback feedback);

    List<Feedback> allFeedback();

    List<Feedback> tFeedback(@Param("TName") String TName);

    List<Feedback> cFeedback(@Param("cName") String cName);

}
