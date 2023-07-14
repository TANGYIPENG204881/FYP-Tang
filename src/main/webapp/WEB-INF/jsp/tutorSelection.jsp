<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/4/21
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>clientDashboard</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/clientDashb.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tutorSelectionSearchingBar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/excellentTutor.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/selectionMiddleNavigation.css">

</head>
<body>

<div class="menu-bar">
    <h1 class="logo">OTSBCS<span>Welcome.</span></h1>
    <ul>
        <li><a href="${pageContext.request.contextPath}/client/toClientDashboard">HOME</a></li>
        <li><a href="${pageContext.request.contextPath}/client/clientCourse">My Courses</a></li>
        <li><a href="${pageContext.request.contextPath}/course/clientViewAllCourse">Subjects <i class="fa fa-caret-down"></i></a>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="#">Basic Math</a></li>
                    <li><a href="#">Basic Java</a></li>
                    <li><a href="#">Basic Languages <i class="fa fa-caret-right"></i></a>
                        <div class="dropdown-menu-1">
                            <ul>
                                <li><a href="#">Basic Malay</a></li>
                                <li><a href="#">Basic Chinese</a></li>
                                <li><a href="#">Basic French</a></li>
                                <li><a href="#">Basic English</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="#">Basic Phython</a></li>
                </ul>
            </div>
        </li>
        <li><a href="${pageContext.request.contextPath}/client/toTutorSelection">Find Tutor</a></li>
        <li><a href="${pageContext.request.contextPath}/client/toClientPersonal">Personal<i class="fa fa-caret-down"></i></a>
            <div class="dropdown-menu">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/client/toClientPersonal">Edit</a></li>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Logout</a></li>
                </ul>
            </div>
        </li>
        <li>
            <span>Welcome</span>
            <img src="${pageContext.request.contextPath}/images/clientTouxiang.png" >
        </li>
    </ul>
</div>



<form class="row domain-search bg-pblue">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h3 class="form-title">Find Your <strong>Dream Tutor</strong></h3>
                <p>Search for your dream tutor now</p>
            </div>
            <div class="col-md-9">
                <div class="input-group">
                    <input type="search" class="form-control" placeholder="Search Tutor Name">
                    <span class="input-group-addon" >
                        <input type="submit" value="Search" class="btn btn-primary"></span>
                </div>
            </div>

            <h4>No idea?<a class="btn-primary" href="#">See our excellent tutor first</a></h4>

        </div>
    </div>
</form>
<div class="navigation">
<ul>
    <li><a href="${pageContext.request.contextPath}/client/toTutorSelection">ExcellentTutor</a></li>
    <li><a href="${pageContext.request.contextPath}/tutor/viewAllTutor1">AllTutor</a></li>
    <li><a href="${pageContext.request.contextPath}/course/clientViewAllCourse">CoursePrice</a></li>
</ul>
</div>

<p class="ExcllentT" style="margin-top: 10px;color: #6d7a83;font-family: Arial, sans-serif;text-align: center">We have provided you with some excellent tutors to choose from</p>

<%--<a class="jiage" href="${pageContext.request.contextPath}/tutor/viewAllTutor1" style="text-align: center">加了价格</a>--%>
<!-- 优秀老师 -->

<div class="container" style="margin-top: 20px">
    <div class="col-xs-12 col-md-6 bootstrap snippets bootdeys">
        <!-- product -->
        <div class="product-content product-wrap clearfix">
            <div class="row">
                <div class="col-md-5 col-sm-12 col-xs-12">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/images/tutorJava.jpg" style="width: 194px; height: 228px" alt="194x228" class="img-responsive">
                        <span class="tag2 hot">HOT</span>
                    </div>
                </div>
                <div class="col-md-7 col-sm-12 col-xs-12">
                    <div class="product-deatil">
                        <h5 class="name">
                            <a href="#">Java programming<span>Tutor:Sally</span></a>
                        </h5>
                        <p class="price-container">
                            <span>RM 19/H</span>
                        </p>
                        <span class="tag1"></span>
                    </div>
                    <div class="description">
                        <p>Hello! I am studying computer major in UPM. I have a nice personality. I like to communicate with my peers. Let me improve your Java level quickly. </p>
                    </div>
                    <div class="product-info smart-form">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <a href="javascript:void(0);" class="btn btn-success">Reserve</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end product -->
    </div>
    <div class="col-xs-12 col-md-6 bootstrap snippets bootdeys">
        <!-- product -->
        <div class="product-content product-wrap clearfix">
            <div class="row">
                <div class="col-md-5 col-sm-12 col-xs-12">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/images/tutorPython.jpg" style="width: 194px; height: 228px" alt="194x228" class="img-responsive">
                        <span class="tag2 hot">
							HOT
						</span>
                    </div>
                </div>
                <div class="col-md-7 col-sm-12 col-xs-12">
                    <div class="product-deatil">
                        <h5 class="name">
                            <a href="#">
                                Basic Python<span>Tutor: Lisa</span>
                            </a>
                        </h5>
                        <p class="price-container">
                            <span>RM 20/H</span>
                        </p>
                        <span class="tag1"></span>
                    </div>
                    <div class="description">
                        <p>bonjour! I am studying computer science at UPM, I believe I can improve your python level quickly. Don't hesitate to choose me as your tutor. </p>
                    </div>
                    <div class="product-info smart-form">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <a href="javascript:void(0);" class="btn btn-success">Reserve</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end product -->
    </div>
    <div class="col-xs-12 col-md-6 bootstrap snippets bootdeys">
        <!-- product -->
        <div class="product-content product-wrap clearfix">
            <div class="row">
                <div class="col-md-5 col-sm-12 col-xs-12">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/images/tutorMalay.jpg" style="width: 194px; height: 228px" alt="194x228" class="img-responsive">
                        <span class="tag2 hot">
							HOT
						</span>
                    </div>
                </div>
                <div class="col-md-7 col-sm-12 col-xs-12">
                    <div class="product-deatil">
                        <h5 class="name">
                            <a href="#">
                                Basic Malay Language<span>Tutor:Marlly</span>
                            </a>
                        </h5>
                        <p class="price-container">
                            <span>RM 18/H</span>
                        </p>
                        <span class="tag1"></span>
                    </div>
                    <div class="description">
                        <p>bonjour! I am a student of UPM Linguistics, proficient in English and Malay, can communicate with you without barriers </p>
                    </div>
                    <div class="product-info smart-form">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <a href="javascript:void(0);" class="btn btn-success">Reserve</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end product -->
    </div>
    <div class="col-xs-12 col-md-6 bootstrap snippets bootdeys">
        <!-- product -->
        <div class="product-content product-wrap clearfix">
            <div class="row">
                <div class="col-md-5 col-sm-12 col-xs-12">
                    <div class="product-image">
                        <img src="${pageContext.request.contextPath}/images/tutorEnglish.jpg" style="width: 194px; height: 228px" alt="194x228" class="img-responsive">
                        <span class="tag2 hot">
							HOT
						</span>
                    </div>
                </div>
                <div class="col-md-7 col-sm-12 col-xs-12">
                    <div class="product-deatil">
                        <h5 class="name">
                            <a href="#">
                                Basic Chinese Language<span>Tutor:Lili</span>
                            </a>
                        </h5>
                        <p class="price-container">
                            <span>RM 20/H</span>
                        </p>
                        <span class="tag1"></span>
                    </div>
                    <div class="description">
                        <p>你好~ I am Chinese and can teach you a lot of interesting Chinese！trust me,my mandarin is very standard </p>
                    </div>
                    <div class="product-info smart-form">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <a href="javascript:void(0);" class="btn btn-success">Reserve</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end product -->
    </div>
</div>






</body>
</html>
