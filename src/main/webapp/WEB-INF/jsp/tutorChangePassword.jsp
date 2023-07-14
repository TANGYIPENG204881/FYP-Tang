<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/15
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>tutorChangePassword</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- 引入 Bootstrap -->
        <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background-image:url("${pageContext.request.contextPath}/images/study1.png");
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
                text-align: left;
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
    <h2>Change Password</h2>
    <form action="${pageContext.request.contextPath}/tutor/tutorChangePassword" method="post">
        <input type="hidden" name="tutorId" value="${PTutor.tutorId}">
        <label>Old Password:</label>
        <input type="text" name="tutorOldPassword" value="${PTutor.tutorPassword}">
        <label>New Password:</label>
        <input type="text" name="tutorPassword"  required>
        <label>Confirm New Password:</label>
        <input type="text" name="confirmPassword" required>

        <button type="submit"><i class="fa fa-user-plus"></i>Confirm</button>
    </form>
    <div style="color: #ee1f2f">
        ${error}
    </div>
</div>

</body>
</html>
