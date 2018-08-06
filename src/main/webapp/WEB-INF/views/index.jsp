<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Villim</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet"/>
<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.86080.js"/>"></script>

<style>

	#header {
		position:absolute;
		z-index: 10000;
		background-color: white;
	}
	
	.jumbotron {
		height : 700px;
		width : 100%;
		text-align: center;
	}
	
	@font-face {
  		font-family: font;
		src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');  
/*   		src: url('<c:url value='/resources/fonts/NANUMGOTHIC.TTF'/>');  */
	}
	
 	#searchBar { 
 		margin-top : 280px;
 		width : 60%; 
 		height : 150px; 
 		display: inline-block;
 		background-color: white;
 		display : inline-block;
		position: relative; 
		z-index : 10000; 
 	} 
 	
 	#type {
 		width: 25%;
 		height : 100%;
 		border : 1px dotted pink;
 		float:left;
 	}
 	
 	#people {
 		width: 25%;
 		height : 100%;
 		border : 1px dotted pink;
 		float:left;
 	}
 	
 	#calendar {
 		width: 35%;
 		height : 100%;
 		border : 1px dotted pink;
 		float:left;
 	}
 	
 	#searchBt {
 		width: 15%;
 		height : 100%;
 		border : 1px dotted pink;
 		float:left;
 	}
 	
 	#footer {
		position:relative;
		z-index: 10000;
		background-color: white;
	}
	
	#wrapper {
		background-color: white;
		position:relative;
		z-index:10000;
		margin-bottom: 0px;
	}
	
	.cb-slideshow {
    list-style:none;
	}
	
 	
</style>
</head>
<body>
<%@ include file="../resource/include/header.jsp" %>
<div class="jumbotron">
    <div id="searchBar">
		<div id="type">숙박유형</div>
		<div id="people">인원수</div>
		<div id="calendar">날짜</div>
		<div id="searchBt">버튼</div>
	</div>
	<ul class="cb-slideshow">
            <li><span>Image 01</span></li>
            <li><span>Image 02</span></li>
            <li><span>Image 03</span></li>
            <li><span>Image 04</span></li>
            <li><span>Image 05</span></li>
            <li><span>Image 06</span></li>
    </ul>
</div>
<div class="jumbotron" id="wrapper">
</div>
<%@ include file="../resource/include/footer.jsp" %>
</body>
</html>