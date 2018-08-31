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

/* .home-reserve div button { */
/* 	background-color: white; */
/* 	border: none; */
/* 	text-decoration: none; */
/* 	outline: 1; */
/* 	border-bottom: thin; */
/* 	border-bottom-color: black; */
/* 	width: 120px; */
/* 	height: 70px; */
/* 	padding-left: 0; */
/* 	font-size: 15px; */
/* } */
.home-reserve-line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 20px;
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
</style>

</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div class="home-title">
			<div
				style="display: inline-block; width: 79%;">
				<h2>${hdto.home_name }</h2>
			</div>
			<div
				style="display: inline-block; width: 20%;text-align: right;">
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
			<div class="col-md-2">
				<button class="nav-btn" type="button"
					onclick="location.href='hostHomeTab.do?seq=${hdto.home_seq}'">숙소
					세부정보</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button" style="color: #008489;"
					onclick="location.href='hostReserveTab.do?seq=${hdto.home_seq}'">
					<b>예약 설정</b>
				</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button"
					onclick="location.href='hostPriceTab.do?seq=${hdto.home_seq}'">요금</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button"
					onclick="location.href='hostReservePossibleTab.do?seq=${hdto.home_seq}'">예약
					가능 여부</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button">현지 법규</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button">공동 호스트</button>
			</div>
		</div>

		<div class="wrapper-sub">

			<div class="home-reserve-line"></div>

			<div class="guest-rule-wrap">
				<div class="guest-rule-title">
					<h4>
						<b>정책</b>
					</h4>
				</div>
				<div class="guest-rule-mod">
					<button type="button" class="btn"
					onclick="location.href='hostHomePolicyModifyTab.do?seq=${hdto.home_seq}'">
						<b>수정</b>
					</button>
				</div>
				<div class="policy">
					<div class="policy-sub2">
						<div>환불 정책</div>
						<div style="text-align: right;">${hdto.home_policy }</div>
					</div>
				</div>
			</div>

			<div class="home-reserve-line"></div>

			<div class="guest-rule-wrap">
				<div class="guest-rule-title">
					<h4>
						<b>숙소 이용규칙</b>
					</h4>
				</div>
				<div class="guest-rule-mod">
					<button type="button" class="btn"
						onclick="location.href='hostReserveModifyRule.do?seq=${hdto.home_seq}'">
						<b>수정</b>
					</button>
				</div>
				<!-- for문으로 체크된것 출력하기 -->
				<c:forEach var="list" items="${ruleList }">
					<div class="rule">${list}</div>
					<div class="line"></div>
				</c:forEach>

			<c:if test="${detailsList.size() != 0 }">   
				<div class="details">게스트가 숙소에 대해 알아두어야 할 세부 사항</div>
				<c:forEach var="list" items="${detailsList }">
					<div class="details-contents" style="font-size: 15px;">
					${list }
					</div>
				</c:forEach>   
			</c:if>
				</div>
			<div class="line"></div>

		</div>
	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>