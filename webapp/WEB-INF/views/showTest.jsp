<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>STYLE MANAGER &mdash; Enable to transfer the style of pictures</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Enable to transfer the style of pictures" />
    <meta name="keywords" content="Transfer" />
    <meta name="author" content="Lei Linjie, Zhu Xuan" />
    <base href="<%=basePath%>" />
    
    <!-- Facebook and Twitter integration -->
    <!--
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />
    -->

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Roboto+Mono:300,400" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="<%=basePath%>/public/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<%=basePath%>/public/css/icomoon.css">
    <!-- Simple Line Icons -->
    <link rel="stylesheet" href="<%=basePath%>/public/css/simple-line-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<%=basePath%>/public/css/bootstrap.css">
    <!-- Style -->
    <link rel="stylesheet" href="<%=basePath%>/public/css/style.css">
    <script src="<%=basePath%>/public/js/vue.min.js"></script>

    <!-- Modernizr JS -->
    <script src="<%=basePath%>/public/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]-->
    <script src="<%=basePath%>/public/js/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        h2.person {
            position: absolute;
            left: 800px;
            top: 200px
        }

        .kuang {
            border: 1px solid;
            width: 200px;
            height: 200px;
            color: #ccc;
            transition: color .25s;
            position: relative;
        }

        .kuang:hover {
            color: whitesmoke;
        }
    </style>
</head>

<body>
<base href="<%=basePath%>" />
<script src="<%=basePath%>public/js/show.js"></script>
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
                            location.href="login.html"
                        }
                        function edit3(){
                            location.href="index.html"
                        }
                    </script>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>

<section id="fh5co-home" data-section="home" style="background-image: <%=basePath%>public/images/dog.jpg;" data-stellar-background-ratio="0.5">
    <div class="gradient"></div>
    <div class="text-wrap">
        <div class="text-inner">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 section-heading text-center">
                        <label for="fileToUpload" style="font-size: 40px">Select a File to Upload</label>
                    </div>
                </div>
            </div>
            <div class="fh5co-project">
                <div class="container">
                        <script src="js/upload.js"></script>
                        <form id="form1" enctype="multipart/form-data" method="post" action="Upload.aspx">

                            <div class="row">
                                <div class="col-md-12 section-heading text-center">
                                    <label class="kuang btn btn-md"><!--上传1-->
                                        <img class="picture" id="source_img_1" src="" alt=""  height="300" width="300"/>
                                    </label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 section-heading text-center">
                                        <input class="btn btn-md btn-primary text-center" style="width: 90px" type="button" onclick="uploadFile()" value="Upload"> &nbsp;
                                        <input class="btn btn-md btn-primary text-center" style="width: 90px" type="button" onclick="getFile()" value="Get">
                                </div>
                                <div class="col-md-12 section-heading text-center"><!--还没写好接口-->
                                <a href="#" class="facebook"><i class="icon-wechat"></i></a>
                                <a href="#" class="twitter"><i class="icon-weibo"></i></a>
                                <a href="#" class="dribbble"><i class="icon-qq"></i></a>
                                <a href="#" class="github"><i class="icon-instagram"></i></a>
                                </div>
                            </div>
                            <div id="progressNumber"></div>
                        </form>
                </div>
            </div>
        </div>
        </div>
    </div>
</section>


<section>
<div id="fh5co-footer" role="contentinfo">
    <div class="container">
        <div class="row">
            <div class="col-md-4 animate-box">
                <h3 class="section-title">Style Manager.</h3>
                <p>
                    Style Manager是一款基于深度学习模型，功能强大的网页图象转换器。在Style Manager里，您可以将上传的数字图像转换为不同绘画风格的艺术作品，并保存在本地或是与您的朋友分享。</p>

            </div>

            <div class="col-md-4 animate-box">
                <h3 class="section-title">联系我们</h3>
                <ul class="contact-info">
                    <li><i class="icon-map"></i>陕西省西安市长安区东大街道西北工业大学长安校区</li>
                    <li><i class="icon-phone"></i>+ 1235 2355 98</li>
                    <li><i class="icon-envelope"></i>StyleManager@mail.nwpu.edu.cn</li>
                    <li><i class="icon-globe"></i><a href="#">www.stylemanager.com</a></li>
                </ul>
                <h3 class="section-title">更多方式</h3>
                <ul class="social-media">
                    <li><a href="#" class="facebook"><i class="icon-wechat"></i></a></li>
                    <li><a href="#" class="twitter"><i class="icon-weibo"></i></a></li>
                    <li><a href="#" class="dribbble"><i class="icon-instagram"></i></a></li>
                    <li><a href="#" class="github"><i class="icon-github-alt"></i></a></li>
                </ul>
            </div>
            <div class="col-md-4 animate-box">
                <h3 class="section-title">加入我们</h3>
                <form class="contact-form">
                    <div class="form-group">
                        <label for="name" class="sr-only">Name</label>
                        <input type="name" class="form-control" id="name" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <label for="email" class="sr-only">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label for="message" class="sr-only">Message</label>
                        <textarea class="form-control" id="message" rows="7" placeholder="Message"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit" id="btn-submit" class="btn btn-send-message btn-md" value="发送申请">
                    </div>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p class="copy-right">&copy; 2019 Style Manager. All Rights Reserved. <br>
                    Designed by Group12.co</a>
                </p>
            </div>
        </div>
    </div>
</div>
</section>
<!-- jQuery -->
<script src="<%=basePath%>js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="<%=basePath%>js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<%=basePath%>js/jquery.waypoints.min.js"></script>
<!-- Stellar Parallax -->
<script src="<%=basePath%>js/jquery.stellar.min.js"></script>
<!-- Counters -->
<script src="<%=basePath%>js/jquery.countTo.js"></script>
<!-- Main JS (Do not remove) -->
<script src="<%=basePath%>js/main.js"></script>

</body>
</html>