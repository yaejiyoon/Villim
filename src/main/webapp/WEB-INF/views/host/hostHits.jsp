<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
<style>
div {
	box-sizing: border-box;
}

#wrapper {
	border: 1px solid black;
	margin: 10px auto;
	width: 70%;
	height: auto;
}

#wrapper-sub1 {
	width: 70%;
}

#wrapper-sub2 {
	margin-top: 50px;
	border: 1px solid black;
	width: 70%;
	display: inline-block;
	float: left;
}

#wrapper-sub3 {
	border: 1px solid black;
	margin-top: 70px;
	margin-bottom: 50px;
	border: 1px solid black;
	width: 60%;
	display: inline-block;
}

.home-details {
	border: 1px solid black;
	margin-top: 60px;
	width: 50%;
	padding: 0;
	display: inline-block;
	float: left;
}

.home-details div {
	padding: 0;
}

.nav-btn {
	background-color: white;
	text-align: center;
	border: none;
	text-decoration: none;
	width: 100%;
	height: 70px;
	padding: 0;
	font-size: 17px;
	text-align: left;
}

.nav-btn:hover {
	
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

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 20px;
	margin-bottom: 20px;
}

.well {
	font-size: 20px;
}

#gpa-title {
	margin-top: 50px;
	font-size: 25px;
}

.gpa-con {
	width: 75%;
	height: 30px;
	font-size: 18px;
	color: black;
}

.gpa-con a {
	font-size: 18px;
	color: black;
	display: inline-block;
	float: left;
}

.gpa-con span {
	display: inline-block;
	float: right;
	font-size: 18px;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

a:focus {
	text-decoration: none;
}

.star-wrap {
	width: 4%;
	height: 100%;
	display: inline-block;
	float: right;
}

.star-img {
	max-width: 100%;
	max-height: 100%;
}

.num {
	font-size: 18px;
	display: inline-block;
	float: left;
	width: 4%;
	text-align: center;
	margin-top: 5px;
}

.per {
	margin-top: 5px;
	margin-left: 5px;
	font-size: 18px;
	width: 4%;
	display: inline-block;
	float: left;
	font-size: 18px;
}

.star-list-wrap {
	width: 4%;
	height: 4%;
	display: inline-block;
	float: left;
	padding: 0;
	margin-right: 5px;
}

.progress {
	margin-top: 5px;
	height: 30px;
	display: inline-block;
	float: left;
	width: 87%;
}

.star-list {
	max-width: 100%;
	max-height: 100%;
	padding: 0;
	margin: 0;
}

.well {
	width: 75%;
	padding: 0px;
	height: auto;
	display: inline-block;
	float: left;
	border: none;
}

.well-sub {
	width: 100%;
	display: inline-block;
	float: left;
	background-color: white;
}

#review-title {
	font-size: 25px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id=wrapper-sub1>
			<div class="home-details" class="row">
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostHomeAchievement.do'">
						<b>평점</b>
					</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostReserveTab.do'">수입</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostPriceTab.do'">조회수</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostReservePossibleTab.do'">발전기회</button>
				</div>
			</div>
		</div>

		<div id=wrapper-sub2>

		</div>
	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>