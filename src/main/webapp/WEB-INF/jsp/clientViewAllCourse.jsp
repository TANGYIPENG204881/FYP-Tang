
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/26
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>clientDashboard</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/clientDashb.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tutorSelectionSearchingBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/excellentTutor.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/selectionMiddleNavigation.css">

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



<form class="row domain-search bg-pblue">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h3 class="form-title">Find Your <strong>Dream Tutor</strong></h3>
                <p>Search for your dream tutor now</p>
            </div>
            <div class="col-md-9">
                <div class="input-group">
                    <input type="search" class="form-control" placeholder="Search Tutor Name">
                    <span class="input-group-addon" >
                        <input type="submit" value="Search" class="btn btn-primary"></span>
                </div>
            </div>

            <h4>No idea?<a class="btn-primary" href="#">See our excellent tutor first</a></h4>

        </div>
    </div>
</form>

<div class="navigation">
    <ul>
        <li><a href="${pageContext.request.contextPath}/client/toTutorSelection">ExcellentTutor</a></li>
        <li><a href="${pageContext.request.contextPath}/tutor/viewAllTutor">AllTutor</a></li>
        <li><a href="${pageContext.request.contextPath}/course/clientViewAllCourse">CoursePrice</a></li>

    </ul>
</div>

<div class="container" style="margin-top: 15px">
    <h3 style="color: #6d7a83 ; text-align: center">The following pricing is the official unified pricing<i class="fa far fa-bullhorn"></i></h3>
<div class="row clearfix" >
    <div class="col-md-12 column"style="margin-top: 10px">
        <!-- 隔行变色 -->
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th style="background-color: #53d9d1">CourseID</th>
                <th style="background-color: #f8cdda">CourseName</th>
                <th style="background-color: #a69ed7">CourseDuration</th>
                <th style="background-color: #f8a665">CoursePrice</th>
            </tr>
            </thead>

            <!-- 用户从数据库中查询出来，从这个list中遍历:foreach -->
            <tbody>
            <c:forEach var="course" items="${list}">
                <tr>
                    <td>${course.courseID}</td>
                    <td>${course.courseName}</td>
                    <td>${course.courseDuration}</td>
                    <td>${course.coursePrice}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</div>
</body>
</html>


