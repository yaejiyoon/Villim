<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>계정 관리</title>

<style>
div {
	box-sizing: border-box;
}

#wrapper {
	border: 1px solid black;
	margin: 30px auto;
	width: 70%;
	height: 800px;
}

#wrapper-sub {
	border: 1px solid black;
	width: 100%;
	height: auto;
	display: inline-block;
	float: left;
}

#left-side {
	border: 1px solid black;
	width: 30%;
	height: 100%;
	float: left;
	display: inline-block;
}

#left-side div {
	font-size: 17px;
	color: #A4A4A4;
	margin-bottom: 10px;
}

#right-side {
	height: 100%;
	width: 67%;
	display: inline-block;
	float: right;
}

.right-title {
	font-size: 25px;
	height: 20%;
	padding-top: 10px;
	padding-bottom: 10px;
}

#right-contents {
	font-size: 16px;
	text-align: center;
	height: 60%;
	padding-top: 20px;
	padding-bottom: 20px;
}

#btn-wrap {
	text-align: center;
	height: 20%;
	padding-top: 20px;
	padding-bottom: 20px;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

.rt2 {
	margin-top: 30px;
}

.radio-wrap {
	display: inline-block;
	float: left;
	width: 5%;
}

.radio-content {
	display: inline-block;
	float: left;
	width: 95%;
}

.btn-wrap {
	width: 100%;
}

.btn-wrap-sub1 {
	width: 50%;
	display: inline-block;
	float: left;
}

.btn-wrap-sub2 {
	witdh: 50%;
	display: inline-block;
	float: right;
}
</style>

</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>

	<div id="wrapper">
		<div id=wrapper-sub>
			<div id="left-side">
				<div>
					<a href="hostHomeManage.do" style="color: #A4A4A4;">알림</a>
				</div>
				<div>
					<a href="#" style="color: #A4A4A4;">결제 수단</a>
				</div>
				<div>
					<a href="hostHomePayment.do" style="color: Black;"><b>대금 수령
							방법</b></a>
				</div>
				<div>
					<a href="hostHomePaymentBreakdown.do" style="color: #A4A4A4;">대금
						수령 내역</a>
				</div>
			</div>
			<div id="right-side">
				<div>
					<div class=right-title>
						<b>결제 국가</b>
					</div>
					<select class="form-control input-lg">
						<option value="한국">한국</option>
					</select>

					<div class="right-title rt2">
						<b>한국 대금 수령 방법</b>
					</div>
					<div>
						<div class=radio-wrap>
							<input id="radio1" type="radio" name="payment">
						</div>
						<div class=radio-content>
							<label for="radio1">페이팔에 USD($)(으)로 수령<br> 3~4시간 내에 지급<br> 수수료가 부과될 수 있음</label>
						</div>

						<div class=line></div>

						<div class=radio-wrap>
							<input id=radio2 type="radio" name="payment">
						</div>
						<div class=radio-content>
							<label for=radio2>페이팔에 USD($)(으)로 수령<br> 3~4시간 내에 지급<br> 수수료가 부과될 수 있음</label>
						</div>

						<div class=line></div>

						<div class=radio-wrap>
							<input id=radio3 type="radio" name="payment">
						</div>
						<div class=radio-content>
							<label id="radio3">페이팔에 USD($)(으)로 수령<br> 3~4시간 내에 지급<br> 수수료가 부과될 수 있음</label>
						</div>
					</div>

					<div class=line></div>

					<div class="btn-wrap">
						<div class=btn-wrap-sub1>
							<button class="btn btn-info btn-lg" type="button"
							onclick="location.href='hostHomePayment.do'">뒤로</button>
						</div>
						<div class=btn-wrap-sub2>
							<button class="btn btn-info btn-lg" type="button"
							onclick="location.href='hostHomePaymentAddress.do'" >다음</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>