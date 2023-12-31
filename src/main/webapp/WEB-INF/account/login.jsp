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
			<a href="index">
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
		<h5>로그인</h5>
		<div class="done">
				<div class="alert-box success">
				 Message has been sent! <a href="" class="close">x</a>
				</div>
		</div>
		<div class="form">
			<form method="post" action="/loginProc" id="contactform">
				<input type="text" name="id" class="smoothborder" placeholder="아이디"/>
				<input type="password" name="password" class="smoothborder" placeholder="비밀번호"/>
				<input type="submit" id="submit" class="readmore" value="로그인">
				<input type="button" id="signup" class="readmore" value="회원가입" onclick="location.href='signup'">
				<br><a onclick="forgetpwOpen()">비밀번호를 잊으셨나요?</a>
				<div id = "pw-modal" class="modal">
					<div id="pw-modal-content" class="modal-content">
						<h3>원하시는 서비스를 선택해주세요.</h3>
						<input type="button" id="idforgetbtn" name="idforgetbtn" class="readmore" value="아이디찾기"
						onclick="findId()">
						<input type="button" id="pwforgetbtn" name="pwforgetbtn" class="readmore" value="비밀번호찾기"
						onclick="findPw()"><br><br>
						<input type="button" onclick="forgetpwClose()" id="pwmodalclosebtn" name="pwmodalclosebtn" class="readmore" value="닫기">						
					</div>
				</div>
				<!-- 아이디찾기 : 이메일 입력 폼 -->
				<div id = "findid-modal" class="modal">
					<div id="findid-modal-content" class="modal-content">
						<h2>가입한 계정의 이메일을 입력해주세요</h2>
						<input type="email" id="findid-input" name="findid-input" class="smoothborder">
						<input type="button" id="findid-btn" name="findid-btn" class="readmore" value="확인"
						onclick="mailsend(document.getElementById('findid-input').value)">
						<br><br>
						<div id = "findid-hide">
							<input type="text" id="findid-check" name="findid-check" class="smoothborder">
							<input type="button" id="findid-confirm" name="findid-confirm" 
							class="readmore" value="확인" onclick="findIdProc(document.getElementById('findid-input').value)" >
							<br><br>
						</div>
						<input type="button" onclick="forgetpwClose()" id="pwmodalclosebtn" name="pwmodalclosebtn" class="readmore" value="닫기">						
					</div>
				</div><!-- 이메일 입력 폼 끝 -->
				<!-- 비밀번호 찾기 : 아이디,이메일 입력 폼 -->
				<div id = "findpw-modal" class="modal">
					<div id="findpw-modal-content" class="modal-content">
						<h2>가입한 계정의 이메일과 ID를 입력해주세요</h2>
						<input type="email" id="findpw-email" name="findpw-email" class="smoothborder" placeholder="이메일입력">
						<input type="text" id="findpw-id" name="findpw-id" class="smoothborder" placeholder="ID입력">
						<input type="button" id="findpw-btn" name="findpw-btn" class="readmore" value="확인"
						onclick="mailsend(document.getElementById('findpw-email').value)">
						<br><br>
						<div id = "findpw-hide">
							<input type="text" id="findpw-check" name="findpw-check" class="smoothborder" >
							<input type="button" id="findpw-confirm" name="findpw-confirm" 
							class="readmore" value="확인" onclick="findPwProc(document.getElementById('findpw-id').value)" >
							<br><br>
						</div>
						<input type="button" onclick="forgetpwClose()" id="pwmodalclosebtn" name="pwmodalclosebtn" class="readmore" value="닫기">						
					</div>
				</div><!-- 아이디, 이메일 입력 폼 끝 -->
			</form>
		</div>
		<br/>
		
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