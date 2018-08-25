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

<link href="<c:url value="../resources/css/home/reservationReq.css?var=1" />" rel="stylesheet" />
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
	src: url('<c:url value='/ resources/ fonts/ dx.ttf'/>');
}

@font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   }
</style>
<script>
	$(document).ready(function(){
		$("#requestBT").click(function(){
			$(location).attr('href','reservReqToHost.re');
		});
	})
</script>
</head>
<body>
	<div id="paymemntWrapper">
		<div id="paymentheader">
			<div style="float:left; width:7%; height:100%;">
				<img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
			</div>
			<div style="float:left; width:93%; height:100%;">
				<p id="text"> > 예약 확인 및 요청</p>
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
						<li>숙소 편의시설: 개인실와(과) 주방</li>
						<li>포함 편의시설: 건물 내 무료 주차, 아침식사 등</li>
						<li>숙소 편의시설: 개인실와(과) 주방</li>
						<li>숙소 편의시설: 개인실와(과) 주방</li>
						<li>숙소 편의시설: 개인실와(과) 주방</li>
						<li>포함 편의시설: 건물 내 무료 주차, 아침식사 등</li>
						<li>숙소 편의시설: 개인실와(과) 주방</li>
						<li>숙소 편의시설: 개인실와(과) 주방</li>
					</ul>
				</div>
				<div id="paymentLeft-content02">
					<p class="title">주의할 사항</p>
					<div class="content02">어린이(0~12세), 파티 및 이벤트에 적합한 숙소입니다.</div>
					<div class="content02">체크인 가능 시간: 16:00 이후와(과) 체크아웃: 11:00까지</div>
					<div class="content02">흡연 금지와(과) 반려동물 동반 불가</div>
					<div class="content02">키패드(으)로 셀프 체크인</div>
					<p style="margin-top: 20px; font-size: 2vh;">알아두어야 할 사항</p>
					계단을 올라가야 함
					
					<br>
					<br>
					<a href="">더 보기</a>
					<br>
					<br>
					<br>
					<button id="requestBT" class="btn btn-secondary">확인 및 예약 요청</button>
					<br>
					<br>
					<br>
				</div>
			</div>
			<div id="paymentRight">
				<div id="paymentRight-content">
					<div id="content01">
						<div id="content01-homeName">
							<p>${hdto.home_name }</p>
							<p>Jeju-si의 개인실</p>
							<p>★★★★★</p><p>후기 137개</p>
							<p></p>
						</div>
						<div id="content01-homepic">
							<img src="<c:url value='/resources/img/home.jpg'/>">
						</div>
					</div>
					<div id="content02">
						<div style="margin:5px 0px;">
							<img src="<c:url value='/resources/img/group.png'/>" id="group">
							<p style="display: inline;">게스트 ${hdto.home_people }명</p>
						</div>
						<div style="margin:5px 0px 7px 0px;">
							<img src="<c:url value='/resources/img/calendar.png'/>" id="calen">
							<p style="display: inline;">${checkInDate }     →    ${checkOutDate }</p>
						</div>
					</div>
					<div id="content03">
						<div style="margin:5px 0px;">
							<p style="display: inline; float:left;">₩85,000 x 2박</p>
							<p style="display: inline; float:right;">₩170,000</p>
						</div style="margin:5px 0px;">
						<div style="margin:5px 0px;">
							<p style="display: inline; float:left;">청소비</p>
							<p style="display: inline; float:right;">₩9,000</p>
						</div>
						<div style="margin:5px 0px;">
							<p style="display: inline; float:left;">서비스 수수료</p>
							<p style="display: inline; float:right;">₩24,730</p>
						</div>
					</div>
					<div id="content04" >
						<p style="display: inline; float:left;">총 합계 (KRW)</p>
						<p style="display: inline; float:right; font-weight: 600;">₩203,730</p>
					</div>
				</div>
			</div>
		</div>
		<div id="paymentfooter">
			<img src="<c:url value='/resources/img/logo.png'/>">
			<img src="<c:url value='/resources/img/copyright.png'/>" style="width:15px;">
			<p>villim, Inc.</p>
		</div>
	</div>
</body>
</html>