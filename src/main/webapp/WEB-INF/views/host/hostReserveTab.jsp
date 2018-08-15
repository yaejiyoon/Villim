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

<title>예약설정 탭</title>

<style>
div {
	box-sizing: border-box;
}

#wrapper {
	border: 1px solid black;
	margin: 30px auto; width : 70%;
	height: 1000px;
	width: 70%;
}

.wrapper-sub {
	width: 70%;
}

.home-reserve {
	margin-top: 60px;
}

.home-reserve div {
	display: inline-block;
}

.home-reserve div button {
	background-color: white;
	border: none;
	text-decoration: none;
	outline: 1;
	border-bottom: thin;
	border-bottom-color: black;
	width: 120px;
	height: 70px;
	padding-left: 0;
	font-size: 17px;
}

.home-reserve-line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
}

.guest-rule-wrap {
	margin-top:50px;
	width: 100%;
}

.guest-rule-title {
	display: inline-block;
	float: left; width : 90%;
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

.policy-sub1{
	display: inline-block;
	float:left;
	width: 100%;
	font-size: 17px;
	margin-top: 30px;
}
.policy-sub1 div{
	display: inline-block;
	float:left;
	width: 50%;
}
.policy-sub2{
	display: inline-block;
	float:left;
	width: 100%;
	font-size: 17px;
	margin-top: 30px;
}
.policy-sub2 div{
	display: inline-block;
	float:left;
	width: 50%;
}

.details{
	margin-top:40px;
	margin-bottom:15px;
	font-size: 17px;
}


.nav-btn {
	background-color: white;
	border: none;
	text-decoration: none;
	width: 120px;
	height: 70px;
	padding-left: 0;
	font-size: 17px;
}

.nav-btn:hover {
	border-bottom: 2px solid blue;
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
</style>

</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div class="home-title">
			<h2>Yuljeon-dong, Jangan-gu, Suwon의 아파트</h2>
		</div>

		<div class="home-reserve">
			<div>
				<button class="nav-btn" type="button"
					onclick="location.href='hostHomeTab.do?seq=${hdto.home_seq}'">숙소
					세부정보</button>
			</div>
			<div>
				<button class="nav-btn" type="button"
					onclick="location.href='hostReserveTab.do?seq=${hdto.home_seq}'">예약
					설정</button>
			</div>
			<div>
				<button class="nav-btn" type="button"
					onclick="location.href='hostPriceTab.do?seq=${hdto.home_seq}'">요금</button>
			</div>
			<div>
				<button class="nav-btn" type="button"
					onclick="location.href='hostReservePossibleTab.do?seq=${hdto.home_seq}'">예약
					가능 여부</button>
			</div>
			<div>
				<button type="button">현지 법규</button>
			</div>
			<div>
				<button type="button">공동 호스트</button>
			</div>
		</div>

		<div class="home-reserve-line"></div>

		<div class="wrapper-sub">
			<div class="guest-rule-wrap">
				<div class="guest-rule-title">
					<h4>
						<b>숙소 이용규칙</b>
					</h4>
				</div>
				<div class="guest-rule-mod">
					<button type="button" class="btn btn-info">수정</button>
				</div>
				<!-- for문으로 체크된것 출력하기 -->
				<c:forEach var="list" items="${ruleList }">
					<div class="rule">${list}</div>
					<div class="home-reserve-line"></div>
				</c:forEach>
				
				<div class="details">게스트가 숙소에 대해 알아두어야 할 세부 사항</div>
				<c:forEach var="list" items="${detailsList }">
					<div class="details-contents">${list }</div>
				</c:forEach>
			</div>

			<div class="home-reserve-line"></div>

			<div class="guest-rule-wrap">
				<div class="guest-rule-title">
					<h4>
						<b>정책</b>
					</h4>
				</div>
				<div class="guest-rule-mod">
					<button type="button" class="btn btn-info">수정</button>
				</div>
				<div class="policy">
					<div class="policy-sub1">
						<div>체크인 시간</div>
						<div class></div>
					</div>
					<div class="home-reserve-line"></div>
					<div class="policy-sub2">
						<div>체크아웃 시간</div>
						<div>설정되지 않음</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>