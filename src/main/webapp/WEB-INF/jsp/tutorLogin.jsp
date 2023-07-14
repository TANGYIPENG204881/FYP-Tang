<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/15
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        .h_title{position: relative;display: inline-block;}
        .box_div{
            width: 100%;
        }
        .box_main{
            position: absolute;
            top:50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 60%;
            min-width: 700px;
            box-shadow: 0 0 30px #322f2f;



        }
        .box_left{
            background-image: url("${pageContext.request.contextPath}/images/tutorLogin.png");
            background-size: 590px 450px;
            background-position: -80px;

        }
        .box_main_right{
            width: 50%;
            height:450px;
            float: left;
            position: relative;
            background: #61a49a;

        }
        .box_form{
            position: absolute;
            top:50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        body{
            background: linear-gradient(#a18cd1,#fbc2eb,#ffd1ff)
        }
    </style>
    <title>adminLogin</title>
</head>
<body style="text-align: center">

<div class="box_div">
    <div class="box_main">
        <div class="box_left" style="width:50%;height:450px;float: left;">
            <br>

        </div>
        <div class="box_main_right">
            <div class="box_form">
                <div style="width: 300px">
                    <h1 style="float: left;color: white">Tutor&nbsp;&nbsp;Log&nbsp;&nbsp;In</h1>

                </div>
                <form action="${pageContext.request.contextPath}/tutor/tutorLogin"  method="post" style="width: 300px;">
                    <input type="text" name="tutorName" value="" placeholder="Tutor Name" style="width: 100%;height: 40px;border-radius: 5px" required><br><br>
                    <input type="password" name="tutorPassword" value="" placeholder="Password" style="width: 100%;height: 40px;border-radius: 5px" required><br><br>
                    <input type="submit" value="Log&nbsp;&nbsp;In" name="tutorLogin" style="width: 100%;height: 35px;background: #68d286;color: white;font-size: 17px;border-radius: 5px">
                </form>

                <div style="color: #ee1f1f">
                    ${error}
                </div>
                    <br>
                <div>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/tutor/toTutorRegister" style="text-decoration: none;background-color: #9896bd">No account? go to register</a>
                </div>
                <div style="margin-top: 20px">
                <a style="color:#ffffff;text-decoration: none" href="${pageContext.request.contextPath}/index.jsp">Back to HomePage</a>
                </div>
                    </form>
            </div>
        </div>
    </div>
</div>
