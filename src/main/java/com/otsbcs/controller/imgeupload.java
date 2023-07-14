package com.otsbcs.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@RequestMapping("/imge")
@MultipartConfig
@WebServlet(name = "imgeupload", value = "/imgeupload")
public class imgeupload extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("aaaaaaaaaaaaaaaa");
    }
}
