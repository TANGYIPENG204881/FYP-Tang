<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/23
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateClient</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
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


</style>


<body>
<ul>
    <li>
        <img src="${pageContext.request.contextPath}/images/upm.png" >
        <span>Welcome Admin</span>
    </li>
    <li>
        <a href="#">
            <i class="fa fa-home" aria-hidden="true"></i>
            <span>Home</span>
        </a>
    </li>
    <li>
        <a href="#">
            <i class="fa fa-sitemap" aria-hidden="true"></i>
            <span>Courses List</span>
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
        <a href="#">
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


<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Update Course</small>
                </h1>
            </div>
        </div>
    </div>
    <!-- 点击add 就把中间信息发送到addCourse，识别到后添加到controller里的addBook -->
    <form action="${pageContext.request.contextPath}/course/updateCourse" method="post">
        <!-- 传递隐藏域 -->
        <input type="hidden" name="courseID" value="${QCourse.courseID}"/>

        <div class="form-group">
            <label>CourseName</label>
            <input type="text" name="courseName" class="form-control" value="${QCourse.courseName}" required>
        </div>
         <div class="form-group">
            <label>Name</label>
            <input type="text" name="courseDuration" class="form-control" value="${QCourse.courseDuration}" required>
        </div>
        <div class="form-group">
            <label>CoursePrice</label>
            <input type="text" name="coursePrice" class="form-control" value="${QCourse.coursePrice}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="Update">
        </div>

    </form>

</div>


</body>
</html>
