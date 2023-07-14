package com.otsbcs.controller;

import com.otsbcs.pojo.Applicant;
import com.otsbcs.pojo.Client;
import com.otsbcs.pojo.Tutor;
import com.otsbcs.service.ApplicantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/applicant")
public class ApplicantController {

    private int applicantID;
    @Autowired
    @Qualifier("ApplicantServiceImpl")
    private ApplicantService applicantservice;


    @RequestMapping("/allApplicant")
    public String list(Model model) {
        List<Applicant> list = applicantservice.queryAllApplicant();
        model.addAttribute("list", list);
        return "allApplicant";
    }


    @RequestMapping("toTutorLoginOrApply")
    public String tutorLOA(){
        return "tutorLoginOrApply";
    }

    @RequestMapping("toApplicantRegister")
    public String ApplicantRegister(){
        return "applicantRegister";
    }

    //applicantRegister
    @RequestMapping("/applicantRegister")
    public String addApplicantImg(MultipartFile file, Applicant applicant, ModelMap map, HttpServletRequest request) throws IOException {
        /**
         * uploadFile
         */
        String filePath = "D:\\upload";
        System.out.println("addApplicant==>" + applicant);
        String originalFilename = file.getOriginalFilename();
        //新名字
        String newFileName = UUID.randomUUID() + originalFilename;
        File targetFile = new File(filePath, newFileName);
        System.out.println(targetFile);
        //把本地文件上传到封装上传文件未知的全路径
        file.transferTo(targetFile);

        /**
         * 上传成功后，地址写到数据库
         */
        applicant.setApplicantImg(newFileName);
        applicantservice.addApplicant(applicant);
        return "applySucc";
    }

    @RequestMapping("/toAddToTutor")
    public String toAddAppTutorPaper(int id, Model model) {
        Applicant applicant = applicantservice.queryApplicantById(id);
        System.out.println("当前选中为======》"+applicant);

        this.applicantID=id;
        System.out.println("id=======>"+applicantID);

        model.addAttribute("QApplicant", applicant);
        return "agreeOrDisagree";
    }

    //加入tutor表
    @RequestMapping("/addToTutor")
    public String addToTutor(HttpServletRequest request){
        Applicant applicant1 = applicantservice.queryApplicantById(applicantID);
        System.err.println("申请人:=>" + applicant1);
            applicantservice.addToTutor(applicant1);
        request.setAttribute("Status", "application has been approved");
            return "redirect:/applicant/allApplicant";

    }

//    @RequestMapping("addToTutor/{applicantId}")
//    public String addToTutor(@PathVariable("applicantId") Applicant applicant){
//        applicantservice.addToTutor(applicant);
//        return "redirect:/applicant/allApplicant";
//    }


    @RequestMapping("/toDeleteApplicant/{applicantId}")
    public String toDeletePaper(@PathVariable("applicantId") int applicantId) {
        applicantservice.deleteApplicantById(applicantId);
        return "redirect:/applicant/allApplicant";
    }

}
