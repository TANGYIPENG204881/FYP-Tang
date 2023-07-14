<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/8
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>applicantRegister</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    body {
      background-image:url("${pageContext.request.contextPath}/images/tutorRegister.png");
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
      text-align: center;
    }
    h2 {
      color: #1d5203;
      font-size: 28px;
      margin-bottom: 30px;
    }
    input{
      border-radius: 3px;
      border: none;
      box-shadow: 0 0 5px 1px rgba(0,0,0,0.1);
      height: 25px;
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
  <h2>Apply to be a Tutor</h2>
<%--  onSubmit="if(!confirm('Confirm the information is correct and submit?')){return false;}" >--%>
  <form action="${pageContext.request.contextPath}/applicant/applicantRegister" enctype="multipart/form-data" method="post" onSubmit="if(!confirm('Confirm the information is correct and submit?')){return false;}" >
    <input type="text" name="applicantName" placeholder="Name" required>
    <input type="text" name="applicantAge" placeholder="Age" required>
    <input type="text" name="applicantPassword" placeholder="password (Please remember this tightly)" required>
    <input type="text" name="applicantTelephone" placeholder="telephoneNumber" required>
    <input type="text" name="applicantUniversity" placeholder="University" required>
    <input type="text" name="applicantGPA" placeholder="GPA" required>
    <label style="font-size: 10px">Available Subject:1.Java;2.Basic Python;3.Basic English;4.Basic Malay;5.Basic Chinese</label>
    <input type="text" name="applicantTeachingSubject" placeholder="TeachingSubject" required>
    <input type="text" name="applicantLink" placeholder="Your Meeting Link for Client" required>
    <input type="text" name="applicantTeachingTime" placeholder="YourTeachingTime (eg:Fri 2:30-3:30pm)" required>
    <label style="font-size: small;color: #f86f04">Upload a photo of yourself</label>
    <input type="file" name="file">
    <input type="text" name="applicantDescription" placeholder="Description" required>

    <button type="submit"><i class="fa fa-user-plus"></i>Apply</button>
  </form>
</div>
</body>
</html>
