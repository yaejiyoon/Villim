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

<title>편의시설 수정 탭</title>

<style>
/* 라디오버튼 시작 */
* {
	font-family: 'Roboto', sans-serif;
}

.option-input {
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
	position: relative;
	right: 0;
	bottom: 0;
	height: 25px;
	width: 25px;
	transition: all 0.15s ease-out 0s;
	background: #cbd1d8;
	border: none;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	margin-right: 0.5rem;
	outline: none;
	position: relative;
	z-index: 1000;
}

.option-input:hover {
	background: #9faab7;
}

.option-input:checked {
	background: #008489;
}

.option-input:checked::before {
	height: 25px;
	width: 25px;
	position: absolute;
	content: '✔';
	display: inline-block;
	font-size: 20px;
	text-align: center;
	line-height: 25px;
}

.option-input:checked::after {
	-webkit-animation: click-wave 0.65s;
	-moz-animation: click-wave 0.65s;
	animation: click-wave 0.65s;
	background: #40e0d0;
	content: '';
	display: block;
	position: relative;
	bottom: 5px;
	z-index: 100;
}

.option-input.radio {
	border-radius: 50%;
	margin-left: 18px;
	margin-right: 10px;
}

.option-input.radio::after {
	border-radius: 50%;
}
/* 라디오버튼 끝 */
div {
	box-sizing: border-box;
}

#wrapper {
	margin: 30px auto;
	margin-bottom: 200px;
	height: auto;
	width: 70%;
}

#wrapper-sub {
	width: 70%;
}

.wrapper-sub-back {
	margin-top: 30px;
	margin-bottom: 50px;
	font-size: 20px;
	width: 100%;
	display: inline-block;
	float: left;
}

.back-wrap {
	width: 3%;
	display: inline-block;
	float: left;
}

.back-img {
	width: 100%;
	height: 100%;
}

.back-link {
	display: inline-block;
	float: left;
}

.wrapper-sub-title {
	font-size: 20px;
	margin-top: 30px;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 30px;
	margin-bottom: 30px;
}

.btn-group {
	margin-top: 20px;
}

.btn-group button:first-child {
	margin-right: 30px;
}

.save {
	background-color: #008489;
	color: white;
}

.cancel {
	background-color: white;
	color: #008489;
	border: 2px solid #008489;
}

#policy-wrap {
	font-size: 15px;
}

#policy-content1 {
	margin-top: 30px;
	height: auto;
	width: 100%;
}

#policy-content2 {
	width: 100%;
	height: auto;
}

#policy-content3 {
	width: 100%;
	height: auto;
}

#policy-sub1, #policy-sub3 {
	width: 5%;
	height: 100%;
	display: inline-block;
	position: relative;
	top: -11px;
}

#policy-sub5 {
	width: 5%;
	height: 100%;
	display: inline-block;
	position: relative;
	top: -31px;
}

#policy-sub2, #policy-sub4, #policy-sub6 {
	width: 93%;
	display: inline-block;
}

.policy-title {
	font-size: 17px;
	font-weight: normal;
}

.policy-desc {
	font-weight: normal;
	font-size: 14px;
}
</style>

<title></title>

</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id="wrapper-sub">
			<div class="wrapper-sub-back">
				<div class="back-wrap">
					<img class="back-img"
						src="<c:url value='/resources/img/back.png'/>">
				</div>
				<div class="back-link">
					<a onclick="history.back()">${hdto.home_name } 수정으로 돌아가기</a>
				</div>
			</div>
			<p class="wrapper-sub-title">
				<b>정책</b>
			</p>
			<p>게스트 예약 취소에 대한 정책</p>
			<div class=line></div>

			<div id="policy-wrap">
				<b>환불 정책</b>
			</div>
			<div>게스트의 예약 취소 시 적용할 환불 정책을 선택하세요.</div>

			<form action="hostHomePolicyModifyProc.do" method="post">
				<div id="policy-content1">
					<div id="policy-sub1">
						<input style="margin: 0;" type="radio" id="r1" name="policy"
							value="유연" class="option-input radio">
					</div>
					<div id="policy-sub2">
						<label for="r1"><div class="policy-title">유연</div>
							<div class="policy-desc">체크인 1일 전까지 취소 시 전액 환불</div></label>
					</div>
				</div>
				<div class="line"></div>

				<div id="policy-content2">
					<div id="policy-sub3">
						<input style="margin: 0;" type="radio" id="r2" name="policy"
							value="일반" class="option-input radio">
					</div>
					<div id="policy-sub4">
						<label for="r2"><div class="policy-title">일반</div>
							<div class="policy-desc">체크인 5일 전까지 취소 시 전액 환불</div></label>
					</div>
				</div>
				<div class="line"></div>

				<div id="policy-content3">
					<div id="policy-sub5">
						<input style="margin: 0;" type="radio" id="r3" name="policy"
							value="엄격" class="option-input radio">
					</div>
					<div id="policy-sub6">
						<label for="r3"><div class="policy-title">엄격</div>
							<div class="policy-desc">예약 후 48시간 이내에 취소하고 체크인 14일 전인 경우에
								요금의 전액이 환불됩니다. 체크인 7일 전에 취소할 경우 요금의 50%가 환불됩니다. 체크인까지 7일이 남지 않은
								시점에 취소할 경우 환불되지 않습니다.</div></label>
					</div>
				</div>

				<nav class="navbar navbar-default navbar-fixed-bottom"
					style="width: 70%; height: 12%; margin: 0 auto;">
					<div class="container">
						<div class="btn-group">
							<button class="btn btn-lg save">저장</button>
							<button type="button" class="btn btn-lg cancel"
								onclick="history.back()">취소</button>
						</div>
					</div>
				</nav>

				<input type="hidden" name="seq" value="${hdto.home_seq }">
			</form>
			
			<script>
				var pol = "${hdto.home_policy}";
				var arr=[];
				var tmp;
				$('input[name=policy]').each(function(){
					arr.push($(this).val());
				})
				
				for(var i=0; i<arr.length; i++){
					if(arr[i] == pol){
						$("input[value="+pol+"]").prop('checked', true);
					}
				}
				
			</script>

		</div>
	</div>
</body>
</html>