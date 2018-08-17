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

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

#right-contents { 
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

.btn-wrap {
	border: 1px dotted black;
	width: 100%;
}

.btn-wrap-sub1 {
	border: 1px dotted black;
	display: inline-block;
	float: left;
	width: 50%;
}

.btn-wrap-sub2 {
	border: 1px dotted black;
	witdh: 50%;
	display: inline-block;
	float: right;
}

.title {
	margin-top: 20px;
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
						<b>이 대금 수령 방법과 연결된 주소를 입력하세요.</b>
					</div>

					<div class="title">
						<div>
							<b>주소</b>
						</div>
						<input type="text" class="form-control input-lg"
							placeholder="예: 강남대로 570">
					</div>

					<div class="title">
						<div>
							<b>건물 / 아파트 및 동 / 호수 (선택사항)</b>
						</div>
						<input type="text" class="form-control input-lg"
							placeholder="예: 한국아파트 101동 307호">
					</div>

					<div class="title">
						<div>
							<b>시 / 군 / 구</b>
						</div>
						<input type="text" class="form-control input-lg">
					</div>

					<div class="title">
						<div>
							<b>도 / 시</b>
						</div>
						<input type="text" class="form-control input-lg">
					</div>

					<div class="title">
						<div>
							<b>우편번호</b>
						</div>
						<input type="text" class="form-control input-lg"
							placeholder="예: 16359">
					</div>

					<div class="title">
						<div>
							<b>국가</b>
						</div>
						<input type="text" class="form-control input-lg"
							disabled="disabled" value="한국">
					</div>

					<div class=line></div>
				</div>

				<div class="btn-wrap" style="border: 1px solid black;">
					<div class="btn-wrap-sub1" style="border: 1px dotted black;">
						<button class="btn btn-info btn-lg" type="button">뒤로</button>
					</div>
					<div class=btn-wrap-sub2 style="border: 1px dotted black;">
						<button class="btn btn-info btn-lg" type="button">다음</button>
					</div>
				</div>
			</div>


		</div>
	</div>

	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>