<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/29
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>clientPersonalUpdate</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<h2>UpdatePersonal</h2>
<form action="${pageContext.request.contextPath}/client/updateClientPersonal" method="post">
    <input type="hidden" name="clientID" value="${WClient.clientID}"/>

    <label>Name</label><input type="clientName" name="clientName" placeholder="Name" value="${WClient.clientName}" required>
    <label>Age</label><input type="text" name="age" placeholder="age" value="${WClient.age}"required>
    <label>password</label><input type="text" name="password" placeholder="password" value="${WClient.password}" required>
    <label>telephone</label><input type="teleNum" name="teleNum" placeholder="teleNum" value="${WClient.teleNum}" required>
    <label>Email</label><input type="email" name="email" placeholder="email" value="${WClient.email}" required>
    <button onclick="alertTips()" type="submit"><i class="fa fa-user-plus"></i>Update</button>
</form>
</div>
<script>
    function alertTips(){
        alert("Save Successfully!!!,Please Check it in Personal Page");
    }
</script>

</body>
</html>
