<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if lt IE 7]-->      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]-->         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]-->         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sty"/home/gongjialu/Downloads/jiemian/stylemanager1.2/index/js/register.js"leManager &mdash; A Professional photo transfer</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Professional photo transfer" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="Group12.co" />
	<base href="<%=basePath%>" />

    <!-- Animate.css -->
    <link rel="stylesheet" href="<%=basePath%>public/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<%=basePath%>public/css/icomoon.css">
    <!-- Simple Line Icons -->
    <link rel="stylesheet" href="<%=basePath%>public/css/simple-line-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<%=basePath%>public/css/bootstrap.css">
    <!-- Style -->
    <link rel="stylesheet" href="<%=basePath%>public/css/style.css">
    <link rel="stylesheet" href="<%=basePath%>public/css/signin.css">
    <link rel="stylesheet" href="<%=basePath%>public/css/bootstrap.css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <script src="<%=basePath%>public/../static/js/vue.min.js"></script>
    <!-- Modernizr JS -->
    <script src="<%=basePath%>public/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]-->
    <script src="<%=basePath%>public/js/respond.min.js"></script>
    <!--[endif]-->
    <style type="<%=basePath%>public/text/css">
        h1.p{
            position: relative;
            top:50%;
            margin: 0 auto;
        }
    e.s1{
        font-size:30px;
        font-family:"Microsoft YaHei UI",cursive;
    }
    e.s2{
        font-family:"Microsoft YaHei UI",cursive;
    }
    e.s3{
        font-size:15px;
        font-family:"Microsoft YaHei UI",cursive;
    }
</style>
</head>
<body>
<script src="<%=basePath%>public/js/register.js"></script>
<header role="banner" id="fh5co-header">
    <div class="container">
        <div class="row">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="navbar-header">
                    <!-- Mobile Toggle Menu Button -->
                    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
                    <a class="navbar-brand" href="index.html">StyleManager.</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a onclick="edit3()"><span>主页</span></a></li>
                        <li><a href="#" data-nav-section="Services"><span>功能介绍</span></a></li>
                        <li><a href="#" data-nav-section="Products"><span>作品集</span></a></li>
                        <li><a onclick="edit()" ><span>登录</span></a></li>
                        <script>
                            function edit()
                            {
                                location.href="<%=basePath%>public/login.html"
                            }
                            function edit3(){
                                location.href="<%=basePath%>public/index.html"
                            }
                        </script>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>


<section id="fh5co-pricing" data-section="Login">
    <section class="pricing-section bg-3">
        <!--  总包含  -->
        <div class="container">
            <!--  一横栏  -->
            <div class="row">
                <div class="col-md-12 section-title text-center">
                    <h1 class="p">
                        <div class="fh5co-portfolio animate-box">
                            <form class="form-signin">
                                <h1 class="animate-box"><e class="s1">用户注册</e></h1>
                                <div class="checkbox mb-3">
                                     <div class="row">
                                        <div class="col-md-4 section-title text-left" style="margin-top: 14px;margin-left: 15px">
                                            <p class="animate-box"><e class="s2">用户名：</e></p>
                                        </div>
                                        <div class="col-md-8 section-title text-left" style="margin-left: -30px">
                                            <label for="inputAccount" class="sr-only">Account</label>
                                            <input type="account" id="inputAccount" class="form-control input-sm" placeholder="用户名" required autofocus>
                                        </div>
                                    </div>
                                    <h6 id="reminder" style="color: red">由下划线 数字和字母组成,且必包含下字母</h6>
                                    <div class="row">
                                        <div class="col-md-4 section-title text-left" style="margin-top: 14px;margin-left: 15px">
                                            <p class="animate-box"><e class="s2">性别：</e></p>
                                        </div>
                                        <div class="col-md-8 section-title text-left" style="margin-left: -30px;margin-top: -4px">

                                            <div class="row">
                                                <form action="" method="get">
                                                    <label><input name="Fruit" type="radio" value="" /><e class="s3">男</e> </label>
                                                    <label><input name="Fruit" type="radio" value="" /><e class="s3">女</e> </label>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!--  div class="row">
                                        <div class="col-md-4 section-title text-left" style="margin-top: 14px;margin-left: 15px">

                                            <p class="animate-box"><e class="s2">年龄：</e></p>
                                        </div>
                                        <div class="col-md-8 section-title text-left" style="margin-left: -30px">
                                            <label for="inputold" class="sr-only">Password</label>
                                            <input type="number" id="inputold" class="form-control" placeholder="年龄" required>
                                        </div>
                                    </div-->
                                    <div class="row">
                                        <div class="col-md-4 section-title text-left" style="margin-top: 14px;margin-left: 15px">
                                            <p class="animate-box"><e class="s2">密码：</e></p>
                                        </div>
                                        <div class="col-md-8 section-title text-left" style="margin-left: -30px">
                                            <label for="inputPassword" class="sr-only">Password</label>
                                            <input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4 section-title text-left" style="margin-top: 14px;margin-left: 15px">
                                            <p class="animate-box"><e class="s2">确认密码：</e></p>
                                        </div>
                                        <div class="col-md-8 section-title text-left" style="margin-left: -30px">
                                            <label for="inputCheckPassword" class="sr-only">Password</label>
                                            <input type="password" id="inputCheckPassword" class="form-control" placeholder="确认密码" required>
                                        </div>
                                    </div>
                                    <button class="btn btn-md btn-primary btn-block" onclick="register()" type="submit"><e class="s2">注册</e></button>
                                </div>

                                <!-- <p class="mt-5 mb-3 text-muted">&copy; 2019</p> -->
                            </form>
                        </div>
                    </h1>
                </div>
            </div>
        </div>
    </section>
</section>

<!-- jQuery -->
<script src="<%=basePath%>public/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="<%=basePath%>public/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="<%=basePath%>public/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<%=basePath%>public/js/jquery.waypoints.min.js"></script>
<!-- Stellar Parallax -->
<script src="<%=basePath%>public/js/jquery.stellar.min.js"></script>
<!-- Counters -->
<script src="<%=basePath%>public/js/jquery.countTo.js"></script>
<!-- Main JS (Do not remove) -->
<script src="<%=basePath%>public/js/main.js"></script>

</body>
</html>