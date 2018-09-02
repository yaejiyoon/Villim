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
	margin: 30px auto;
	width: 70%;
	height: auto;
	margin-bottom: 100px;
}

#wrapper-sub {
	width: 100%;
	height: auto;
}

#left-side {
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

#cancelbtn {
	background-color: white;
	color: #008489;
	font-weight: bold;
}

#nextbtn {
	background-color: #008489;
	color: white;
}
</style>

</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id=wrapper-sub>
			<div id="left-side">
				<!-- 				<div> -->
				<!-- 					<a href="hostHomeManage.do" style="color: #A4A4A4;">알림</a> -->
				<!-- 				</div> -->
				<!-- 				<div> -->
				<!-- 					<a href="#" style="color: #A4A4A4;">결제 수단</a> -->
				<!-- 				</div> -->
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
							<input id="radio1" type="radio" name="payment"
								data-toggle="modal" data-target="#myModal">
						</div>
						<div class=radio-content>
							<label for="radio1">페이팔에 USD($)(으)로 수령<br> 3~4시간 내에
								지급<br> 수수료가 부과될 수 있음
							</label>
						</div>
						<div class=line></div>

						<div class=radio-wrap>
							<input id=radio2 type="radio" name="payment">
						</div>
						<div class=radio-content>
							<label for=radio2>은행 송금에 KRW(￦)(으)로 수령<br>·영업일 기준으로
								3~5일 이내 지급<br> 수수료가 없음
							</label>
						</div>
						<script>
							$("#radio1").click(function() {
								$('#nextbtn').prop("disabled", true);
								$('#myModal').modal();
							})
							$("#radio2").click(function() {
								$('#nextbtn').removeAttr("disabled");
							})
						</script>
					</div>

					<div class=line></div>

					<div class="btn-wrap">
						<div class=btn-wrap-sub1>
							<button class="btn btn-lg" id=cancelbtn type="button"
								onclick="location.href='hostHomePayment.do'">〈 뒤로</button>
						</div>
						<div class=btn-wrap-sub2>
							<button class="btn btn-lg" id="nextbtn" type="button"
								onclick="location.href='hostHomePaymentAddress.do'">다음
								〉</button>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body" style="height: 100px;">
					<p>준비중입니다. 빠른 시일 내에 준비하겠습니다.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
<!-- 					<button type="button" class="btn btn-primary">Save changes</button> -->
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->


	<script>
		
	</script>

	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>