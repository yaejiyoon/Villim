<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<title>예약설정</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/htitle.png'/>" />

<style>
div {
	box-sizing: border-box;
}
body{
min-width:1280px;
}
#wrapper {
	margin: 30px auto;
	height: auto;
	width: 70%;
	margin-bottom: 100px;
}

.wrapper-sub {
	width: 65%;
}

.home-reserve {
	margin-left: 0;
	margin-top: 60px;
	width: 60%;
	float: left;
	padding: 0;
	margin-bottom: -30px;
}

.home-reserve div {
	display: inline-block;
	float: left;
	padding: 0;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

.guest-rule-wrap {
	margin-top: 50px;
	width: 100%;
}

.guest-rule-title {
	display: inline-block;
	float: left;
	width: 90%;
	width: 90%;
}

.guest-rule-mod {
	display: inline-block;
	float: left;
	width: 9%;
	text-align: right;
}

.rule {
	margin-top: 30px;
	font-size: 17px;
	width: 50%;
	display: inline-block;
	float: left;
}

.policy-sub1 {
	display: inline-block;
	float: left;
	width: 100%;
	font-size: 17px;
	margin-top: 30px;
}

.policy-sub1 div {
	display: inline-block;
	float: left;
	width: 50%;
}

.policy-sub2 {
	display: inline-block;
	float: left;
	width: 100%;
	font-size: 17px;
	margin-top: 30px;
}

.policy-sub2 div {
	display: inline-block;
	float: left;
	width: 50%;
}

.details {
	margin-top: 40px;
	margin-bottom: 15px;
	font-size: 17px;
	display: inline-block;
}

.nav-btn {
	background-color: white;
	text-align: center;
	border: none;
	text-decoration: none;
	width: 100%;
	height: 70px;
	padding: 0;
	font-size: 15px;
}

.nav-btn:hover {
	border-bottom: 2px solid #008489;
}

.nav-btn:active {
	text-decoration: none;
	border: none;
	outline: none;
}

.nav-btn:focus {
	text-decoration: none;
	border: none;
	outline: none;
}

.nav-btn:checked {
	text-decoration: none;
}

.btn {
	background-color: white;
	color: #008489;
	border: 1px solid #008489;
}

p {
	font-size: 16px;
}
</style>

</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div class="home-title">
			<div style="display: inline-block; width: 79%;">
				<h2>${hdto.home_name }</h2>
			</div>
			<div style="display: inline-block; width: 20%; text-align: right;">
				<button type="button" class="btn"
					onclick="location.href='fullCalendar.do?seq=${hdto.home_seq}'">
					<b>달력보기</b>
				</button>
				<button type="button" class="btn">
					<b>숙소 미리보기</b>
				</button>
			</div>
		</div>

		<div class="home-reserve row">
			<div class="col-md-3">
				<button class="nav-btn" type="button"
					onclick="location.href='hostHomeTab.do?seq=${hdto.home_seq}'">숙소
					세부정보</button>
			</div>
			<div class="col-md-3">
				<button class="nav-btn" type="button"
					onclick="location.href='hostReserveTab.do?seq=${hdto.home_seq}'">
					예약 설정</button>
			</div>
			<div class="col-md-3">
				<button class="nav-btn" type="button"
					onclick="location.href='hostReservePossibleTab.do?seq=${hdto.home_seq}'">예약
					가능 여부</button>
			</div>
			<div class="col-md-3">
				<button class="nav-btn" type="button" style="color: #008489;"
					onclick="location.href='hostPriceTab.do?seq=${hdto.home_seq}'">
					<b>현지 법규</b>
				</button>
			</div>
		</div>

		<div class="wrapper-sub">

			<div class="line"></div>

			<div style="font-size: 20px; margin-bottom: 20px;">
				<b>현지 법규</b>
			</div>
			<p>에어비앤비에 숙소를 등록하기 전에 거주하는 지역의 법을 잘 검토해주세요</p>

			<p>대부분의 도시에는 주거공유 관련 규정이 있으며, 구역 설정, 건설, 인허가 또는 조세 관련 법령과 조례가
				있습니다. 많은 도시에서 게스트를 받거나 에어비앤비에 숙소를 등록하기 전에 사업자 등록을 하고 허가나 면허를 취득해야
				합니다. 호스트가 특정 세금을 징수하여 관할 당국에 납부해야 할 수 있으며, 일부 도시에서는 단기 임대가 금지될 수도
				있습니다.</p>

			<p>숙소를 등록 또는 예약하는 것은 전적으로 회원님의 결정사항이므로 에어비앤비에 숙소를 등록하기 전에 적용되는 법을
				잘 숙지하셔야 합니다. 회원님의 이해를 돕기 위해 '내 지역의 법과 규정'에서 유용한 자료가 제공됩니다.</p>
			<p>에어비앤비 서비스 약관에 동의하고 숙소를 등록하는 것은 회원님의 거주 지역의 법과 규정을 준수하겠다는 것을
				의미합니다.</p>
		</div>
	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>