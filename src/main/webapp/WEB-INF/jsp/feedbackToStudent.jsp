<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/19
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>feedbackToStudent</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
    <style>
        body {
            background-image:url("${pageContext.request.contextPath}/images/index2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container {
            background-color: #d4f3f3;
            border-radius: 5px;
            box-shadow: 0 0 10px 1px rgb(250, 202, 247);
            margin: auto;
            margin-top: 50px;
            padding: 10px;
            max-width: 500px;
            text-align: left;
        }
        h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 15px;
        }
        label{
            font-size: 15px;
        }
        input{
            border-radius: 3px;
            border: none;
            box-shadow: 0 0 5px 1px rgba(0,0,0,0.1);
            height: 15px;
            margin-bottom: 10px;
            padding: 5px;
            width: 99%;
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
    <h2>Feedback<i class="fa fa-smile-wink"></i></h2>
    <form action="${pageContext.request.contextPath}/tutor/writeFeedbackToLearner" method="post" onSubmit="if(!confirm('Confirm to submit?')){return false;}">
        <label>LearnerId</label>
        <input type="text" name="clientId" value="${QApp.clientID}" required>
        <label>LearnerName</label>
        <input type="text" name="clientName" value="${QApp.clientName}" required>
        <label>tutorId</label>
        <input type="text" name="tutorId"  value="${QApp.tutorID}" required>
        <label>tutorName</label>
        <input type="text" name="tutorName"  value="${QApp.tutorName}" required>
        <label>CourseName</label>
        <input type="text" name="course"  value="${QApp.courseName}" required>
        <label>Learner's performance in class(<50 words)</label>
        <input style="height: 30px" type="text" name="performance" required>
        <label>Suggestion to learner(<40 words)</label>
        <input style="height: 30px" name="suggestion" required>
        <label>Evaluation Date</label>
        <input type="date" name="feedbackDate" required>
        <button type="submit"><i class="fa fa-user-plus"></i>Submit</button>
    </form>
</div>
</body>
</html>
