<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Index page</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- 引入字体图标 -->
    <link href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/indexContactUs.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/indexTutor.css">
</head>
<body>
<header>
    <nav>
        <div class="logo">
            <a href="#">OTSBCS OFFICIAL ~(@^_^@)~</a>
        </div>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Courses</a></li>
            <li><a href="#service">Service</a></li>
            <li><a href="${pageContext.request.contextPath}/applicant/toTutorLoginOrApply">Tutor</a></li>
            <li><a href="${pageContext.request.contextPath}/client/toClientLogin">Learner</a></li>
<%--            <li><a href="${pageContext.request.contextPath}/client/toClientRegister">User Registration</a></li>--%>
            <li><a href="${pageContext.request.contextPath}/admin/toAdminLogin">Admin Login</a></li>

        </ul>
    </nav>
</header>
<main>
    <section class="hero">
        <h1>Online Tutoring System By College Student</h1>
        <p>We provide more cost-effective, reliable excellent College Tutor and Services for you</p>
        <p>please contact us for more information</p>
        <button id="myBtn">Contact Us</button>
        <!-- 弹窗 -->
        <div id="myModal" class="modal">
            <!-- 弹窗内容 -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <p>Any questions we will answer for you as soon as possible<br>Please Contact OTSBCS Office Phone:1688888 <br>Or Email Us:OTSBCS@gmail.com</p>
            </div>

        </div>
    </section>
    <br>
    <section class="hero1" style="border-radius: 30px">
        <h2>Excellent Tutor Show</h2>
        <main>
            <div class="image-card" style="background-image: url('${pageContext.request.contextPath}/images/tutor0002.jpg')">
            </div>

            <div class="image-card" style="background-position: -60px;background-image: url('${pageContext.request.contextPath}/images/tutor0001.jpg')">
            </div>

            <div class="image-card" style="background-image: url('${pageContext.request.contextPath}/images/tutor3.jpg')">
            </div>

            <div class="image-card" style="background-position: -30px;background-image: url('${pageContext.request.contextPath}/images/tutor4.jpg')">
            </div>
        </main>
    </section>
<div id="service">
<h2 style="color: white;text-align: center;margin-top: 15px">Features and Services</h2>
    <section class="hero2">
    <div class="container">
        <div class="box">
            <div class="imgBx">
                <img src="${pageContext.request.contextPath}/images/indexOnline.jpg">
            </div>
            <div class="content">
                <div>
                    <h2>Online Tutoring</h2>
                    <p>The system adopts the online education mode, which is more convenient and efficient
                    </p>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="imgBx">
                <img src="${pageContext.request.contextPath}/images/indexCollege.jpg">
            </div>
            <div class="content">
                <div>
                    <h2>College Student As Tutor</h2>
                    <p>The tutors are all officially certified by the school to ensure trustworthiness and excellence.
                    </p>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="imgBx">
                <img src="${pageContext.request.contextPath}/images/indexFeedback.jpg">
            </div>
            <div class="content">
                <div>
                    <h2>Receive feedback from tutor</h2>
                    <p>Learners will receive feedback from the teacher after each class to help learner understand themselves in a timely manner.
                    </p>
                </div>
            </div>
        </div>
        <div class="box">
            <div class="imgBx">
                <img src="${pageContext.request.contextPath}/images/lowerPrice.jpg">
            </div>
            <div class="content">
                <div>
                    <h2>lower price</h2>
                    <p>We set a unified price according to the course system, the price is lower than the general market price, all in 15RM-20RM/Class
                    </p>
                </div>
            </div>
        </div>
    </div>

    </section>
</div>
</main>

<footer>
    <p>Copyright © 2023 TANG FYP Website</p>
    <p>版权归Cheese PengPeng所有</p>
</footer>

<script>
    var modal = document.getElementById('myModal');

    // 打开弹窗的按钮对象
    var btn = document.getElementById("myBtn");

    // 获取 <span> 元素，用于关闭弹窗 that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // 点击按钮打开弹窗
    btn.onclick = function() {
        modal.style.display = "block";
    }

    // 点击 <span> (x), 关闭弹窗
    span.onclick = function() {
        modal.style.display = "none";
    }

    // 在用户点击其他地方时，关闭弹窗
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</body>
</html>