<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width"/>
<title>Studio Francesca - Premium Theme by WowThemes.net</title>
<!-- CSS Files-->
<link rel="stylesheet" href="stylesheets/style.css">

<link rel="stylesheet" href="stylesheets/skins/blue.css">
<!-- skin color -->
<link rel="stylesheet" href="stylesheets/responsive.css">
<!-- IE Fix for HTML5 Tags -->
<!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<body>
<!-- HIDDEN PANEL 
================================================== -->
<div id="panel">
	<div class="row">
		<div class="twelve columns">
			<img src="http://www.wowthemes.net/demo/studiofrancesca/images/info.png" class="pics" alt="info">
			<div class="infotext">
				 Thank you for visiting my theme! Replace this with your message to visitors.
			</div>
		</div>
	</div>
</div>
<p class="slide">
	<a href="#" class="btn-slide"></a>
</p>
<!-- HEADER
================================================== -->
<div class="row">
	<div class="headerlogo four columns">
		<div class="logo">
			<a href="index.html">
			<h4>여행돌이</h4>
			</a>
		</div>
	</div>
	<div class="headermenu eight columns noleftmarg">
		<nav id="nav-wrap">
		<ul id="main-menu" class="nav-bar sf-menu">
			<li class="current">
			<a href="index.html">Home</a>
			<ul>
				<li><a href="index2.html">Without slider</a></li>
			</ul>
			</li>
			<li>
			<a href="#">Portofolio</a>
			<ul>
				<li><a href="portofolio2.html">2 Columns</a></li>
				<li><a href="portofolio3.html">3 Columns</a></li>
				<li><a href="portofolio4.html">4 Columns</a></li>
				<li><a href="portofoliodetail.html">Project Details</a></li>
			</ul>
			</li>
			<li>
			<a href="#">Blog</a>
			<ul>
				<li><a href="blogpage1.html">Blog page style 1</a></li>
				<li><a href="blogpage2.html">Blog page style 2</a></li>
				<li><a href="blogpage3.html">Blog page style 3</a></li>
				<li><a href="blogsinglepost.html">Single post</a></li>
			</ul>
			</li>
			<li>
			<a href="#">Pages</a>
			<ul>
				<li><a href="about.html">About us</a></li>
				<li><a href="services.html">Services</a></li>
			</ul>
			</li>
			<li>
			<a href="#">Features</a>
			<ul>
				<li><a href="columns.html">Columns</a></li>
				<li><a href="elements.html">Elements</a></li>
				<li><a href="typography.html">Typography</a></li>
			</ul>
			</li>
			<li>
			<a href="contact.html">Contact</a>
			</li>
		</ul>
		</nav>
	</div>
</div>
<div class="clear">
</div>
<!-- SUBHEADER
================================================== -->
<div id="subheader">
	<div class="row">
		<div class="twelve columns">
			<p class="left">
				 OUR SERVICES
			</p>
			<p class="right">
				 Request a free quote
			</p>
		</div>
	</div>
</div>
<div class="hr">
</div>
<!-- CONTENT 
================================================== -->
<div class="row">
    
    <!-- SIDEBAR-->
	<div class="four columns">
	    <!-- Free Quote Form-->
		<h5>회원가입</h5>
		<div class="done">
				<div class="alert-box success">
				 Message has been sent! <a href="" class="close">x</a>
				</div>
		</div>
		<div class="form">
			<form method="post" action="/signupProc" id="contactform" accept-charset="UTF-8">
				<input type="text" id="id" name="id" class="smoothborder" placeholder="아이디"/>
				<input type="text" id="password" name="password" class="smoothborder" placeholder="비밀번호"/>
				<input type="text" id="name" name="name" class="smoothborder" placeholder="이름"/>
				<input type="email" id="email" name="email" class="smoothborder" placeholder="이메일"/>
				<input type="button" id="checkemail" onclick="checkEmail()" class="readmore" value="이메일 확인"/>
				<input type="text" id="address" name="address" class="smoothborder" placeholder="주소"/>
				<select id="options" name="gender" class="smoothborder">
					<option value="M">남</option>
					<option value="F">여</option>
				</select><br>
				<select id="options" name="accountType" class="smoothborder">
					<option value="2">사업자</option>
					<option value="3">일반회원</option>
				</select><br>
				<input type="date" name="birthday" class="smoothborder" placeholder="생년월일"/>
				<input type="button" id="confirmbtn" class="readmore" onclick="confirm()" value="가입하기">
				<input type="button" id="signup" class="readmore" value="처음으로" onclick="location.href='index'">
			</form>
		</div>
		<br/>
		<!-- Accordion-->
		<ul class="accordion">
			<li class="active">
			<div class="title">
				<b>Don't miss our treats</b>
			</div>
			<div class="content accordiontrick">
				<p>
					 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
				</p>
			</div>
			</li>
			<li class="">
			<div class="title">
				<b>Holiday Services</b>
			</div>
			<div class="content accordiontrick">
				<p>
					 Dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
				</p>
				<p>
					 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
				</p>
			</div>
			</li>
		</ul>
	</div><!-- end sidebar-->
</div>
<div class="hr">
</div>

<!-- FOOOTER 
================================================== -->
<div id="footer">
	<footer class="row">
	<p class="back-top floatright">
		<a href="#top"><span></span></a>
	</p>
	<div class="four columns">
		<h1>ABOUT US</h1>
		 Our goal is to keep clients satisfied!
	</div>
	<div class="four columns">
		<h1>GET SOCIAL</h1>
		<a class="social facebook" href="#"></a>
		<a class="social twitter" href="#"></a>
		<a class="social deviantart" href="#"></a>
		<a class="social flickr" href="#"></a>
		<a class="social dribbble" href="#"></a>
	</div>
	<div class="four columns">
		<h1 class="newsmargin">NEWSLETTER</h1>
		<div class="row collapse newsletter floatright">
			<div class="ten mobile-three columns">
				<input type="text" class="nomargin" placeholder="Enter your e-mail address...">
			</div>
			<div class="two mobile-one columns">
				<a href="#" class="postfix button expand">GO</a>
			</div>
		</div>
	</div>
	</footer>
</div>
<div class="copyright">
	<div class="row">
		<div class="six columns">
			 &copy;<span class="small"> Copyright 2015 Your Agency Name</span>
		</div>
		<div class="six columns">
			<span class="small floatright"> Template by <a href="www.wowthemes.net">WowThemes.net</a></span>
		</div>
	</div>
</div>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/jquery.easing.1.3.js"></script>
<script src="javascripts/elasticslideshow.js"></script>
<script src="javascripts/jquery.carouFredSel-6.0.5-packed.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
<script src="javascripts/function.js"></script>
</body>
</html>