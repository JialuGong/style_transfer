<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!--
version:1.1
description: it's just a test html for webstorm .and if you want to use this html,
compared with the origin one,I add a function for onclick submit button\
doing:you need to add basePath(change the url of css and js )
-->




<!DOCTYPE html>
<!--[if lt IE 7]-->      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]-->         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]-->         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>StyleManager &mdash; A Professional photo transfer</title>
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
<link rel="stylesheet" href="<%=basePath%>css/signin.css">


<script src="<%=basePath%>public/js/vue.min.js"></script>

<!-- Modernizr JS -->
<script src="<%=basePath%>public/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]-->
<script src="<%=basePath%>public/js/respond.min.js"></script>
<![endif]-->

<style type="text/css">
    h1.p {
        position: relative;
        top: 50%;
        margin: 0 auto;

    }
    e.s2{
        font-family:"Microsoft YaHei UI",cursive;
    }
    e.s3{
        font-size:15px;
        font-family:"Microsoft YaHei UI",cursive;
    }
    .text1{width:100px; height:20px}
</style>
</head>
<body>
<base href="<%=basePath%>" />
<script src="<%=basePath%>publilc/js/login.js"></script>
<header role="banner" id="fh5co-header">
    <div class="container">
        <div class="row">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="navbar-header">
                    <!-- Mobile Toggle Menu Button -->
                    <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
                    <a class="navbar-brand" href="<%=basePath%>index.jsp">StyleManager.</a>
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
                                location.href="<%=basePath%>login.jsp"
                            }
                            function edit3(){
                                location.href="<%=basePath%>index.jsp"
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
                <div class="col-md-12 section-heading text-center">
                    <h1 class="p">
                        <div class="fh5co-portfolio animate-box">
                            <form class="form-signin">
                                <h1 class="animate-box">STYLE MANAGER</h1>
                                <label for="inputAccount" class="sr-only">Account</label>
                                <input type="account" id="inputAccount" class="form-control"  placeholder="用户名" required autofocus>
                                <label for="inputPassword" class="sr-only">Password</label>
                                <input type="password" id="inputPassword" class="form-control" placeholder="密码" required>
                                <div class="checkbox mb-3">
                                    <div class="row">
                                        <!--  div class="col-md-6 section-title text-center" style="font-size:x-large">
                                            <label>
                                                <input type="checkbox" style="margin-top: 10px" value="remember-me"> <e class="s3">记住密码</e>
                                            </label>
                                        </div-->
                                        <div class="col-md-6 section-title text-center" style="font-size: small;margin-top: 9px">
                                                <label>
                                                    <a type="checkbox" href="<%=basePath %>register.jsp"><u><e class="s2">注册</e></u></a>
                                                </label>
                                                <label>
                                                    <a type="checkbox" href="<%=basePath%>fix.html"><u><e class="s2">忘记密码</e></u></a>
                                                </label>
                                        </div>

                                    </div>
                                </div>
                                <button class="btn btn-md btn-primary"  onclick="load()" type="submit"><e class="s2">登录</e></button>
                                
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
<script src="<%=basePath%>js/main.js"></script>


</body>
</html>