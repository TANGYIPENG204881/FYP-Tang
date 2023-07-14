<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/20
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>clientCourse</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
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
                    <small>Feedback From Tutor</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/client/clientViewFeedback">Show all</a>
        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <!-- 查询功能 -->
            <form action="#" method="post" style="float: right" class="form-inline">
                <span style="color: #ee1f2f; font-weight:bold">${error}</span>
                <input type="text" name="queryTName" class="form-control" placeholder="Enter query by TutorName">
                <input type="submit" value="Query" class="btn btn-primary">
            </form>
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
                    <th>My Performance</th>
                    <th>Tutor Suggestion</th>
                    <th>Date</th>
                    <th style="background-color: #53d9d1">Operation</th>
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
                        <td>
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}" style="background-color: #fa9442">View Detail</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</body>
</html>
