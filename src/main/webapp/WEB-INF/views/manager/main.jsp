<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">	

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
	#wrapper{
		width:100%;
	}
	#collapseExample{
	
		
		
	}
	div{
		border:1px solid black;
	}
	#navi{
		display:inline-block;
		
		
	}
	#content{
	display:inline-block;
	position:absolute;
	width:100%;
	
	}
	#btn{
		width:100px;
	}

</style>	
<script>
/* $("#slide").animate({width:'toggle'},350); */
$(document).ready(function(){
	
	 /* $("#collapseExample").animate({width:'toggle'},350); */
	$("#btn").click(function(){
		 $("#collapseExample").animate({width:'toggle'},350);
		  $("#btn").animate({width:'100px'},350); 
	})
	 
})

</script>


</head>
<body>

<!-- <a aria-expanded="false" aria-controls="collapseExample">
  Link with href
</a> -->

<div id="wrapper">


<div id="navi">
<ul class="nav nav-pills nav-stacked" id="collapseExample">
<li role="presentation"><img src="../resources/img/logo2.png"></li>
<li role="presentation"><a href="#">admin 계정 정보</a></li>
 <li role="presentation"><a href="#">Home</a></li>
  <li role="presentation"><a href="#">Profile</a></li>
  <li role="presentation"><a href="#">Messages</a></li>
</ul>
</div>

<div id="content">
	<div id="contentHeader">
		<button id="btn">버튼</button>
		<a href="#">
 		 <i class="fas fa-envelope fa-2x"></i> <span class="badge" style="wi">4</span>
		</a>		
	</div>
	<div><h2>Dashboard</h2></div>

</div>


</div>
</body>
</html>