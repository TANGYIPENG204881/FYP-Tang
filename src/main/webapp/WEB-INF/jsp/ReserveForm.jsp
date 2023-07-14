<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/30
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ReserveForm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            background-image:url("${pageContext.request.contextPath}/images/formBG.png");
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
        h3 {
            color: #333;
            font-size: 20px;
            margin-bottom: 20px;
            background-color: #fca35c;
            border-radius: 8px;
        }
        input{
            border-radius: 5px;
            border: none;
            box-shadow: 0 0 5px 1px rgba(0,0,0,0.1);
            height: 20px;
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
        .container a{
            margin-top: 15px;
            text-align: center;
            text-decoration: none;
            color: #d97753;
        }
        
    </style>
</head>
<body>
<div class="container">
    <h3 style="text-align: center">Reserve Form</h3>
    <form action="${pageContext.request.contextPath}/client/insertApp" method="post">
        <label style="color: #d93f4b">TutorName<label style="font-size: small">&nbsp;(Check the tutor Name is correct)</label></label>
        <input type="text" name="tutorName" value="${RTutor.tutorName}" required>

        <label>Reservation Learner<label style="font-size: small">&nbsp;</label></label>
        <input type="text" name="clientName"  value="${AppClient}" required>

        <label style="color: #286c69">Subject<label style="font-size: small">&nbsp;</label></label>
        <input type="text" name="sub"  value="${RTutor.tutorTeachingSubject}" required>

        <label style="color: #2b6dc4">Time<label style="font-size: small">&nbsp;</label>(Check the time is correct and remember it!)</label>
        <input type="text" name="time"  value="${RTutor.tutorTeachingTime}" required>

        <label style="margin-top: 10px">Payment Method</label>
        <select style="width: 200px;height: 25px">
            <option>Alipay</option>
            <option>Paypal</option>
            <option>TNG</option>
        </select><br>
        <label style="font-size: small;margin-top: 20px">Scan this QR code to complete payment</label><br>
            <img style="width: 150px;height: 155px;margin-top: 10px" src="${pageContext.request.contextPath}/images/QR.png">

        <button onclick="alertTips()" type="submit"><i class="fa fa-user-plus"></i>Confirm</button>
    </form>
    <a href="${pageContext.request.contextPath}/tutor/viewAllTutor1">Back</a>
</div>
<script>
    function alertTips() {
        //     alert("Reserve Successfully! \n Thank you for your reservation, you can check it in 'My course'.");
        // }
        if (window.confirm('Reserve Successfully! \n Thank you for your reservation, you can check it in My Course')) {
            return true;
        } else {
            return false;
        }
    }

</script>
</body>
</html>
