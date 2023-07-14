<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/7
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>

<html>
<head>
    <title>adminDashhboard</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminDashb.css">
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

<div class="main">
    <div class="container" style="margin-left: 150px">
        <div class="row">
            <div class="four col-md-3">
                <div class="counter-box colored">
                    <i class="fa fa-group"></i>

                    <span class="counter">${clientTotal}</span>
                    <p>learners online</p>
                </div>
            </div>
            <div class="four col-md-3">
                <div class="counter-box">
                    <i class="fa fa-graduation-cap"></i>
<%--                    <i class="fa fa-thumbs-o-up"></i>--%>
                    <span class="counter">${tutorTotal}</span>
                    <p>Tutor Online</p>
                </div>
            </div>
            <div class="four col-md-3">
                <div class="counter-box">
                    <i class="fa fa-envelope"></i>
                    <span class="counter">${appTotal}</span>
                    <p>Reservation quantity</p>
                </div>
            </div>
            <div class="four col-md-3">
                <div class="counter-box">
                    <i class="fa fa-laptop" ></i>
                    <span class="counter">${courseTotal}</span>
                    <p>Course quantity</p>
                </div>
            </div>
        </div>
    </div>


<div class="welcome" >
    <h3>Welcome admin</h3>
</div>
</div>

</body>
<script>
    $(document).ready(function() {
        $('.counter').each(function () {
            $(this).prop('Counter',0).animate({
                Counter: $(this).text()
            }, {
                duration: 4000,
                easing: 'swing',
                step: function (now) {
                    $(this).text(Math.ceil(now));
                }
            });
        });
    });

</script>
</html>
