package com.otsbcs.controller;
import com.otsbcs.pojo.Appointment;
import com.otsbcs.pojo.Client;
import com.otsbcs.pojo.Feedback;
import com.otsbcs.pojo.Tutor;
import com.otsbcs.service.ClientService;
import com.otsbcs.service.FeedbackService;
import com.otsbcs.service.TutorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Controller
@RequestMapping("/client")
public class ClientController {
    private String kehuname;
    //controller 调service层
    @Autowired
    @Qualifier("ClientServiceImpl")
    public ClientService clientservice;

    @Autowired
    @Qualifier("TutorServiceImpl")
    public TutorService tutorservice;
    @Autowired
    @Qualifier("FeedbackServiceImpl")
    public FeedbackService feedbackservice;

    //查询所有client，返回到client展示页面
    @RequestMapping("/allClient")
    public String list(Model model) {
        List<Client> list = clientservice.queryAllClient();
        model.addAttribute("list", list);
        return "allClient";

    }

    //管理员跳转增加client页面
    @RequestMapping("/toAddClient")
    public String toAddPaper() {
        return "addClient";
    }

    //添加client请求,之后调到allClient请求
    @RequestMapping("/addClient")
    public String addClient(Client client) {
        System.out.println("addClient==>" + client);
        clientservice.addClient(client);
        return "redirect:/client/allClient"; //重定向到我们的@RequestMapping（“/allClient”）请求
    }

    //跳转到update页面
    @RequestMapping("/toUpdateClient")
    public String toUpdatePaper(int id, Model model) {
        Client client = clientservice.queryClientById(id);
        System.out.println(client);
        model.addAttribute("QClient", client);
        return "updateClient";
    }

    //修改Client
    @RequestMapping("/updateClient")
    public String updateClient(Client client) {
        System.out.println("updateClient=>" + client);
        clientservice.updateClient(client);
        return "redirect:/client/allClient";
    }

    //删除
    @RequestMapping("/toDeleteClient/{clientId}")
    public String toDeletePaper(@PathVariable("clientId") int id) {
        clientservice.deleteClientById(id);
        return "redirect:/client/allClient";
    }

    //查询
    @RequestMapping("/queryClient")
    public String queryClient(String queryClientName, Model model) {
        Client client = clientservice.queryClientByName(queryClientName);
        System.err.println("client=>" + client);
        List<Client> list = new ArrayList<Client>();
        list.add(client);

        if (client == null) {
            list = clientservice.queryAllClient();
            model.addAttribute("error", "Sorry~NotFound");
        }

        model.addAttribute("list", list);
        return "allClient";

    }


    //登录
    @RequestMapping("/toClientDashboard")
    public String toClientDASHB() {
        return "clientDashboard";
    }

    @RequestMapping("/clientDashboard")
    public String clientDashboard() {
        return "clientDashboard";
    }

    //Client登录
    @RequestMapping(value = "/toClientLogin", method = RequestMethod.GET)
    public String toClientLogin() {
        return "clientLogin";
    }

    @RequestMapping(value = "/clientLogin", method = RequestMethod.POST)
    public String clientLogin(@RequestParam String clientName,
                              @RequestParam String password,
                              HttpServletRequest request, HttpSession session) {
        Client client = clientservice.clientLogin(clientName, password);
        this.kehuname = clientName;
        System.out.println("kehuName:" + kehuname);
        if (null != client) {
            session.setAttribute("Client", client);
            return "redirect:/client/clientDashboard";
        } else {
            request.setAttribute("error", "Sorry,Name or Password not correct!!!");
            return "clientLogin";
        }
    }

    @RequestMapping("/toClientRegister")
    public String toClientRegister() {
        return "clientRegister";
    }

    @RequestMapping("/clientRegister")
    public String clientRegister(Client client, String password,String confirmPassword,HttpServletRequest request) {
        System.out.println(client);
        System.out.println("password:"+password);
        System.out.println("confirmPassword:"+confirmPassword);
        if (Objects.equals(password, confirmPassword)){
        clientservice.clientRegister(client);
        return "clientRegisterSucc";}
        else { request.setAttribute("error", "Password not Same!!,please confirm again");
            return "clientRegister";}
    }

    @RequestMapping("/toTutorSelection")
    public String toTutorSelection() {
        return "tutorSelection";
    }

//个人界面
    @RequestMapping("/toClientPersonal")
    public String toPersonal(Model model){
//        kehuname=this.kehuname;
        System.err.println("kehuName:" + kehuname);
        Client client1 = clientservice.queryClientByName(kehuname);
        System.err.println("client1=>"+client1);
        model.addAttribute("PClient", client1);
//        List<Client> list = new ArrayList<Client>();
//        list.add(client1);
        return "clientPersonal";
    }


    @RequestMapping("/toUpdateCPersonal")
    public String toUCP(Model model){
        System.err.println("kehuName:" + kehuname);
        Client client1 = clientservice.queryClientByName(kehuname);
        System.err.println("client1=>"+client1);
        model.addAttribute("WClient", client1);
        return "updateCPersonal";
    }

    @RequestMapping("/updateClientPersonal")
    public String updateClientPersonal(Client client1,Model model) {
        System.out.println("updateClient=>" + client1);
        clientservice.updateClient(client1);
        System.err.println("更改后的为"+client1);
//        model.addAttribute("PClient", client1);
        return "redirect:/client/toClientPersonal";
    }

//    @RequestMapping("viewAllTutor1")
//    public String viewAllTutor1(Model model){
//        List<Client> list = clientservice.queryTAP();
//        model.addAttribute("list", list);
//        return "VAT1";
//    }
//    @RequestMapping("insertApp")
//    public String insertApp(Model model, @RequestParam int tutorId,
//                            @RequestParam String clientName,
//                            HttpServletRequest request, HttpSession session){
//        Client client=clientservice.insertApp(tutorId,clientName);
//        System.err.println("目前=》"+client);
//        return "VAT1";
//    }
@RequestMapping(value = "/toInsertApp", method = RequestMethod.GET)
public String toInsertApp(Model model,int id) {
    Tutor tutor = tutorservice.queryTutorById(id);
    System.out.println(tutor);
    model.addAttribute("RTutor", tutor);
    model.addAttribute("AppClient", kehuname);
    return "ReserveForm";
}

    @RequestMapping(value = "/insertApp", method = RequestMethod.POST)
    public String insertApp(@RequestParam String tutorName,@RequestParam String clientName){
//        Tutor tutor= tutorservice.queryTutorByName(tutorName);
//        System.out.println("tutor=>"+tutor);
//        Client client=clientservice.queryClientByName(clientName);
//        System.err.println("Client=>:" +client);
        tutorservice.insertApp(tutorName,clientName);
        return "redirect:/tutor/viewAllTutor";
    }

    @RequestMapping("/clientCourse")
    public String clientCourse(Model model){
        System.err.println("kehuName=>:" + kehuname);
        List<Appointment> list = clientservice.clientApp(kehuname);
        System.err.println("app=>" + list);
//        List<Appointment> list1 = new ArrayList<Appointment>();
//        list.add(list);
        model.addAttribute("list", list);
        return "clientCourse";
    }
    @RequestMapping("/clientViewFeedback")
    public String clientViewFeedback(Model model){
        List<Feedback> list=feedbackservice.cFeedback(kehuname);
        model.addAttribute("list", list);
        return "clientViewFeedback";
    }



}


