<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/11
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Successful Registration</title>
</head>
<style>
    body{
    background-image:url("${pageContext.request.contextPath}/images/tutorRegisterSuc.jpg");
    background-repeat: no-repeat;
    background-size:1600px 760px;

    }
    .zhangwei{
        height: 35px;
        width:230px;
        text-align: center;
        margin: 0 auto;
        padding: 20px 20px;
        white-space:nowrap;
        font-size: 18px;
        background-color: #beeece;
        border-color: #a69ed7;
        border-radius:10px;
        position: absolute;
        top: 300px;
        left: 660px;
    }
</style>
<body>

<div class="zhangwei">
    <a class="btn btn-primary" style="text-decoration: none" href="${pageContext.request.contextPath}/client/toClientLogin">Account created Successfully<br>Back to Login</a>

</div>
</body>
</html>
