<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Villim</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link href="<c:url value="/resources/css/main/main.css" />" rel="stylesheet" />
<link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet" />
<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.86080.js"/>"></script>
<script>
	$(document).ready(function() {
		$("#homeButton").click(function(){
			$(location).attr("href","homeMain.do")
		})
	})
</script>
<style>
	@font-face {
  		font-family: font;
		src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');  
	}
	
</style>
</head>
<body>
	<%@ include file="../resource/include/header.jsp"%>
	<ul class="cb-slideshow">
		<li><span>Image 01</span></li>
		<li><span>Image 02</span></li>
		<li><span>Image 03</span></li>
		<li><span>Image 04</span></li>
		<li><span>Image 05</span></li>
		<li><span>Image 06</span></li>
	</ul>


	<div class="jumbotron">
		<div id="welcome">
			<p>빌림과 함께 여행을 떠나볼까요?</p>
		</div>
		<Br>
		<div id="searchBar">
			<div id="type">숙박유형</div>
			<div id="people">인원수</div>
			<div id="calendar">날짜</div>
			<div id="searchBt">버튼</div>
		</div>
	</div>
	<div class="jumbotron" id="wrapper">

		<div id="homeTitle">
			<div id="homeTitleD">
				<p>마음에 드는 숙소를 빌려보세요 !</p>
			</div>
			<div id="homeTitleD2">
				<p>퀄리티와 편안함이 검증된 새로운 숙소 컬렉션</p>
			</div>
			<div id="homeTitlePic">
				<button class="btn btn-secondary" id="homeButton">숙소 둘러보기</button>
				<img src="<c:url value='/resources/img/homeTitle5.jpg'/>">
			</div>
		</div>

		<div id="homeContents">
			<div class="row">
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle.jpg'/>"></a>
						<p class="homeType">집 전체·레체</p>
						<p class="homeName">
							<B>In the historical center of Leccee</B>
						</p>
						<p class="homePrice">\88,732 /박</p>
						<p class="reviewStar">★★★★★</p>
						<p class="reviewCount">247</p>
						<p class="hostTitle">슈퍼호스트</p>
					</div>
				</div>
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle2.jpg'/>"></a>
						<p class="homeType">집 전체·레체</p>
						<p class="homeName">
							<B>In the historical center of Leccee</B>
						</p>
						<p class="homePrice">\88,732 /박</p>
						<p class="reviewStar">★★★★★</p>
						<p class="reviewCount">247</p>
						<p class="hostTitle">슈퍼호스트</p>
					</div>
				</div>
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle3.jpg'/>"></a>
						<p class="homeType">집 전체·레체</p>
						<p class="homeName">
							<B>In the historical center of Leccee</B>
						</p>
						<p class="homePrice">\88,732 /박</p>
						<p class="reviewStar">★★★★★</p>
						<p class="reviewCount">247</p>
						<p class="hostTitle">슈퍼호스트</p>
					</div>
				</div>
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle4.jpg'/>"></a>
						<p class="homeType">집 전체·레체</p>
						<p class="homeName">
							<B>In the historical center of Leccee</B>
						</p>
						<p class="homePrice">\88,732 /박</p>
						<p class="reviewStar">★★★★★</p>
						<p class="reviewCount">247</p>
						<p class="hostTitle">슈퍼호스트</p>
					</div>
				</div>


			</div>
			<div class="row">
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle5.jpg'/>"></a>
						<p class="homeType">집 전체·레체</p>
						<p class="homeName">
							<B>In the historical center of Leccee</B>
						</p>
						<p class="homePrice">\88,732 /박</p>
						<p class="reviewStar">★★★★★</p>
						<p class="reviewCount">247</p>
						<p class="hostTitle">슈퍼호스트</p>
					</div>
				</div>
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle6.jpg'/>"></a>
						<p class="homeType">집 전체·레체</p>
						<p class="homeName">
							<B>In the historical center of Leccee</B>
						</p>
						<p class="homePrice">\88,732 /박</p>
						<p class="reviewStar">★★★★★</p>
						<p class="reviewCount">247</p>
						<p class="hostTitle">슈퍼호스트</p>
					</div>
				</div>
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle.jpg'/>"></a>
						<p class="homeType">집 전체·레체</p>
						<p class="homeName">
							<B>In the historical center of Leccee</B>
						</p>
						<p class="homePrice">\88,732 /박</p>
						<p class="reviewStar">★★★★★</p>
						<p class="reviewCount">247</p>
						<p class="hostTitle">슈퍼호스트</p>
					</div>
				</div>
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle2.jpg'/>"></a>
						<p class="homeType">집 전체·레체</p>
						<p class="homeName">
							<B>In the historical center of Leccee</B>
						</p>
						<p class="homePrice">\88,732 /박</p>
						<p class="reviewStar">★★★★★</p>
						<p class="reviewCount">247</p>
						<p class="hostTitle">슈퍼호스트</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../resource/include/footer.jsp"%>
</body>
</html>