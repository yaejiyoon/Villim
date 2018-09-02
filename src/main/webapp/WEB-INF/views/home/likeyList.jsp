<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>위시리스트</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
	@font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   }
   
	#header{
		font-family: font;
	}
	
	@font-face {
        font-family: font2;
        src: url('<c:url value='/resources/fonts/dx.ttf'/>');
   }
   
   div {
		box-sizing: border-box;
	 	/* border: 1px solid black; */
	}
	
	#likeyList-wrapper{
		font-family: font2;
	}
	
	#likeyList-contents{
		width:70%;
		height:auto;
		margin: 0 auto;
	}
	
	#likeyList-contents-sub01{
		width:100%;
		padding: 50px 10px 50px 0px;
	}
	
	#likeyList-contents-sub01:after{
		content: "";
   		display: block;
   		clear: both;
	}
	
	#likeyList-contents-sub02{
		width:100%;
	}
	
	#likeyList-contents-sub02-top{
		width:100%;
		padding-right: 10px;
	}
	
	#likeyList-contents-sub02-top:after{
		content: "";
   		display: block;
   		clear: both;
	}
	
	#ListmakeBT{
		background-color: white;
		color:#008489;
		border:2px solid #008489;
		width: 120px;
		height:40px;
		font-size: 15px;
		font-weight: 600;
	}
	
	#likeyList-contents-sub02-bottom{
		width:100%;
		height:100%;
	}
	
	.thumbnailName{
		position: absolute;
		color: white;
		font-weight: 600;
		top: 200px;
		left: 20px;
	}
	
	.thumbnail{
		cursor: pointer;
	}
</style>
</head>
<body>
	<%@ include file="../../resource/include/header.jsp" %>
	<div id="likeyList-wrapper">
		<div id="likeyList-contents">
			<div id="likeyList-contents-sub01">
				<h2 style="float: left; font-weight: 600; margin:0px;">목록</h2>
				<button id="ListmakeBT" class="btn btn-secondary" style="float:right;">목록 만들기</button>
			</div>
			<div id="likeyList-contents-sub02">
				<div id="likeyList-contents-sub02-top">
					<p style="display: inline; float: left; font-weight: 600;">내 위시리스트</p>
					<p style="display: inline; float: right; font-weight: 600;">${fn:length(likeyList)} 개의 리스트</p>
				</div>
				<div id="likeyList-contents-sub02-bottom">
					<div class="row" style="margin: 0px;">
					<c:forEach items="${likeyList }" var="likeyList">
						<div class="col-md-4" style="height:250px; padding: 0px;">
							<div class="thumbnail" style="width:100%; height:100%; box-shadow:none; border:0px; padding:0px 10px 10px 0px; "
								onclick="likeyClickFn('${likeyList.likeyList_seq }');">
       							<img src="<c:url value='../resources/img/home.jpg'/>" style="width:100%; height:100%;">
       							<p class="thumbnailName">${likeyList.likeyList_name }</p>
     						</div>
						</div>
					</c:forEach>
					</div>
				</div>
				<script>
				function likeyClickFn(likeyList_seq) {
					alert(likeyList_seq);
					
					$(location).attr('href','wishList.do?likeyList_seq='+likeyList_seq);
				}
				</script>
			</div>
			<div id="likeyList-contents-sub02"></div>
		</div>
	</div>
</body>
</html>