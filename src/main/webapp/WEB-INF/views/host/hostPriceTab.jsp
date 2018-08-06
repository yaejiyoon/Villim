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

<title>요금탭</title>

<style>
div {
	box-sizing: border-box;
}

#wrapper {
	border: 1px solid black;
	margin: 30px auto;
	width: 70%;
	height: 1000px;
}

.wrapper-sub {
	border: 1px dotted black;
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

.price-line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

.price-wrap {
	width: 100%;
}

.price-title {
	display: inline-block;
	width: 90%;
	border: 1px solid black;
}

.price-mod {
	display: inline-block;
	width: 9%;
	text-align: right;
}

.basic-price {
	display: inline-block;
	margin-top: 30px;
	border: 1px dotted black;
	width: 100%;
	margin-top: 30px;
}

.basic-price-sub1 {
	display: inline-block;
	font-size: 17px;
	border: 1px dotted black;
	width: 49%;
}

.basic-price-sub2 {
	display: inline-block;
	font-size: 17px;
	border: 1px dotted black;
	width: 49%;
	text-align: right;
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
					onclick="location.href='hostReserveTab.do?seq=${hdto.home_seq}'">예약 설정</button>
			</div>
			<div>
				<button class="nav-btn" type="button"
					onclick="location.href='hostPriceTab.do?seq=${hdto.home_seq}'">요금</button>
			</div>
			<div>
				<button class="nav-btn" type="button"
					onclick="location.href='hostReservePossibleTab.do?seq=${hdto.home_seq}'">예약 가능
					여부</button>
			</div>
			<div>
				<button type="button">현지 법규</button>
			</div>
			<div>
				<button type="button">공동 호스트</button>
			</div>
		</div>

		<div class="price-line"></div>


		<div class="wrapper-sub">

			<div class="price-wrap">
				<div class="price-title">
					<h4>
						<b>1박 요금</b>
					</h4>
				</div>
				<div class="price-mod">
					<button type="button" class="btn btn-default">수정</button>
				</div>

				<div class="basic-price">
					<div class="basic-price-sub1">기본 요금</div>
					<div class="basic-price-sub2">10,000</div>
				</div>
				<div class="price-line"></div>

			</div>
			
			<div class="price-wrap">
				<div class="price-title">
					<h4>
						<b>통화 단위</b>
					</h4>
				</div>
				<div class="price-mod">
					<button type="button" class="btn btn-default">수정</button>
				</div>

				<div class="basic-price">
					<div class="basic-price-sub1">통화 단위</div>
					<div class="basic-price-sub2">KRW</div>
				</div>
				<div class="price-line"></div>

			</div>
		</div>
	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>