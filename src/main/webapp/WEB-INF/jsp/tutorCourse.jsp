<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/16
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>tutorCourse</title>
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
            <span>Welcome&nbsp;${TNAME}</span>
            <img src="${pageContext.request.contextPath}/images/tutorAvatar.png" >
        </li>
    </ul>
</div>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">

            <div class="page-header">
                <h1>
                    <small>${TNAME} ' Appointment Courses</small>
                </h1>
                <p style="font-size: small;color: #6ba9d5">Notice:Tutor need to carefully check the teaching time. Prepare for lessons in advance!
                    <i class="fa fa-graduation-cap" ></i></p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/tutor/toTutorCourses">Show all</a>
        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <!-- 查询功能 -->
            <form action="#" method="post" style="float: right" class="form-inline">
                <span style="color: #ee1f2f; font-weight:bold">${error}</span>
                <input type="text" name="queryStudent" class="form-control" placeholder="Enter query by Student Name">
                <input type="submit" value="Query" class="btn btn-primary">
            </form>
        </div>
    </div>


    <div class="row clearfix" style="margin-top: 10px">
        <div class="col-md-12 column">
            <!-- 隔行变色 -->
            <table class="table table-hover table-striped">
                <thead>
                <tr style="background-color: #cedaef">
                    <th>AppointId</th>
                    <th>ClientId</th>
                    <th style="background-color: #99d992">ClientName</th>
                    <th>Time</th>
                    <th>Link</th>
                    <th>Subject</th>
                    <th style="background-color: #f8ae72">Operation</th>
                </tr>
                </thead>

                <!-- 用户从数据库中查询出来，从这个list中遍历:foreach -->
                <tbody>
                <c:forEach var="appointment" items="${list}">
                    <tr>
                        <td>${appointment.appID}</td>
                        <td>${appointment.clientID}</td>
                        <td>${appointment.clientName}</td>
                        <td>${appointment.tutoringTime}</td>
                        <td style="color: #324bad">${appointment.link}</td>
                        <td>${appointment.courseName}</td>
                        <td>
                            <a onclick="alertTips()" class="btn btn-primary" href="${pageContext.request.contextPath}/tutor/toDeleteApp/${appointment.appID}" style="background-color: #fa9442">Cancel</a>
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/tutor/toWriteFeedbackToLearner?id=${appointment.appID}" style="background-color: #75ad23">Write Feedback</a>

                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
<script>
    function alertTips() {
        alert('Are you sure to delete and change the course?' +
            ' \nStudents will receive a cancellation text message and the amount will be refunded.');
    }
</script>
</body>
</html>

