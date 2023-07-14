<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/23
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>tutorDashboard</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tutorDashb.css">
</head>
<body>
<div class="menu-bar">
    <h1 class="logo">OTSBCS<span>Welcome.</span></h1>
    <ul>
        <li><a href="${pageContext.request.contextPath}/tutor/tutorDashboard">HOME</a></li>
        <li><a href="${pageContext.request.contextPath}/tutor/toTutorCourses">My Courses</a></li>
        <li><a href="#">Available Subjects</a></li>

        <li><a href="${pageContext.request.contextPath}/tutor/toTutorViewFeedback">Feedback</a></li>
        <li><a href="${pageContext.request.contextPath}/tutor/toTutorPersonal">Personal<i class="fa fa-caret-down"></i></a>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/tutor/toTutorChangePassword">Edit Password</a></li>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                </ul>
            </div>
        </li>
        <li>
            <span>Welcome &nbsp;${TNAME}</span>
            <img src="${pageContext.request.contextPath}/images/tutorAvatar.png" >
        </li>
    </ul>
</div>


<div class="jiemian">
    <div class="background-one">
        <div class="link-container">
            <a class="link-one" href="${pageContext.request.contextPath}/tutor/toTutorViewFeedback">Feedback</a>
        </div>
    </div>
    <div class="background-two link-container">
        <a class="link-two" href="${pageContext.request.contextPath}/tutor/toTutorCourses">Courses</a>
    </div>

    <div class="background-three link-container">
        <a class="link-three" href="${pageContext.request.contextPath}/tutor/toTutorPersonal">Personal</a>
    </div>


</div>
</body>
</html>

