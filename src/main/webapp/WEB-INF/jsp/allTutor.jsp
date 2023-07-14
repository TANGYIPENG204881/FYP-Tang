<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/14
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>

<html>
<head>
    <title>Clients list</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<style>
    body {
        overflow: hidden;
        margin: 0;
    }
    ul {
        list-style-type: none;
        margin: 0;
        padding:20px;
        width: 8%;
        background-color: #536d88;
        position: fixed;
        height: 100%;
        overflow: auto;
    }
    ul li{
        text-align: center;
        list-style: none;
        width: 70px;
    }
    ul li a{
        display: flex;
        justify-content: center;
        align-items: center;
        /* 垂直排列 */
        flex-direction: column;
        width: 100%;
        height: 15%;
        color: #d1d1d1;
        text-decoration: none;
    }
    ul li a:hover{
        color: #fff;
        background-color: #99d992;
    }
    ul li img{
        width: 50px;
        height: 50px;
        border-radius: 50%;
        text-align: center;
    }
    ul li span{
        color: #3cd949;
        text-align: center;
        text-decoration: none;
    }
    ul li a span{
        color: #ffffff;
        text-align: center;
        text-decoration: none;
    }
    ul li a i{
        text-align: center;
        font-size: 25px;
        margin-bottom: 10px;
    }
    img{
        height: 45px;
        width: 40px;
    }
    table td{
        max-width: 142px;
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
    }
    table td:hover {
        overflow: auto;
        white-space: pre-wrap;
    }

</style>
<body>
<ul>
    <li>
        <img src="${pageContext.request.contextPath}/images/upm.png" >
        <span>Welcome Admin</span>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/adminDashboard">
            <i class="fa fa-home" aria-hidden="true"></i>
            <span>Home</span>
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/appointment/allApp">
            <i class="fa fa-sitemap" aria-hidden="true"></i>
            <span>Appointment List</span>
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/client/allClient">
            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
            <span>Client Management</span>
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/tutor/allTutor">
            <i class="fa fa-graduation-cap" aria-hidden="true"></i>
            <span>Tutor  Management</span>
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/course/allCourse">
            <i class="fa fa-th-large"  aria-hidden="true"></i>
            <span>Course Management</span>
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/index.jsp">
            <i class="fa fa-sign-out" aria-hidden="true"></i>
            <span>Log out</span>
        </a>
    </li>
</ul>

<div class="container" style="overflow: auto; height: 1200px">
    <div class="row clearfix">
        <div class="col-md-12 column">

            <div class="page-header">
                <h1>
                    <small>Tutor list -- all tutor</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <!-- toAddTutor -->
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/tutor/toAddTutor">Add Tutor</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/tutor/allTutor">Show all</a>

        </div>
        <div class="col-md-4 column"></div>
        <div class="col-md-4 column">
            <!-- 查询功能 -->
            <form action="${pageContext.request.contextPath}/tutor/queryTutor" method="post" style="float: right" class="form-inline">
                <span style="color: #ee1f2f; font-weight:bold">${error}</span>
                <input type="text" name="queryTutorName" class="form-control" placeholder="Enter query by name">
                <input type="submit" value="Query" class="btn btn-primary">
            </form>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <!-- 隔行变色 -->
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Age</th>
<%--                    <th>Password</th>--%>
                    <th>Telephone</th>
                    <th>University</th>
                    <th>GPA</th>
                    <th>Subject</th>
                    <th>Link</th>
                    <th>TeachingTime</th>
                    <th>Image</th>
                    <th>Description</th>
                </tr>
                </thead>


                <!-- 用户从数据库中查询出来，从这个list中遍历:foreach -->
                <tbody>
                <c:forEach var="tutor" items="${list}">
                    <tr>
                        <td>${tutor.tutorId}</td>
                        <td>${tutor.tutorName}</td>
                        <td>${tutor.tutorAge}</td>
<%--                        <td>${tutor.tutorPassword}</td>--%>
                        <td>${tutor.tutorTelephone}</td>
                        <td>${tutor.tutorUniversity}</td>
                        <td>${tutor.tutorGPA}</td>
                        <td>${tutor.tutorTeachingSubject}</td>
                        <td>${tutor.tutorLink}</td>
                        <td>${tutor.tutorTeachingTime}</td>

                        <td>
                            <img id="upload" alt="" src="/upload/${tutor.tutorImg}">
                        </td>
                        <td>${tutor.tutorDescription}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/tutor/toUpdateTutor?id=${tutor.tutorId}" style='color: #23beb5'>Update</a>
                            &nbsp;|&nbsp;
                            <a href="${pageContext.request.contextPath}/tutor/toDeleteTutor/${tutor.tutorId}" style='color: #ee1f2f'>Delete</a>
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
