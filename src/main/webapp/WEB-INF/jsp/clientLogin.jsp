<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/10
  Time: 15:20
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
            background-image: url("${pageContext.request.contextPath}/images/clientLogin.png");
            background-size: 590px 450px;
            background-position: -60px;
        }
        .box_main_right{
            width: 50%;
            height:450px;
            float: left;
            position: relative;
            background: #F2E6CE;

        }
        .box_form{
            position: absolute;
            top:50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        body{
            background: #6E8B74;
        }
    </style>
    <title>LearnerLogin</title>
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
                    <h2 style="float: left">User&nbsp;&nbsp;Log&nbsp;&nbsp;In</h2></div>
                <form action="${pageContext.request.contextPath}/client/clientLogin"  method="post" style="width: 300px;">
                    <input type="text" name="clientName" value="" placeholder="Name" style="width: 100%;height: 40px;border-radius: 5px" required><br><br>
                    <input type="password" name="password" value="" placeholder="Password" style="width: 100%;height: 40px;border-radius: 5px" required><br><br>

                    <input type="submit" value="Log&nbsp;&nbsp;In" name="clientLogin" style="width: 100%;height: 35px;background: #68d286;color: white;font-size: 17px;border-radius: 5px">
                </form>
                <div style="color: #ee1f6e">
                    ${error}
                    <br>
                </div>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/client/toClientRegister" style="background-color: #e56927;text-decoration:none;" >No account? go to register</a><br>
<%--                <div style="color: #ee1f6e">--%>
<%--                    ${error}--%>

<%--                <br>--%>
<%--                </div>--%>
                <a href="${pageContext.request.contextPath}/index.jsp" style="color: #354788;text-decoration:none;">Back to HomePage</a>
                </form>
            </div>
        </div>
    </div>
</div>