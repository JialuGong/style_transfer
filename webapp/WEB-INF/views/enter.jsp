<!-- 
version:1.0
name:enter.jsp
to_use:change some url

 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>StyleManager &mdash; A Professional photo transfer</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Professional photo transfer" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
    <meta name="author" content="Group12.co" />

    <!-- Animate.css -->
    <link rel="stylesheet" href="<%=basePath %>public/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<%=basePath %>public/css/icomoon.css">
    <!-- Simple Line Icons -->
    <link rel="stylesheet" href="<%=basePath %>public/css/simple-line-icons.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<%=basePath %>public/css/bootstrap.css">
    <!-- Style -->
    <link rel="stylesheet" href="<%=basePath%>public/css/style.css">


    <!-- Modernizr JS -->
    <script src="<%=basePath%>public/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]-->
    <script src="<%=basePath%>public/js/respond.min.js"></script>
    <![endif]-->
    <script>
        function $(Nid){
            return document.getElementById(Nid);
        }
    </script>
</head>
<body>
<base href="<%=basePath%>" />
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
                        <li class="active"><a href="#" data-nav-section="home"><span>主页</span></a></li>
                        <li><a href="#" data-nav-section="services"><span>功能介绍</span></a></li>
                        <li><a href="#" data-nav-section="explore"><span>作品集</span></a></li>
						
                        <li><a onclick="edit()" ><span>登录</span></a></li>
						<script>
						function edit() 
						{
			                location.href="login.html"
						}
						</script>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>

<section id="fh5co-home" data-section="home" style="background-image: url(images/dog.jpg);"data-stellar-background-ratio="0.5">
    <div class="gradient"></div>
    <div class="container">
        <div class="text-wrap">
            <div class="text-inner">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center">
                        <h1 class="animate-box"><span class="big"><br> <br>Style Manager.</span> <br><span>let go of</span> <br> <span class="medium">Certainties.</span></h1>
                        <h2 class="animate-box">Crafted with love by Group12.co</h2>
                        <div class="call-to-action">
                            <a onclick="edit()"  class="demo animate-box"><i class="icon-power"></i> 登录/注册</a>
                            <a href="#fh5co-explore" data-nav-section="explore" class="download animate-box"><i class="icon-download"></i> <span>下载</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section id="fh5co-services" data-section="services">
    <div class="fh5co-services">
        <div class="container">
            <div class="row">
                <div class="col-md-4 text-center">
                    <div class="box-services">

                    </div>

                    <div class="box-services">
                        <div class="icon animate-box">
                            <span><i class="icon-energy"></i></i></span>
                        </div>
                        <div class="fh5co-post animate-box">
                            <h3>Light and Fast</h3>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="box-services">

                    </div>
                    <div class="box-services">
                        <div class="icon animate-box">
                            <span><i class="icon-trophy"></i></span>
                        </div>
                        <div class="fh5co-post animate-box">
                            <h3>Award-winning Landing Page</h3>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        </div>
                    </div>


                </div>
                <div class="col-md-4 text-center">
                    <div class="box-services">

                    </div>
                    <div class="box-services">
                        <div class="icon animate-box">
                            <span><i class="icon-people"></i></span>
                        </div>
                        <div class="fh5co-post animate-box">
                            <h3>Satisfied &amp; Happy Clients</h3>
                            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</section>

<section id="fh5co-explore" data-section="explore">
    <div class="container">
        <div class="row">
            <div class="col-md-12 section-heading text-center">
                <h2 class="animate-box">作品集</h2>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 subtext animate-box">
                        <h3>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="fh5co-project">
        <div class="container">
            <div class="row">
                <script>
                    function heart() {
                        
                    }
                    function download2() {
                        let $form = $('<form method="GET"></form>');
                        $form.attr('action', '<%=basePath%>public/images/dog.jpg');
                        $form.appendTo($('body'));
                        $form.submit();
                    }
                </script>
                <div class="col-md-4">
                    <div class="fh5co-portfolio animate-box">
                        <a href="#">
                            <div class="portfolio-entry" style="background-image: <%=basePath %>public/images/portfolio-1.jpg;">
                                <div class="desc">
                                    <p>Solid Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                            <div class="portfolio-text text-center">
                                <h3>Solid</h3>
                                <ul class="stuff">
                                    <li><i class="icon-heart2" onclick="heart()"></i><script>document.write("200"); </script></li>
                                    <li><i class="icon-download" onclick="download2()"></i></li>
                                </ul>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4">
                <div class="fh5co-portfolio animate-box">
                    <a href="#">
                        <div class="portfolio-entry" style="background-image: <%=basePath%>public/images/portfolio-2.jpg;">
                            <div class="desc">
                                <p>Solid Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            </div>
                        </div>
                        <div class="portfolio-text text-center">
                            <h3>Air</h3>
                            <ul class="stuff">
                                <li><i class="icon-heart2" onclick="heart()"></i><script>document.write("200"); </script></li>
                                <li><i class="icon-download" onclick="download2()"></i></li>
                            </ul>
                        </div>
                    </a>
                </div>
                </div>

                <div class="col-md-4">
                    <div class="fh5co-portfolio animate-box">
                        <a href="#">
                            <div class="portfolio-entry" style="background-image: <%=basePath%>public/images/portfolio-3.jpg;">
                                <div class="desc">
                                    <p>Solid Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                            <div class="portfolio-text text-center">
                                <h3>Black</h3>
                                <ul class="stuff">
                                    <li><i class="icon-heart2" onclick="heart()"></i><script>document.write("200"); </script></li>
                                    <li><i class="icon-download" onclick="download2()"></i></li>
                                </ul>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="fh5co-portfolio animate-box">
                        <a href="#">
                            <div class="portfolio-entry" style="background-image:<%=basePath %>public/images/portfolio-4.jpg;">
                                <div class="desc">
                                    <p>Solid Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                            <div class="portfolio-text text-center">
                                <h3>Soon</h3>
                                <ul class="stuff">
                                    <li><i class="icon-heart2" onclick="heart()"></i><script>document.write("200"); </script></li>
                                    <li><i class="icon-download" onclick="download2()"></i></li>
                                </ul>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="fh5co-portfolio animate-box">
                        <a href="#">
                            <div class="portfolio-entry" style="background-image: <%=basePath%>public/images/portfolio-5.jpg);">
                                <div class="desc">
                                    <p>Solid Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                            <div class="portfolio-text text-center">
                                <h3>Homestate</h3>
                                <ul class="stuff">
                                    <li><i class="icon-heart2" onclick="heart()"></i><script>document.write("200"); </script></li>
                                    <li><i class="icon-download" onclick="download2()"></i></li>

                                </ul>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="fh5co-portfolio animate-box">
                        <a href="#">
                            <div class="portfolio-entry" style="background-image: url(images/portfolio-6.jpg);">
                                <div class="desc">
                                    <p>Solid Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                            </div>
                            <div class="portfolio-text text-center">
                                <h3>Words</h3>
                                <ul class="stuff">
                                    <li><i class="icon-heart2" onclick="heart()"></i><script>document.write("200"); </script></li>
                                    <li><i class="icon-download" onclick="download2()"></i></li>
                                </ul>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
    <script src="<%basePath%>public/js/main.js"></script>

 </body>
</html>