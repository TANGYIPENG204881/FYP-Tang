<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/3
  Time: 0:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>tutorDetail</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tutorDetail.css">
</head>
<body>

<div class="container emp-profile">
    <form method="post">
        <div class="row">
            <div class="col-md-4">
                <div class="profile-img">
                    <img id="upload" alt="" src="/upload/${DTutor.tutorImg}"/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="profile-head">
                    <h5>
                        ${DTutor.tutorName}
                    </h5>
                    <h6>
                        OTSBCS Tutor
                    </h6>
                    <p class="proile-rating">GPA : <span>${DTutor.tutorGPA}</span></p>
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2">
                <a style="background-color: #0e857d;height: 30px;text-decoration: none" href="${pageContext.request.contextPath}/tutor/viewAllTutor1" class="btn btn-primary">Back</a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="profile-work">
                    <p style="color: #6d90a9">Description</p>
                    <p>${DTutor.tutorDescription}</p>

                </div>
            </div>
            <div class="col-md-8">
                <div class="tab-content profile-tab" id="myTabContent">
<%--                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">--%>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Tutor Id</label>
                            </div>
                            <div class="col-md-6">
                                <p>${DTutor.tutorId}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Name</label>
                            </div>
                            <div class="col-md-6">
                                <p>${DTutor.tutorName}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>University</label>
                            </div>
                            <div class="col-md-6">
                                <p>${DTutor.tutorUniversity}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Phone</label>
                            </div>
                            <div class="col-md-6">
                                <p>${DTutor.tutorTelephone}</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Teaching Subject</label>
                            </div>
                            <div class="col-md-6">
                                <p>${DTutor.tutorTeachingSubject}</p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Teaching Time</label>
                            </div>
                            <div class="col-md-6">
                                <p>${DTutor.tutorTeachingTime}</p>
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
