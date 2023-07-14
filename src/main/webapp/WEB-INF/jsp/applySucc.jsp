<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/9
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>applySuccessfully</title>
</head>
<style>
    body{
        background-image: url("${pageContext.request.contextPath}/images/tutorRegisterSuc.jpg");
        background-repeat: no-repeat;
        background-size:cover;
        text-align:center;
        font-size:180%;
        margin:2em;
        font-family: Calibri, arial, sans-serif;
    }
    .to-top{
        color:white;
        padding-top:1.8em;
        display:inline-block;/* or block */
        position:relative;
        border-color:white;
        text-decoration:none;
        transition:all .3s ease-out;
    }
    .to-top:before{
        content:'▲';
        font-size:.9em;
        position:absolute;
        top:0;
        left:50%;
        margin-left:-.7em;
        border:solid .13em white;
        border-radius:10em;
        width:1.4em;
        height:1.4em;
        line-height:1.3em;
        border-color:inherit;
        transition:transform .5s ease-in;
    }
    .to-top:hover{
        color:pink;
        border-color:pink;
    }
    .to-top:hover:before{
        transform: rotate(360deg);
    }
    .container {
        /*background-color: #bebdbd;*/
        border-radius: 5px;
        box-shadow: 0 0 10px 1px rgba(0,0,0,0.2);
        margin: auto;
        margin-top: 50px;
        padding: 20px;
        max-width: 500px;
        text-align: center;
        background-color: rgba(255, 255, 255, 0.6);
        /*opacity: 0.8;*/
    }
    .container p{
        font-size: 20px;
    }
</style>
<body>

<a href="${pageContext.request.contextPath}/index.jsp" class="to-top">Back to MainPage</a>

<div class="container">
    <h3 style="color: #02700d;font-size: 35px;font-family: 'Cambria Math'">Congrats! Acount created</h3><br>
    <p>Thank you for your application. Please memorize your password tightly.
    In addition, your application has been submitted. Wait for <p style="color: #f36b36">1~3 working days</p>
    <p>to wait for the administrator to review. <p style="color: #4936f3">After the review is passed, a text message will remind you.</p>
        <p>Then, you can successfully log in and start your tutoring journey!</p>
</div>
</body>
</html>

