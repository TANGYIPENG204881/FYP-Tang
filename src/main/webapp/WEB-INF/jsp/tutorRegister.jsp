<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/24
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>tutorRegister</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    body {
      background-image:url("${pageContext.request.contextPath}/images/tutorRegister.png");
      background-repeat: no-repeat;
      background-size: cover;
    }
    .container {
      background-color: #bebdbd;
      border-radius: 5px;
      box-shadow: 0 0 10px 1px rgba(0,0,0,0.2);
      margin: auto;
      margin-top: 50px;
      padding: 20px;
      max-width: 500px;
      text-align: center;
    }
    h2 {
      color: #333;
      font-size: 32px;
      margin-bottom: 30px;
    }
    input{
      border-radius: 3px;
      border: none;
      box-shadow: 0 0 5px 1px rgba(0,0,0,0.1);
      height: 30px;
      margin-bottom: 10px;
      padding: 5px;
      width: 100%;
    }
    button {
      background-color: #4CAF50;
      border: none;
      border-radius: 3px;
      color: #fff;
      cursor: pointer;
      font-size: 16px;
      height: 40px;
      margin-top: 20px;
      width: 100%;
    }
    button:hover {
      background-color: #3E8E41;
    }
    .fa {
      margin-right: 5px;
    }
  </style>
</head>
<body>
<div class="container">
  <h2>Register An Account</h2>
  <form action="${pageContext.request.contextPath}/tutor/tutorRegister" enctype="multipart/form-data" method="post" >
    <input type="text" name="tutorName" placeholder="Name" required>
    <input type="text" name="tutorAge" placeholder="Age" required>
    <input type="text" name="tutorPassword" placeholder="password" required>
    <input type="text" name="tutorTelephone" placeholder="teleNumber" required>
    <input type="text" name="tutorUniversity" placeholder="university" required>
    <input type="text" name="tutorGPA" placeholder="GPA" required>
    <input type="text" name="tutorTeachingSubject" placeholder="subject" required>
    <input type="text" name="tutorLink" placeholder="meetingLink" required>
    <input type="text" name="tutorTeachingTime" placeholder="TeachingTime" required>
    <input type="file" name="file">
    <input type="text" name="tutorDescription" placeholder="Description" required>

    <button type="submit"><i class="fa fa-user-plus"></i>Register</button>
  </form>
</div>
</body>
</html>

