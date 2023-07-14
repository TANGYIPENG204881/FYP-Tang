<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/23
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
</style>
<body>

<a href="${pageContext.request.contextPath}/tutor/toTutorLogin" class="to-top">Back to login</a>

</body>
</html>
