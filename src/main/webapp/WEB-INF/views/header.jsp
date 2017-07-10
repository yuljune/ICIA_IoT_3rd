<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
	<script src="resources/js/jquery-ui.min.js"></script>
	<title>Insert title here</title>
	<style>
		
	    
	</style>
	</head>
	<body>
		<header id="headerWrap">
		<div id="header_main">
			<h1><a href="#" style="z-index: 2"><img src="resources/img/wevicetoo.png" style="margin-top: -12px;" width=137 alt="로고" /></a></h1>
			<nav class="top_menu">
				<ul>
					<li><a href="">로그인</a><span style="margin-left: 2px; margin-right: -32px;">|</span></li>
	                <li><a href="">회원가입</a><span style="margin-left: 2px; margin-right: -20px;">|</span></li>
					<li><a href="">가이드</a></li>
				</ul>
			</nav>
			
			
		</div>
		<nav id="gnb_main" style="background:url(resources/img/gnb_bg.png) no-repeat center 98px;">
			<div class="etc">
				<br/><br/><br/>
				<span style="font-size: 14px;">
				대한민국 인재를 키우는 힘
				<br/><br/>위메프
				</span>
				<!-- <p class="slogan"><img src="resources/img/Global.jpg" width=180 height=100/></p> -->
				
			</div>
			<ul>
				<li style=""><a href="">홈 소개</a>
					<ul class="snum01">
						<li class="tit"><a href="">소개</a></li>
						<li class="smenu"><a href="">연혁</a></li>
						<li class="smenu"><a href=""></a></li>
						<li class="smenu"><a href=""></a></li>
						<li class="smenu"><a href=""></a></li>
						
					</ul>
				</li>
				<li><a href="">프로젝트</a>
					<ul class="snum02">
						<li class="tit"><a href="">프로젝트</a></li>
						<li class="smenu"><a href="">프로젝트 목록</a></li>
						<li class="smenu"><a href="">프로젝트 결과물</a></li>
					</ul>
				</li>
				<li><a href="">커뮤니티</a>
					<ul class="snum03">
						<li class="tit"><a href="">커뮤니티</a></li>
						<li class="smenu"><a href="">지식QnA</a></li>
					</ul>
				</li>
				<li><a href="">공지사항</a>
					<ul class="snum04">
						<li class="tit"><a href="">공지사항</a></li>
						<li class="smenu"><a href="">공지사항</a></li>						
						<li class="smenu"><a href="">공모소식</a></li>
						<li class="smenu"><a href="">채용소식</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</header>
	<!-- 세션 있을시  -->
	<!-- 세션 없을시 나누기 -->
	
	</body>
	<script>
	// GNB
	var $gnb = $('#gnb_main');
	var $gnbLi = $gnb.find('> ul > li');

	$gnbLi.hover(function(){
		$gnbLi.removeClass('current');
		$(this).addClass('current');
		$gnb.stop().animate({height:"380px"},{duration:300,easing:'easeOutCubic'});
		$('#gnb_main .etc').hover(function(){
			$gnb.stop().animate({height:"380px"},{duration:300,easing:'easeOutCubic'});
		}, function(){
			$gnb.stop().animate({height:"98px"},{duration:300,easing:'easeOutCubic'});
		});
	}, function(){
		$gnbLi.removeClass('current');
		$gnb.stop().animate({height:"98px"},{duration:300,easing:'easeOutCubic'});
		
	});
	$gnbLi.on("focusin",function(){	
		$gnb.stop().animate({height:"380px"},{duration:300,easing:'easeOutCubic'});	
	});
	$gnbLi.on("focusout",function(){		
		$gnb.stop().animate({height:"98px"},{duration:300,easing:'easeOutCubic'});	
	});
	$('#gnb_main .etc').on("focusin",function(){
		$gnb.stop().animate({height:"380px"},{duration:300,easing:'easeOutCubic'});			
	});
		
	
	</script>
</html>