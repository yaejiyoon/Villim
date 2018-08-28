<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="<c:url value="../resources/css/home/paymentReq.css?var=1" />" rel="stylesheet" />
<script>
	$(document).ready(function(){
		$("#toindex").click(function(){
			$(location).attr("href","/");
		});
	})
</script>
<style>
@font-face {
	font-family: font2;
	src: url('<c:url value='/ resources/ fonts/ dx.ttf '/>');
}

@font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   }
</style>
</head>
<body>
	<div id="paymemntWrapper">
		<div id="paymentheader">
			<div style="float:left; width:7%; height:100%;">
				<img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
			</div>
			<div style="float:left; width:93%; height:100%;">
				<p id="text">> 예약 확인 및 요청</p>
			</div>
		</div>
		<div id="paymentContent">
			<div id="paymentLeft">
				<div id="paymentLeft-content01">
					<p>예약 확인 및 요청</p>
					<br>
					<p class="title">숙박에 대해 반드시 알아야 할 사항</p>
					<ul>
						<li>숙소 편의시설: 개인실와(과) 주방</li>
						<li>포함 편의시설: 건물 내 무료 주차, 아침식사 등</li>
						<li>숙소 편의시설: 개인실와(과) 주방</li>
						<li>숙소 편의시설: 개인실와(과) 주방</li>
					</ul>
				</div>
				<div id="paymentLeft-content02"></div>
			</div>
			<div id="paymentRight">
				<div id="paymentRight-content">
					<div id="content01">
						<div id="content01-homeName">
							<p>Sometimesjeju 201호!<br>안전도어락!<br>통유리오션뷰!</p>
							<p>Jeju-si의 개인실</p>
							<p>★★★★★</p><p>후기 137개</p>
						</div>
						<div id="content01-homepic">
							<img src="<c:url value='/resources/img/home.jpg'/>">
						</div>
					</div>
					<div id="content02">
						<div>
							<img src="<c:url value='/resources/img/group.png'/>" id="group">
							<p style="display: inline;">게스트 1명</p>
						</div>
						<div>
							<img src="<c:url value='/resources/img/calendar.png'/>" id="calen">
							<p style="display: inline;">2018년 9월 25일     →    2018년 9월 27일</p>
						</div>
					</div>
					<div id="content03">
						<div>
							<p style="display: inline; float:left;">₩85,000 x 2박</p>
							<p style="display: inline; float:right;">₩170,000</p>
						</div>
						<div>
							<p style="display: inline; float:left;">청소비</p>
							<p style="display: inline; float:right;">₩9,000</p>
						</div>
						<div>
							<p style="display: inline; float:left;">서비스 수수료</p>
							<p style="display: inline; float:right;">₩24,730</p>
						</div>
					</div>
					<div id="content04">
						<p style="display: inline; float:left;">총 합계 (KRW)</p>
						<p style="display: inline; float:right; font-weight: 600;">₩203,730</p>
					</div>
				</div>
			</div>
		</div>
		<div id="paymentfooter">
		
		</div>
	</div>
</body>
</html>