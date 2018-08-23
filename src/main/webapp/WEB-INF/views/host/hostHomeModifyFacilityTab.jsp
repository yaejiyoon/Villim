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
	font-size: 20px;
	margin-top: 30px;
	margin-bottom: 30px;
}

.fac-left {
	display: inline-block;
	float: left;
	width: 50%;
	height: auto;
	font-size: 16px;
}

.fac-right {
	display: inline-block;
	float: left;
	width: 50%;
	height: auto;
	font-size: 16px;
}

.fac-add-left {
	display: inline-block;
	width: 50%;
	height: auto;
	font-size: 16px;
	float: left;
}

.fac-add-right {
	display: inline-block;
	width: 50%;
	height: auto;
	font-size: 16px;
}

.collapse-wrap {
	margin-top: 40px;
	margin-bottom: 20px;
}

input[type=checkbox] {
	margin-top: 15px;
}

.secure {
	margin-top: 50px;
}

.secure-left {
	display: inline-block;
	float: left;
	width: 50%;
	height: auto;
	font-size: 16px;
}

.secure-right {
	display: inline-block;
	float: left;
	width: 50%;
	height: auto;
	font-size: 16px;
}

.fac-wrap {
	display: inline-block;
	width: 100%;
	height: auto;
}

.fac-add-wrap {
	display: inline-block;
	width: 100%;
	height: auto;
}

.secure-wrap {
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

.add-fac-link {
	font-size: 18px;
}

.add-fac-link:hover {
	text-decoration: none;
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
			<div class="wrapper-sub-title">
				<b>어떤 편의시설을 제공하나요?</b>
			</div>

			<form method="post" action="hostHomeModifyFacilityProc.do">
				<div class="fac-wrap row">
					<div class="fac-left col-md-6">
						<input type="checkbox" name='fac' value="필수품목">필수품목<br>
						<span>&nbsp;&nbsp;수건, 침대, 시트, 비누, 화장지, 베개</span><br> <input
							type="checkbox" name='fac' value="주방">주방<br>
						<div style="margin-left: 10px;">게스트가 요리를 할 수 있는 공간</div>
						<br> <input type="checkbox" name='fac' value="에어컨">에어컨<br>
						<input type="checkbox" name='fac' value="난방">난방<br> <input
							type="checkbox" name='fac' value="헤어드라이어">헤어드라이어<br>
						<input type="checkbox" name='fac' value="옷걸이">옷걸이<br>
						<input type="checkbox" name='fac' value="다리미">다리미<br>
					</div>
					<div class="fac-right col-md-6">
						<input type="checkbox" name='fac' value="세탁기">세탁기<br>
						<input type="checkbox" name='fac' value="건조기">건조기<br>
						<input type="checkbox" name='fac' value="TV">TV<br> <input
							type="checkbox" name='fac' value="샴푸">샴푸<br> <input
							type="checkbox" name='fac' value="침구">침구<br> <input
							type="checkbox" name='fac' value="무선인터넷">무선인터넷<br>
						<div style="margin-left: 10px;">숙소 내에서 끊김없이 연결</div>
						<br> <input type="checkbox" name='fac' value="작업공간">작업공간<br>
						<div style="margin-left: 10px;">노트북을 놓을 수 있는 책상이나 테이블과 앉아 일할
							수 있는 의자</div>
						<br>
					</div>
				</div>
				<div class="collapse-wrap" style="margin-top: 50px;">
					<a class="add-fac-link" data-toggle="collapse"
						href="#collapseExample" aria-expanded="false"
						aria-controls="collapseExample">편의시설 추가 </a>
				</div>

				<div class="collapse row" id="collapseExample">
					<div class="col-md-12" style="font-size: 18px;">
						<b>주방 및 시설</b>
					</div>
					<div class="fac-add-left col-md-6">
						<input type="checkbox" name='acc' value="건물 내 주차">건물 내 주차<br>
						<input type="checkbox" name='acc' value="외부주차">외부 주차<br>
						<input type="checkbox" name='acc' value="헬스장">헬스장<br>
						<input type="checkbox" name='acc' value="수영장">수영장<br>
						<input type="checkbox" name='acc' value="농구경기장">농구경기장<br>
					</div>
					<div class="fac-add-right col-md-6">
						<input type="checkbox" name='acc' value="식기류">식기류<br>
						<input type="checkbox" name='acc' value="커피메이커">커피메이커<br>
						<input type="checkbox" name='acc' value="냉장고">냉장고<br>
						<input type="checkbox" name='acc' value="전자레인지">전자레인지<br>
						<input type="checkbox" name='acc' value="가스레인지">가스레인지<br>
						<input type="checkbox" name='acc' value="기본 조리도구">기본 조리도구<br>
						<div style="margin-left: 10px;">냄비, 후라이팬, 기름, 소금, 후추</div>
					</div>
				</div>

				<div class="secure row">
					<div class="col-md-12" style="font-size: 18px;">
						<b>안전시설</b>
					</div>
					<div class="secure-left col-md-6">
						<input type="checkbox" name='secure' value="소화기">소화기<br>
						<input type="checkbox" name='secure' value="화재감지기">화재감지기<br>
					</div>
					<div class="secure-right col-md-6">
						<input type="checkbox" name='secure' value="일산화탄소 감지기">일산화탄소
						감지기<br> <input type="checkbox" name='secure' value="구급상자">구급상자<br>
					</div>
				</div>

				<input type=hidden name=seq value=${hdto.home_seq }>

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
			</form>
		</div>
	</div>
	<script>
		$(document).ready(function() {

			var amencheck = [];
			var acccheck = [];
			var safecheck = [];
			
			var acc = "${hdto.home_guest_access}";
			var accarr = new Array();
			accarr = acc.split(",");
			console.log("accarr::" + accarr);

			var amen = "${hdto.home_amenities}";
			var amenarr = new Array();
			amenarr = amen.split(",");
			console.log("amenarr::" + amenarr);

			var safe = "${hdto.home_safety}";
			var safearr = new Array();
			safearr = safe.split(",");
			console.log("safearr::" + safearr);

			$('input[name=fac]').each(function(){
				amencheck.push($(this).val());
			})
			$('input[name=acc]').each(function(){
				acccheck.push($(this).val());
			})
			$('input[name=secure]').each(function(){
				safecheck.push($(this).val());
			})

			
			
			for (var i = 0; i < accarr.length; i++) {
				console.log("i");
				for(var j=0; j< acccheck.length; j++){
					console.log("j")
					if(accarr[i] == acccheck[j]){
						var str = accarr[i];
						console.log("str:::"+str)  
						$("input[value="+str+"]").prop("checked", true);
						console.log("이게 뭐시여");
					}
				}
			}
			for (var i = 0; i < amenarr.length; i++) {
				console.log("i");
				for(var j=0; j< amencheck.length; j++){
					console.log("j")
					if(amenarr[i] == amencheck[j]){
						var str = amenarr[i];
						console.log("str:::"+str)  
						$("input[value="+str+"]").prop("checked", true);
						console.log("이게 뭐시여");
					}
				}
			}
			for (var i = 0; i < safearr.length; i++) {
				console.log("i");
				for(var j=0; j< safecheck.length; j++){
					console.log("j")
					if(safearr[i] == safecheck[j]){
						var str = safearr[i];
						console.log("str:::"+str)  
						$("input[value="+str+"]").prop("checked", true);
						console.log("이게 뭐시여");
					}
				}
			}

		})
	</script>
</body>
</html>