<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/2
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<!DOCTYPE HTML>
<html>
<head>
    <title>clientCourse</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入字体图标 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/clientDashb.css">

</head>
<body>

<div class="menu-bar">
    <h1 class="logo">OTSBCS<span>Welcome.</span></h1>
    <ul>
        <li><a href="${pageContext.request.contextPath}/client/toClientDashboard">HOME</a></li>
        <li><a href="${pageContext.request.contextPath}/client/clientCourse">My Courses</a></li>
        <li><a href="${pageContext.request.contextPath}/course/clientViewAllCourse">Subjects <i class="fa fa-caret-down"></i></a>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="#">Basic Math</a></li>
                    <li><a href="#">Basic Java</a></li>
                    <li><a href="#">Basic Languages <i class="fa fa-caret-right"></i></a>
                        <div class="dropdown-menu-1">
                            <ul>
                                <li><a href="#">Basic Malay</a></li>
                                <li><a href="#">Basic Chinese</a></li>
                                <li><a href="#">Basic English</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">Basic Phython</a></li>
                </ul>
            </div>
        </li>
        <li><a href="${pageContext.request.contextPath}/client/toTutorSelection">Find Tutor</a></li>
        <li><a href="${pageContext.request.contextPath}/client/toClientPersonal">Personal<i class="fa fa-caret-down"></i></a>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/client/toClientPersonal">Edit Personal</a></li>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                </ul>
            </div>
        </li>
        <li>
            <span>Welcome</span>
            <img src="${pageContext.request.contextPath}/images/clientTouxiang.png" >
        </li>
    </ul>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">

            <div class="page-header">
                <h1>
                    <small>My course--Scheduled courses<i class="fa fa-solid fa-bell"></i></small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/client/clientCourse">Show all</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/client/clientViewFeedback"
               style="background-color: #40a648">View My Feedback from Tutor <i class="fa fa-regular fa-comment"></i></a>
        </div>
        <div class="col-md-4 column"></div>
    </div>

    <div class="row clearfix" style="margin-top: 10px">
        <div class="col-md-12 column">
            <!-- 隔行变色 -->
            <table class="table table-hover table-striped">
                <thead>
                <tr style="background-color: #cedaef">
                    <th>AppointId</th>
<%--                    <th>ClientId</th>--%>
<%--                    <th style="background-color: #99d992">ClientName</th>--%>
                    <th>TutorId</th>
                    <th style="background-color: #23beb5">TutorName</th>
                    <th>TutorImage</th>
                    <th>Time</th>
                    <th>Link</th>
                    <th>Telephone</th>
                    <th>Subject</th>
                    <th>Operation</th>
                </tr>
                </thead>

                <!-- 用户从数据库中查询出来，从这个list中遍历:foreach -->
                <tbody>
                <c:forEach var="appointment" items="${list}">
                    <tr>
                        <td>${appointment.appID}</td>
<%--                        <td>${appointment.clientID}</td>--%>
<%--                        <td>${appointment.clientName}</td>--%>
                        <td>${appointment.tutorID}</td>
                        <td>${appointment.tutorName}</td>
                        <td>
                            <img id="upload" alt="" style="height: 45px; width: 40px;" src="/upload/${appointment.tutorImage}">
                        </td>
                        <td>${appointment.tutoringTime}</td>
                        <td style="color: #324bad">${appointment.link}</td>
                        <td>${appointment.tutorTelephone}</td>
                        <td>${appointment.courseName}</td>
                        <td>
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/appointment/toDeleteApp/${appointment.appID}" style="background-color: #fa9442">Cancel</a>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>
