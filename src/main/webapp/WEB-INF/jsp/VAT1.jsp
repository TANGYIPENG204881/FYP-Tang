<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/30
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入 Bootstrap -->
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!DOCTYPE HTML>
<html>
<head>
    <title>vat1</title>
    <style>
        img{
            height: 100px;
            width: 80px;
        }
        table td{
            max-width: 142px;
            overflow: hidden;
            text-overflow:ellipsis;
            white-space: nowrap;
        }
        table td:hover {
            overflow: auto;
            white-space: pre-wrap;
        }
    </style>
</head>
<body>
<div class="row clearfix">
    <div class="col-md-12 column" style="margin-top: 10px">
        <!-- 隔行变色 -->
        <table class="table table-hover table-striped">
            <thead>
            <tr style="font-size: large;background-color: #a9c4b1">
                <th>Id</th>
                <th>Name</th>
                <th>Image</th>
                <th>Subject</th>
                <th>TeachingTime</th>
                <th>Link</th>
                <th>Telephone</th>
<%--                <th>Description</th>--%>

                <th>Operations</th>
            </tr>
            </thead>
            <!-- 用户从数据库中查询出来，从这个list中遍历:foreach -->
            <tbody>
            <c:forEach var="tutor"  items="${list}">
                <tr>
                    <td >${tutor.tutorId}</td>
                    <td >${tutor.tutorName}</td>
                    <td>
                        <img id="upload" alt="" src="/upload/${tutor.tutorImg}">
                    </td>
                    <td>${tutor.tutorTeachingSubject}</td>
                    <td>${tutor.tutorTeachingTime}</td>
                    <td>${tutor.tutorLink}</td>
                    <td>${tutor.tutorTelephone}</td>


                    <td>
                        <a href="#" type="button" style='color: #3fdee3;background-color: #fa9442'>Detail</a>
                        &nbsp;|&nbsp;
                        <a onclick="alertTips()" href="${pageContext.request.contextPath}/tutor/toInsertApp" type="button" style='color: #22142a;background-color: #42facf'>Reserve</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</div>
<script>
    function alertTips() {
        var x = confirm("Are you sure? We will jump to payment");
        if (x)
            return true;
        else
            return false;
    }
</script>

</body>
</html>
