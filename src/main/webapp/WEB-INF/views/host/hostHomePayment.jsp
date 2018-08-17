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
	height: 400px;
}

#wrapper-sub {
	border: 1px solid black;
	width: 100%;
	height: 300px;
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

#right-side div:first-child {
	border: 1px solid #E6E6E6;
}

#right-title {
	background: #E6E6E6;
	font-size: 17px;
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
					<div id=right-title>&nbsp;&nbsp;&nbsp;대금 수령 방법</div>
					<div id=right-contents>
						<p>
							<b>회원님께 지급할 대금이 있습니다! 대금 수령 방법을 추가하세요.</b>
						</p>
						<p>에어비앤비는 게스트가 계획한 체크인 시간에서 약 24시간이 지난 후 숙박 대금을 지급합니다. 회원님의
							계좌에 대금이 입금되는 시간은 대금 수령 방법에 따라 다릅니다. 더 알아보기</p>
					</div>
					<div id="btn-wrap">
						<button type="button" class="btn btn-danger btn-lg"
							onclick="location.href='hostHomePaymentSelect.do'">대금 수령
							방법 추가</button>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>