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
<title>여행도우미</title>
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
				 방문해주셔서 감사합니다!
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
			<a href="index.html">홈</a>
			<ul>
				<li><a href="index2.html">홈페이지 정보</a></li>
			</ul>
			</li>
			<li>
			<a href="#">관광정보</a>
			<ul>
				<li><a href="portofolio2.html">관광지 찾기</a></li>
				<li><a href="portofolio3.html">행사 찾기</a></li>
				<li><a href="portofolio4.html">숙박업소 찾기</a></li>
				<li><a href="portofoliodetail.html">관광 주변 볼거리</a></li>
			</ul>
			</li>
			<li>
			<a href="#">게시판/갤러리</a>
			<ul>
				<li><a href="about.html">게시판</a></li>
				<li><a href="services.html">갤러리</a></li>
			</ul>
			</li>
			<li>
			<a href="#">추억나누기</a>
			<ul>
				<li><a href="columns.html">채팅</a></li>
			</ul>
			</li>
			<li>
			<a href="contact.html">로그인</a>
			</li>
			<li>
			<a href="contact.html">회원가입</a>
			</li>
			<li>
			<a href="contact.html">로그아웃</a>
			</li>
			<li>
			<a href="contact.html">마이페이지</a>
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
				 전국 방방곡곡
			</p>
			<p class="right">
				 여행돌이와 함께!
			</p>
		</div>
	</div>
</div>
<div class="hr">
</div>
<!-- CONTENT 
================================================== -->
<div class="row">
	<!-- CONTACT FORM -->
	<div class="twelve columns">
		<div class="wrapcontact">
			<h5>전국 방방곡곡 여행돌이</h5>
					
				<form method="post" action="contact.php" id="contactform">
				<div class="form">	   
						<div class="row">
							<div class="twelve columns">
							<jsp:include page="/WEB-INF/content/detailContent.jsp"/>	
						</div>
					</div>	
				</div>
				</form>			
		</div>
	</div>
												
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
<script src="javascripts/formvalidation.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
<script src="javascripts/jquery.tweet.js"></script>


</body>
</html>