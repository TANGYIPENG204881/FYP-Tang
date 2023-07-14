<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/26
  Time: 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>

<html>
<head>
    <title>ClientPersonal</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/clientDashb.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/clientPersonal.css">

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
                    <li><a href="#">Basic Java</a></li>
                    <li><a href="#">Basic Languages <i class="fa fa-caret-right"></i></a>
                        <div class="dropdown-menu-1">
                            <ul>
                                <li><a href="#">Basic Malay</a></li>
                                <li>
                                    <a href="#">Basic Chinese</a></li>
                                <li>
                                <li><a href="#">Basic English</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">Basic Python</a></li>
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


<div style="background-color: #97a1d3;margin-top: 50px" >
<form action="${pageContext.request.contextPath}/client/updateClientPersonal" method="post">

<div style="background-color: #ffffff" class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                <img class="rounded-circle mt-5" width="150px" src="${pageContext.request.contextPath}/images/clientTouxiang.png">
                <br><span class="text-black-50">Profile</span></div>
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-left">Profile Settings</h4>
                </div>
                <div class="row mt-2">
                    <input type="hidden" name="clientID" value="${PClient.clientID}"/>

                    <div class="col-md-6"><label class="labels">Name</label><input type="text" class="form-control"  value="${PClient.clientName}"></div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-6"><label class="labels">Age</label><input type="text" class="form-control"  value="${PClient.age}"></div>
                    <div class="col-md-12"><label class="labels">Password</label><input type="text" class="form-control"  value="${PClient.password}"></div>
                    <div class="col-md-12"><label class="labels">TeleNum</label><input type="text" class="form-control"  value="${PClient.teleNum}"></div>
                    <div class="col-md-12"><label class="labels">Email</label><input type="text" class="form-control"  value="${PClient.email}"></div>

                </div>
                <div class="row mt-3" style="margin-top:20px ">
                    <div class="col-md-6"><a class="btn btn-primary" type="button"
                                             href="${pageContext.request.contextPath}/client/clientCourse">My Courses</a></div>
                    <div class="col-md-6"><a class="btn btn-primary" href="${pageContext.request.contextPath}/client/clientViewFeedback"
                                             style="background-color: #57a95e">View My Feedback from Tutor <i class="fa fa-regular fa-comment"></i></a></div>
                </div>
                <div class="mt-5 text-center" style="margin-top:30px;"><a href="${pageContext.request.contextPath}/client/toUpdateCPersonal"
                                                                          class="btn btn-primary profile-button" type="button">Edit Personal</a></div>
            </div>
        </div>
    </div>
</div>

</form>
</div>
<div class="bg" style="height: 180px;background: linear-gradient(to right,#43cea2, #8ca6db);">
</div>
</body>
</html>