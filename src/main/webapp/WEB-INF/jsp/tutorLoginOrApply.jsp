<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/8
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>tutorLoginOrApply</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tutorLoginOrApply.scss">
</head>
<body>

<div id="container">
    <div id="success-box">
        <div class="dot"></div>
        <div class="dot two"></div>
        <div class="face">
            <div class="eye"></div>
            <div class="eye right"></div>
            <div class="mouth happy"></div>
        </div>
        <div class="shadow scale"></div>
        <div class="message"><h1 class="alert">I am a Tutor</h1><p>Only restricted to tutors who have successfully applied for login</p></div>
        <a class="button-box" style="text-decoration: none" href="${pageContext.request.contextPath}/tutor/toTutorLogin"><h1 class="green" style="color: #70cc66;font-weight:bold">Login</h1></a>
    </div>
    <div id="error-box">
        <div class="dot"></div>
        <div class="dot two"></div>
        <div class="face2">
            <div class="eye"></div>
            <div class="eye right"></div>
            <div class="mouth happy"></div>
        </div>
        <div class="shadow move"></div>
        <div class="message"><h1 class="alert">To be a tutor</h1><p>I want to be a tutor, click here to apply</div>
        <a class="button-box" style="text-decoration: none" href="${pageContext.request.contextPath}/applicant/toApplicantRegister"><h1 class="red" style="color: #e82854;font-weight:bold">Apply</h1></a>
    </div>
</div>



</body>
</html>
