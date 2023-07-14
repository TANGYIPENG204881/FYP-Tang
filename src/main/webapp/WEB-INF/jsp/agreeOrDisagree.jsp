<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/5/10
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
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
    <title>Title</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tutorDetail.css">
</head>
<body>

<div class="container emp-profile">

<%--    <form action="${pageContext.request.contextPath}/applicant/addToTutor"  enctype="multipart/form-data" --%>
<%--          method="post" onSubmit="if(!confirm('Is the applicant confirmed to be a tutor?')){return false;}">--%>

        <div class="row">
            <div class="col-md-4">
                <div class="profile-img">
                    <img id="upload" alt="" src="/upload/${QApplicant.applicantImg}"/>
                </div>
            </div>
            <div class="col-md-6">
                <div class="profile-head">
                    <h5>
                        Name:&nbsp;${QApplicant.applicantName}
                    </h5>
                    <h6>
                        Tutor Applicant
                    </h6>
                    <p class="proile-rating">GPA : <span>${QApplicant.applicantGPA}</span></p>
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">About</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="profile-work">
                    <p style="font-size: large">Description</p>
                    <p>${QApplicant.applicantDescription}</p>

                </div>
            </div>
            <div class="col-md-8">
                <div class="tab-content profile-tab" id="myTabContent">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Applicant Id</label>
                        </div>
                        <div class="col-md-6">
                            <p>${QApplicant.applicantId}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Name</label>
                        </div>
                        <div class="col-md-6">
                            <p>${QApplicant.applicantName}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>University</label>
                        </div>
                        <div class="col-md-6">
                            <p>${QApplicant.applicantUniversity}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Phone</label>
                        </div>
                        <div class="col-md-6">
                            <p>${QApplicant.applicantTelephone}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Teaching Subject</label>
                        </div>
                        <div class="col-md-6">
                            <p>${QApplicant.applicantTeachingSubject}</p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <label>Teaching Time</label>
                        </div>
                        <div class="col-md-6">
                            <p>${QApplicant.applicantTeachingTime}</p>
                        </div>
                    </div>
                </div>
            </div>
<%--            <a class="btn btn-primary" style="display: block; text-align: center;--%>
<%--            font-size: xx-large;background-color: #3cd949;border-radius: 5px" --%>
<%--               href="${pageContext.request.contextPath}/applicant/addToTutor">Confirm</a>--%>

            <div class="form-group" style="margin-top: 20px">
                <a onclick="alertTips()" class="btn btn-primary" style="background-color: #54ef7e;margin-left: 460px;
                display: block;width:180px; text-align: center;font-size: large;"
                   href="${pageContext.request.contextPath}/applicant/addToTutor" >Confirm</a>
        </div>
        <%--        </div>--%>
<%--    </form>--%>
</div>

    <script>
        function alertTips() {
            alert("The applicant has successfully become a tutor")
        }
    </script>

</body>
</html>

