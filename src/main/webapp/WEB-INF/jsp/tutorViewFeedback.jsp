<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/20
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>FeedbackToStudent</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tutorDashb.css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
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
            <span>Welcome</span>
            <img src="${pageContext.request.contextPath}/images/tutorAvatar.png" >
        </li>
    </ul>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">

            <div class="page-header">
                <h1>
                    <small>The Feedback I wrote to Learners</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <!-- 隔行变色 -->
            <table class="table table-hover table-striped">
                <thead>
                <tr style="background-color: #cedaef">
                    <th>FeedbackId</th>
                    <th>ClientId</th>
                    <th style="background-color: #99d992">ClientName</th>
                    <th>TutorId</th>
                    <th style="background-color: #23beb5">TutorName</th>
                    <th>Student Performance</th>
                    <th>Tutor Suggestion</th>
                    <th>Date</th>
<%--                    <th style="background-color: #53d9d1">Operation</th>--%>
                </tr>
                </thead>

                <!-- 用户从数据库中查询出来，从这个list中遍历:foreach -->
                <tbody>
                <c:forEach var="feedback" items="${list}">
                    <tr>
                        <td>${feedback.feedbackId}</td>
                        <td>${feedback.clientId}</td>
                        <td>${feedback.clientName}</td>
                        <td>${feedback.tutorId}</td>
                        <td>${feedback.tutorName}</td>
                        <td style="color: #27b288">${feedback.performance}</td>
                        <td style="color: #859aee">${feedback.suggestion}</td>
                        <td>${feedback.feedbackDate}</td>
<%--                        <td>--%>
<%--                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/feedback/toDeleteFeedback/${feedback.feedbackId}" style="background-color: #fa9442">Delete</a>--%>
<%--                        </td>--%>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
