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

<title>숙박</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/htitle.png'/>" />

<style>
div {
	box-sizing: border-box;
}
body{
min-width:1280px;
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
	font-size: 20px;
	margin-top: 30px;
	margin-bottom: 30px;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 30px;
	margin-bottom: 30px;
}

.wrap-title1, .wrap-title2 {
	font-size: 16px;
	margin-bottom: 10px;
}

.wrap-title2 {
	margin-top: 30px;
}

.wrap {
	width: 100%;
}

.wrap-sub {
	width: 60%;
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

<title>Insert title here</title>
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
			<div class="wrapper-sub-title">
				<b>숙박 기간</b>
			</div>

			<form id="submit" action=hostReserveModifyNightProc.do method=post>

				<div class=wrap-title1>
					<b>최소 숙박일</b>
				</div>
				<div class=wrap>
					<div class=wrap-sub>
						<input type=number id="min" class="form-control input-lg" name=home_min_stay
							value=${hdto.home_min_stay }> 
					</div>
				</div>

				<div class=wrap-title2>
					<b>최대 숙박일</b>
				</div>
				<div class=wrap>
					<div class=wrap-sub>
						<input type=number id="max" class="form-control input-lg" name=home_max_stay
							value=${hdto.home_max_stay }> 
					</div>
				</div>

				<nav class="navbar navbar-default navbar-fixed-bottom"
					style="width: 70%; height: 12%; margin: 0 auto;">
					<div class="container">
						<div class="btn-group">
							<button type="button" id="save" class="btn btn-lg save">저장</button>
							<button type="button" id="cancel" class="btn btn-lg cancel"
								onclick="history.back()">취소</button>
						</div>
					</div>
				</nav>

				<input type=hidden name=seq value=${hdto.home_seq }>
			</form>
			<script>
				$('#save').click(function(){
					if($('#min').val()==" "){
						alert("aa");
						$('#min').val(0);
					}
					if($('#max').val()==" "){
						$('#max').val(0);
					}
					document.getElementById('submit').submit();
				})
			
			</script>
		</div>
	</div>

</body>
</html>