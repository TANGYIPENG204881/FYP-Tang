<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/7
  Time: 2:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        .h_title{position: relative;display: inline-block;color: #c9e7d5
        }
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
        .box_main_right{
            width: 50%;
            height:450px;
            float: left;
            position: relative;

        }
        .box_form{
            position: absolute;
            top:50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        body{
            background: #bbd3c5;
        }
        .zuoTu{
            width:50%;
            height:450px;
            float: left;
            background-image: url("${pageContext.request.contextPath}/images/UPM1.png");
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;

        }
    </style>
    <title>adminLogin</title>
</head>
<body style="text-align: center">

<div class="box_div">
    <div class="box_main">
        <div class="zuoTu">
            <br>
            <h1 class="h_title">Admin Login</h1>
        </div>
        <div class="box_main_right">
            <div class="box_form">
                <div style="width: 300px">
                    <h2 style="float: left">Log&nbsp;&nbsp;In</h2>

                </div>
                <form action="${pageContext.request.contextPath}/admin/adminLogin"  method="post" style="width: 300px;">
                    <input type="text" name="adminName" value="" placeholder="adminName" style="width: 100%;height: 40px;border-radius: 5px" required><br><br>
                    <input type="password" name="adminPassword" value="" placeholder="Password" style="width: 100%;height: 40px;border-radius: 5px" required><br><br>
                    <input type="submit"value="Log&nbsp;&nbsp;in" name="adminLogin" style="width: 100%;height: 35px;background: #68d286;color: white;font-size: 17px;border-radius: 5px">

                </form>
                    <div style="color: #ee1f2f">
                        ${error}

                    </div>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.jsp">Back to HomePage</a>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
