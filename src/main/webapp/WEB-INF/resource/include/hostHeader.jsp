<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header css -->
<link rel="shortcut icon" href="../favicon.ico">
<link rel="shortcut icon" href="../favicon.ico">
<link href="<c:url value="/resources/css/main/demo.css?var=2" />" rel="stylesheet" />
<link href="<c:url value="/resources/css/main/component.css?var=2" />" rel="stylesheet" />
<link href="<c:url value="/resources/css/main/normalize.css" />" rel="stylesheet" />
<script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<style>
body {
	font-family: font;
}

div {
	box-sizing: border-box;
}

#header {
	width: 100%;
	height: 80px;
}

#header div {
	float: left;
}

#header-logo {
	width: 8%;
	height: 100%;
}

#header-menu {
	width: 86%;
	height: 100%;
}

#header-pic {
	width: 5%;
	height: 100%;
}

#header-logo img {
	width: 80px;
	margin-top: 23px;
	margin-left: 15px;
	transform: translate(10%, 0%);
}

#header-pic img {
	margin-top: 15px;
	width: 45px;
	border-radius: 150px;
	border: 2px solid #e2e2e2;
	transform: translate(20%, 0%);
}

#footer {
	width: 100%;
	height: 470px;
	border-top: 1px solid #bababa;
}

#footer-contents {
	margin: 0px auto;
	width: 70%;
	height: 70%;
}

.contents {
	float: left;
	width: 25%;
	height: 100%;
	padding-top: 40px;
}

.contents li {
	list-style: none;
	margin-bottom: 5px;
	color: #8c8c8c;
}

.contents ul {
	padding-left: 0px;
	margin-top: 10px;
}

.contents span {
	font-size: 1vw;
}

.contents a {
	font-size: 0.8vw;
	color: #8c8c8c;
	text-decoration: none;
}

.contents a:hover {
	text-decoration: underline;
}

.contents a:visited {
	color: #8c8c8c;
	text-decoration: none;
}

.contents img {
	width: 30px;
}

#footer-logo {
	margin: 0px auto;
	width: 70%;
	height: 30%;
	padding-top: 10px;
	border-top: 1px solid #bababa;
}

#footer-logo img {
	width: 80px;
	padding-top: 10px;
}

#footer-logo span {
	margin: 0px;
	font-size: 1vw;
}

#menu-ul {
	height: 100%;
	width: 40%;
	float: left;
	display: inline-block; 
	padding-left: 0;
}

#menu-ul li {
	height: 100%;
	display: inline-block;
	float: left;
	font-size:16px;
	text-align:center;
	text-decoration: none;
	margin-top: 20px;
	overflow: hidden;
	
}
</style> 

<div id="header">
	<div id="header-logo">
		<img src="<c:url value='/resources/img/logo2.png'/>">
	</div>
	<div id="header-menu" class="container">
			<ul id="menu-ul" class="row">
				<li class="col-md-2"><a href="hostMain.do" style="color: black;"><span
						data-hover="홈"><b>홈</b></span></a></li>
				<li class="col-md-2"><a href="#" style="color: black;"><span
						data-hover="메시지"><b>메시지</b></span></a></li>
				<li class="col-md-2"><a href="#" style="color: black;"><span data-hover="달력"><b>달력</b></span></a></li>
				<li class="col-md-2"><a href="#" style="color: black;"><span data-hover="숙소"><b>숙소</b></span></a></li>
				<li class="col-md-2"><a href="#" style="color: black;"><span
						data-hover="성취도"><b>성취도</b></span></a></li>
				<li class="col-md-2"><a href="#" style="color: black;"><span
						data-hover="도움말"><b>도움말</b></span></a></li>
			</ul>
	</div>
	<div id="header-pic">
		<img src="<c:url value='/resources/img/1.jpg'/>">
	</div>
</div>