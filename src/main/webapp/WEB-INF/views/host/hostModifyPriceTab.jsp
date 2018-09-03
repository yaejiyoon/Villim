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

<style>
div {
	box-sizing: border-box;
}

#wrapper {
	margin: 30px auto;
	margin-bottom: 100px;
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
	font-size: 18px;
	margin-top: 30px;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 20px;
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
</style>

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
			<form id="submit" action="hostModifyPriceProc.do" method="post">
				<div class="wrapper-sub-title">
					<b style="font-size: 20px;">1박 요금</b>
				</div>

				<div style="margin-top: 40px;">
					<div style="margin-bottom: 10px;">
						<b>기본 요금</b>
					</div>
					<div id="price-wrap">
							<input id="price" type="number" required="required" class="form-control"
								name="home_price" style="width: 80%; padding: 0;">
					</div>
				</div>
				<nav class="navbar navbar-default navbar-fixed-bottom"
					style="width: 70%; height: 12%; margin: 0 auto;">
					<div class="container">
						<div class="btn-group">
							<button id="save" type="button" class="btn btn-lg save">저장</button>
							<button type="button" class="btn btn-lg cancel"
								onclick="history.back()">취소</button>
						</div>
					</div>
				</nav>
				<input type="hidden" name="home_seq" value="${hdto.home_seq }">
			</form>
			<script>
				$(document).ready(function() {
					var output;
					$('#save').prop("disabled", true);
				
					$("#price").on('keyup', function(){
						if($('#price').val()==""){
							if($('#price-sub').length<=0){
								$('#price').css("border", '1.5px solid red');
								output="<div id='price-sub' style='color:red;'>기본 요금은  필수 입력 사항입니다.</div>"
								$('#price-wrap').after(output);
							}
						}else{
							$('#price-sub').remove();
						}
						
						if($('#price').val() <= 10000){
							if($('#price-sub').length<=0){
								output="<div id='price-sub' style='color:red;'>10,000 이상의 기본요금을 사용하세요.</div>"
								$('#price').css("border", '1.5px solid red');
								$('#price-wrap').after(output);
								$('#save').prop("disabled", true);
							}
						}else{
							$('#price-sub').remove();				
							$('#price').css("border", '1px solid black');
							$('#save').prop("disabled", false);
							
							$('#save').click(function(){
								document.getElementById('submit').submit();
							})
						}
					})
					
				})
			</script>
		</div>
	</div>
</body>
</html>