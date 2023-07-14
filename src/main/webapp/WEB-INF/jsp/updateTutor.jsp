<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/21
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>updateTutor</title>
  <meta http-equiv="Content-Type" content="multipart/form-data;charset=utf-8" />

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
          <small>Update Tutor</small>
        </h1>
      </div>
    </div>
  </div>
  <!-- 点击add 就把中间信息发送到addClient，识别到后添加到controller里的addBook -->
  <form action="${pageContext.request.contextPath}/tutor/updateTutor"  enctype="multipart/form-data" method="post" >

    <input type="hidden" name="tutorId" value="${QTutor.tutorId}"/>

    <div class="form-group">
      <input type="text" name="tutorName" placeholder="Name" class="form-control" value="${QTutor.tutorName}" required>
    </div>
    <div class="form-group">
      <input type="text" name="tutorAge" placeholder="Age" class="form-control" value="${QTutor.tutorAge}" required>
    </div>
    <div class="form-group">
      <input type="text" name="tutorPassword" placeholder="Password" class="form-control" value="${QTutor.tutorPassword}" required>
    </div>
    <div class="form-group">
      <input type="text" name="tutorTelephone" placeholder="Telephone" class="form-control" value="${QTutor.tutorTelephone}" required>
    </div>
    <div class="form-group">
      <input type="text" name="tutorUniversity" placeholder="University" class="form-control" value="${QTutor.tutorUniversity}" required>
    </div>
    <div class="form-group">
      <input type="text" name="tutorGPA" placeholder="GPA" class="form-control" value="${QTutor.tutorGPA}" required>
    </div>
    <div class="form-group">
      <input type="text" name="tutorTeachingSubject" placeholder="Teaching Subject" class="form-control" value="${QTutor.tutorTeachingSubject}" required>
    </div>
    <div class="form-group">
      <input type="text" name="tutorLink" placeholder="Meeting Link" class="form-control" value="${QTutor.tutorLink}" required>
    </div>
    <div class="form-group">
      <input type="text" name="tutorTeachingTime" placeholder="Teaching Time" class="form-control" value="${QTutor.tutorTeachingTime}" required>
    </div>
    <label>Upload Photo Here</label>
    <%--<form enctype="multipart/form-data" method="post">--%>
    <input type="file" name="file" value="${QTutor.tutorImg}">

    <div class="form-group">
      <input type="text" name="tutorDescription" placeholder="TutorDescription" class="form-control" value="${QTutor.tutorDescription}" required>
    </div>

    <div class="form-group" >
      <input type="submit" style="background-color: #ceefd7" class="form-control" value="Update">
    </div>
    <a href="${pageContext.request.contextPath}/tutor/allTutor" style="color: #6464d7; display: block; text-align: center;" >Back to Tutor List</a>

    <%--  <input type = "submit" value = "Upload File"/>--%>
    <%--        <form enctype="multipart/form-data" method="post">--%>

    <%--                <input type = "file" name="tutorImg1" />--%>
    <%--            <input type = "submit" value = "Upload File"/>--%>
    <%--        </form>--%>
  </form>


</div>
</body>
</html>
