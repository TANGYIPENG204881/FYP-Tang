<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/15
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>tutorPersonal</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <%--    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>--%>
    <%--    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tutorDetail.css">
</head>
<body>

<div class="container emp-profile">
    <form method="post">
        <div class="row">
            <div class="col-md-4">
                <div class="profile-img">
                    <img id="upload" alt="" src="/upload/${PTutor.tutorImg}"/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="profile-head">
                    <h5>
                        Name: ${PTutor.tutorName}
                    </h5>
                    <h6>
                        OTSBCS Tutor
                    </h6>
                    <p class="proile-rating">GPA : <span>${PTutor.tutorGPA}</span></p>
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2">
                <a href="${pageContext.request.contextPath}/tutor/toTutorDashboard"
                   type="submit" class="btn btn-primary" style="background-color: #f67d31" >Back to Dashboard</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="profile-work">
                    <p style="color: #2b6dc4">Description</p>
                    <p>${PTutor.tutorDescription}</p>

                </div>
            </div>
            <div class="col-md-8">
                <div class="tab-content profile-tab" id="myTabContent">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Tutor Id</label>
                        </div>
                        <div class="col-md-6">
                            <p>${PTutor.tutorId}</p>
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Password</label>
                            </div>
                            <div class="col-md-6">
                                <p>${PTutor.tutorPassword} &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/tutor/toTutorChangePassword" style="background-color: #2fc5d3" class="btn btn-primary">Change Password</a>
                            </div></p>
<%--                                <a href="${pageContext.request.contextPath}/tutor/toTutorChangePassword" style="background-color: #229494" class="btn btn-primary">Change Password</a>--%>
<%--                            </div>--%>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Age</label>
                            </div>
                            <div class="col-md-6">
                                <p>${PTutor.tutorAge}</p>
                            </div>
                        </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>University</label>
                        </div>
                        <div class="col-md-6">
                            <p>${PTutor.tutorUniversity}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Phone</label>
                        </div>
                        <div class="col-md-6">
                            <p>${PTutor.tutorTelephone}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Teaching Subject</label>
                        </div>
                        <div class="col-md-6">
                            <p>${PTutor.tutorTeachingSubject}</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Teaching Time</label>
                        </div>
                        <div class="col-md-6">
                            <p>${PTutor.tutorTeachingTime}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--        </div>--%>
    </form>
</div>
</body>
</html>