<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/26
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>clientViewAllTutor</title>
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
<style>
    img{
        height: 100px;
        width: 80px;
    }
    /*table td{*/
    /*    max-width: 142px;*/
    /*    overflow: hidden;*/
    /*    text-overflow:ellipsis;*/
    /*    white-space: nowrap;*/
    /*}*/
    /*table td:hover {*/
    /*    overflow: auto;*/
    /*    white-space: pre-wrap;*/
    /*}*/
</style>
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
        <li><a href="${pageContext.request.contextPath}/tutor/viewAllTutor1">AllTutor</a></li>
        <li><a href="${pageContext.request.contextPath}/course/clientViewAllCourse">CoursePrice</a></li>

    </ul>
</div>


<div class="container" style="overflow: auto; height: 1200px;margin-top: 20px">
    <div class="row clearfix">
        <div class="col-md-12 column">

        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a id="all" class="btn btn-primary" style="background-color: #619ae7" href="${pageContext.request.contextPath}/tutor/viewAllTutor1">Show all</a>
        </div>
        <div class="col-md-4 column">
            <!-- 查询功能 -->
            <form action="${pageContext.request.contextPath}/tutor/clientQueryTutor" method="post" style="float: right" class="form-inline">
                <span style="color: #ee1f2f; font-weight:bold">${error}</span>
                <input type="text" name="queryTutorName" class="form-control" placeholder="Enter Name">
                <input style="background-color: #e2ea6a;width: 50px;height: 25px;border-radius: 5px" type="submit" value="Query Tutor" >
            </form>
        </div>
    </div>


    <div class="row clearfix">
        <div class="col-md-12 column" style="margin-top: 10px">
            <!-- 隔行变色 -->
            <table class="table table-hover table-striped">
                <thead>
                <tr style="font-size: large;background-color: #a9c4b1">
                    <th>Id</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Subject</th>
                    <th>TeachingTime</th>
<%--                    <th>Link</th>--%>
                    <th>Telephone</th>
                    <%--                <th>Description</th>--%>
                    <th>Operations</th>
                </tr>
                </thead>
                <!-- 用户从数据库中查询出来，从这个list中遍历:foreach -->
                <tbody>
                <c:forEach var="tutor"  items="${list}">
                    <tr>
                        <td >${tutor.tutorId}</td>
                        <td >${tutor.tutorName}</td>
                        <td>
                            <img id="upload" alt="" src="/upload/${tutor.tutorImg}">
                        </td>
                        <td>${tutor.tutorTeachingSubject}</td>
                        <td>${tutor.tutorTeachingTime}</td>
<%--                        <td>${tutor.tutorLink}</td>--%>
                        <td>${tutor.tutorTelephone}</td>


                        <td>
                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/tutor/toDetail?id=${tutor.tutorId}" type="button" style='color: #9d106c;background-color: #f19a55'>Detail</a>
                            &nbsp;|&nbsp;
                            <a onclick="alertTips()"class="btn btn-primary" href="${pageContext.request.contextPath}/client/toInsertApp?id=${tutor.tutorId}" type="button" style='color: #22142a;background-color: #42facf'>Reserve</a>
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
        var x = confirm("Are you sure? We will jump to payment");
        if (x)
            return true;
        else
            return false;
    }
</script>

</body>
</html>





