package com.otsbcs.controller;
import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Client;
import com.otsbcs.pojo.Feedback;
import com.otsbcs.pojo.Tutor;
import com.otsbcs.service.AppointmentService;
import com.otsbcs.service.ClientService;
import com.otsbcs.service.FeedbackService;
import com.otsbcs.service.TutorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

@Controller
@RequestMapping("/tutor")
public class TutorController {

    private String TName;
    private int Tid;
    @Autowired
    @Qualifier("TutorServiceImpl")
    private TutorService tutorservice;
    @Autowired
    @Qualifier("ClientServiceImpl")
    public ClientService clientService;

    @Autowired
    @Qualifier("AppointmentServiceImpl")
    public AppointmentService appointmentservice;

    @Autowired
    @Qualifier("FeedbackServiceImpl")
    public FeedbackService feedbackservice;

    @RequestMapping("/allTutor")
    public String list(Model model) {
        List<Tutor> list = tutorservice.queryAllTutor();
        model.addAttribute("list", list);
        return "allTutor";
    }

    //管理员跳转增加tutor页面
    @RequestMapping("/toAddTutor")
    public String toAddPaper() {
        return "addTutor";
    }
    //添加tutor请求,之后调到addTutor请求

    @RequestMapping("/addTutor")
    public String addTutorImg(MultipartFile file, Tutor tutor, ModelMap map, HttpServletRequest request) throws IOException {
        /**
         * uploadFile
         */
        String filePath = "D:\\upload";
        System.out.println("addTutor==>" + tutor);
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
        tutor.setTutorImg(newFileName);
        tutorservice.addTutor(tutor);
        return "redirect:/tutor/allTutor";


        //String name = UUID.randomUUID().toString().replaceAll("-", "");
        //设置图片上传路径,是目标文件夹的路径
        //String filePath = request.getSession().getServletContext().getRealPath("/upload");
        // System.out.println("filePath:::"+filePath);

        // 获取原始图片的扩展名
        // String originalFilename = file.getOriginalFilename();
        // System.out.println("originalFilename:::"+originalFilename);

        // 生成文件新的名字
        // String newFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFilename;
        // System.out.println("newFileName:::"+newFileName);

        // 封装上传文件位置的全路径
        // File targetFile = new File(filePath, newFileName);
        // file.transferTo(targetFile);

        // 保存到数据库
        //Tutor tutor = new Tutor();
        // tutor.setTutorImg(newFileName);
        // tutorservice.addTutor(tutor);


        // String newFileName = "";
        // String fileName = tutor.getTutorImg1().getOriginalFilename();
        //  System.out.println(fileName);
        //  String realpath = request.getServletContext().getRealPath("/image");
        // System.out.println(tutor);
        // Tutor tutor1 = new Tutor();
        //tutor1.setTutorName(tutor.getTutorName());
        //tutor1.setTutorAge(tutor.getTutorAge());
        // tutor1.setTutorPassword(tutor.getTutorPassword());
        // tutor1.setTutorTelephone(tutor.getTutorTelephone());
        // tutor1.setTutorUniversity(tutor.getTutorUniversity());
        // tutor1.setTutorGPA(tutor.getTutorGPA());
        // tutor1.setTutorTeachingSubject(tutor.getTutorTeachingSubject());
        // tutor1.setTutorLink(tutor.getTutorLink());
        // tutor1.setTutorTeachingTime(tutor.getTutorTeachingTime());
        // tutor1.setTutorImg("encodedString");
        // tutorservice.addTutor(tutor1);


        // return "redirect:/tutor/allTutor";
    }

    //跳转到update页面
    @RequestMapping("/toUpdateTutor")
    public String toUpdatePaper(int id, Model model) {
        Tutor tutor = tutorservice.queryTutorById(id);
        System.out.println(tutor);
        model.addAttribute("QTutor", tutor);
        return "updateTutor";
    }

    //修改Client
    @RequestMapping("/updateTutor")
    public String updateClient(Tutor tutor) {
        System.out.println("updateTutor=>" + tutor);
        tutorservice.updateTutor(tutor);
        return "redirect:/tutor/allTutor";
    }



    @RequestMapping("/toDeleteTutor/{tutorId}")
    public String toDeletePaper(@PathVariable("tutorId") int tutorId) {
        tutorservice.deleteTutorById(tutorId);
        return "redirect:/tutor/allTutor";
    }

    //查询
    @RequestMapping("/queryTutor")
    public String queryTutor(String queryTutorName, Model model) {
        Tutor tutor = tutorservice.queryTutorByName(queryTutorName);
        System.err.println("tutor=>" + tutor);
        List<Tutor> list = new ArrayList<Tutor>();
        list.add(tutor);
        if (tutor == null) {
            list = tutorservice.queryAllTutor();
            model.addAttribute("error", "Sorry~This Tutor Not Found");
        }
        model.addAttribute("list", list);
        return "allTutor";
    }


    //登录
    @RequestMapping("/toTutorDashboard")
    public String toTutorDASHB() {
        return "tutorDashboard";
    }

    @RequestMapping("/tutorDashboard")
    public String tutorDashboard() {
        return "tutorDashboard";
    }

    //Tutor登录
    @RequestMapping(value = "/toTutorLogin", method = RequestMethod.GET)
    public String toTutorLogin() {
        return "tutorLogin";
    }

    @RequestMapping(value = "/tutorLogin", method = RequestMethod.POST)
    public String tutorLogin(@RequestParam String tutorName,
                             @RequestParam String tutorPassword,
                             HttpServletRequest request, HttpSession session) {
        Tutor tutor = tutorservice.tutorLogin(tutorName, tutorPassword);

        this.TName = tutorName;
        System.out.println("TName:" + TName);

        if (null != tutor) {
            session.setAttribute("Tutor", tutor);
            return "redirect:/tutor/tutorDashboard";

        } else {
            request.setAttribute("error", "Name or Password not correct");
            return "tutorLogin";
        }
    }


    @RequestMapping("/toTutorRegister")
    public String toTutorRegister() {
        return "tutorRegister";
    }


    @RequestMapping("/tutorRegister")
    public String tutorRegister(MultipartFile file, Tutor tutor, ModelMap map, HttpServletRequest request) throws IOException {
        /**
         * uploadFile
         */
        String filePath = "D:\\upload";
        System.out.println("TutorRegister==>" + tutor);
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
        tutor.setTutorImg(newFileName);
        tutorservice.tutorRegister(tutor);
        return "tutorRegisterSucc";
    }



    @RequestMapping("viewAllTutor1")
    public String viewAllTutor1(Model model){
        List<Tutor> list = tutorservice.queryAllTutor();
        model.addAttribute("list", list);
        return "viewAllTutor";
    }

    @RequestMapping("viewAllTutor")
    public String viewAllTutor(Model model){
        List<Tutor> list = tutorservice.queryAllTutor();
        model.addAttribute("list", list);
        return "viewAllTutor";
    }

//client click show all tutor IN tutorSelectionPage
    @RequestMapping("/clientQueryTutor")
    public String clientQueryTutor(String queryTutorName, Model model) {
        Tutor tutor = tutorservice.queryTutorByName(queryTutorName);
        System.err.println("tutor=>" + tutor);
        List <Tutor> list = new ArrayList <Tutor> ();
        list.add(tutor);
        if (tutor == null) {
            list = tutorservice.queryAllTutor();
            model.addAttribute("error", "Sorry~This Tutor Not Found");
        }
        model.addAttribute("list", list);
        return "viewAllTutor";
    }

    @RequestMapping("/toDetail")
    public String toDetail(int id, Model model) {
        Tutor tutor = tutorservice.queryTutorById(id);
        System.out.println(tutor);
        model.addAttribute("DTutor", tutor);
        return "tutorDetail";
    }

    @RequestMapping("/toTutorPersonal")
        public String toTutorP(Model model){
        System.err.println("tutorName====》:" + TName);
        Tutor tutor1 = tutorservice.queryTutorByName(TName);
        System.err.println("tutor1=>"+tutor1);
        model.addAttribute("PTutor", tutor1);
        return "tutorPersonal";
    }

    @RequestMapping("/toTutorChangePassword")
    public String toChangePassword(Model model){
        Tutor tutor1 = tutorservice.queryTutorByName(TName);
        System.err.println("tutor1=>"+tutor1);
//        System.err.println("tutorId"+id);
        this.Tid=tutor1.tutorId;
        model.addAttribute("PTutor", tutor1);
        return "tutorChangePassword";
    }
    @RequestMapping("/tutorChangePassword")
    public String ChangePassword(String tutorPassword,String confirmPassword,HttpServletRequest request){
//        Tutor tutor1 = tutorservice.queryTutorByName(TName);
//
//        System.err.println("tutor1=>"+tutor1);

        System.out.println("tutorPassword===>"+tutorPassword);
        System.out.println("confirmPassword===>"+confirmPassword);
        if (Objects.equals(tutorPassword, confirmPassword)){
        tutorservice.changePassword(tutorPassword,Tid);
        return "redirect:/tutor/toTutorPersonal";
        } else {
            request.setAttribute("error", "Password not Same!!,please confirm again");
            return "tutorChangePassword";
        }
    }

    @RequestMapping("/toTutorCourses")
    public String toTutorCourse(Model model){
        List<Appointment> list=tutorservice.tutorApp(TName);
        System.err.println("app=>" + list);
        model.addAttribute("list", list);
        System.out.println("TNAME=="+TName);
        model.addAttribute("TNAME",TName);
        return "tutorCourse";
    }


    @RequestMapping("/toDeleteApp/{appID}")
    public String TtoDeleteApp(@PathVariable("appID") int appID) {
        appointmentservice.deleteAppById(appID);
        return "redirect:/tutor/toTutorCourses";
    }



    @RequestMapping("/toWriteFeedbackToLearner")
    public String toWriteFeedbackToLearner(int id,Model model){
        Appointment appointment = appointmentservice.queryAppById(id);
        System.out.println(appointment);
        model.addAttribute("QApp", appointment);
        return "feedbackToStudent";
    }

    @RequestMapping("/writeFeedbackToLearner")
        public String WriteFeedbackToLearner(Feedback feedback){
        System.out.println("Feedback==>"+feedback);
        feedbackservice.addFeedback(feedback);
        return "redirect:/tutor/toTutorCourses";
    }
    @RequestMapping("/toTutorViewFeedback")
    public String toTutorViewFeedback(Model model){
        List<Feedback> list=feedbackservice.tFeedback(TName);
        model.addAttribute("list", list);
        return "tutorViewFeedback";
    }

}
