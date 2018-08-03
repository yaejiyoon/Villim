<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header css -->
<link rel="shortcut icon" href="../favicon.ico">
<link href="<c:url value="/resources/css/main/header.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/main/demo.css" />" rel="stylesheet" />
<link href="<c:url value="/resources/css/main/component.css?var=1" />" rel="stylesheet" />
<link href="<c:url value="/resources/css/main/normalize.css" />" rel="stylesheet" />
<script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>



    <div id="header">
		<div id="header-logo">
			<img src="<c:url value='/resources/img/logo2.png'/>">
		</div>
		<div id="header-search" class="form-search form-inline">
			<img src="<c:url value='/resources/img/search.png'/>">
			<input type="text" class="search-query form-control" placeholder="모든 위치·숙소" />
		</div>
		<div id="header-menu" class="container" >
			<section class="color-5">
				<nav class="cl-effect-5">
					<a href="#" style="color:black;"><span data-hover="숙소추가">숙소추가</span></a>
					<a href="#" style="color:black;"><span data-hover="호스트">호스트</span></a>
					<a href="#" style="color:black;"><span data-hover="저장목록">저장목록</span></a>
					<a href="#" style="color:black;"><span data-hover="여행">여행</span></a>
					<a href="#" style="color:black;"><span data-hover="메세지">메세지</span></a>
					<a href="#" style="color:black;"><span data-hover="도움말">도움말</span></a>
				</nav>
			</section>
		</div>
		<div id="header-pic">
			<img src="<c:url value='/resources/img/1.jpg'/>">
		</div>
	</div>