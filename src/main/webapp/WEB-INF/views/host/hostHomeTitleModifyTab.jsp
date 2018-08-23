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
	border: 1px dotted black;
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

.title-caption {
	font-size: 17px;
}

.ta-wrap {
	width: 90%;
}

textarea {
	width: 100%;
	resize: vertical;
}

.title-wrap {
	margin-top: 50px;
}

.title-wrap div:first-child {
	font-size: 18px;
}

.contents-wrap {
	margin-top: 50px;
}

.contents-wrap div:first-child {
	font-size: 18px;
}

.explain-wrap {
	margin-top: 50px;
}

.explain-wrap div:first-child {
	font-size: 18px;
}

.space-wrap {
	margin-top: 50px;
}

.space-wrap div:first-child {
	font-size: 18px;
}

.guest-wrap {
	margin-top: 50px;
}

.guest-wrap div:first-child {
	font-size: 18px;
}

.guest-wrap {
	margin-bottom: 20px;
}
.guest-sub{
	margin-bottom: 20px;
}

.guest-ta{
	margin-top: 20px;
}

.etc-wrap {
	margin-top: 50px;
}

.etc-wrap div:first-child {
	font-size: 18px;
}

.region-title {
	margin-top: 50px;
	font-size: 18px;
}

.region-wrap {
	margin-top: 50px;
}

.region-wrap div:first-child {
	font-size: 18px;
}

.traffic-wrap {
	margin-top: 50px;
}

.traffic-wrap div:first-child {
	font-size: 18px;
}

.radio-form {
	margin-top: 15px;
	margin-bottom: 15px;
}

.line {
	display: inline-block;
	width: 100%;
	border: 0.5px solid #E6E6E6;
	margin-top: 50px;
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

<title>호스트 제목 수정 탭</title>
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
				<b style="font-size: 20px;">제목과 설명</b>
				<div class="title-caption">게스트가 회원님의 숙소에 대해 쉽게 파악할 수 있도록 제목과
					설명을 추가하세요.</div>
			</div>

			<form action="hostHomeTitleModifyProc.do" method="post">
				<div class="title-wrap">
					<div>
						<b>제목</b>
					</div>
					<div>숙소 이름을 한국어로 입력하세요.</div>
					<div class="title-wrap-sub2">
						<input type="text" class="form-control" name="home_name" value="${hdto.home_name }">
					</div>
				</div>

				<div class="contents-wrap">
					<div>
						<b>요약</b>
					</div>
					<div>회원님의 언어 능력을 활용해 숙소에 대해 한국어로 설명해주세요.</div>
					<div class="ta-wrap">
						<textarea class="form-control" rows="4" cols="" name="home_contents">${hdto.home_contents }</textarea>
					</div>
				</div>
				<div class="explain-wrap">
					<div>
						<b>숙소 설명</b>
					</div>
					<div>숙소의 특징을 한국어로 자세히 설명하세요.</div>
					<div class="ta-wrap">
						<textarea class="form-control" rows="4" cols="" name="home_desc_explain">${hddto.home_desc_explain }</textarea>
					</div>
				</div>
				<div class="space-wrap">
					<div>
						<b>사용가능 공간 / 시설</b>
					</div>
					<div>게스트에게 사용할 수 있는 숙소 공간에 대해 알려주세요.</div>
					<div class="ta-wrap">
						<textarea class="form-control" rows="4" cols="" name="home_desc_space">${hddto.home_desc_space }</textarea>
					</div>
				</div>
				<div class="guest-wrap">
					<div>
						<b>게스트와의 교류</b>
					</div>
					<div class="guest-sub">게스트가 머무는 동안 도와줄 수 있으면 그렇다고 게스트에게 알려주세요.</div>
					<c:choose>
						<c:when test="${hddto.home_desc_guestsel.equals('게스트와 친밀하게 교류할 것입니다.')}">
							<input type="radio" id="radio1" name="home_desc_guestsel" checked="checked" value="게스트와 친밀하게 교류할 것입니다.">
							<label for=radio1>게스트와 친밀하게 교류할 것입니다.</label><br> 
							<input type="radio" id="radio2" name=home_desc_guestsel	value="게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.">
							<label for=radio2>게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.</label><br>
							<input type="radio" id="radio3" name=home_desc_guestsel value="게스트와 직접 만날 수 없습니다.">
							<label for=radio3>게스트와 직접 만날 수 없습니다.</label><br>
						</c:when>
						<c:when test="${hddto.home_desc_guestsel.equals('게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.') }">
							<input type="radio" id="radio1" name="home_desc_guestsel" value="게스트와 친밀하게 교류할 것입니다.">
							<label for=radio1>게스트와 친밀하게 교류할 것입니다.</label><br> 
							<input type="radio" id="radio2" name=home_desc_guestsel	checked="checked"  value="게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.">
							<label for=radio2>게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.</label><br>
							<input type="radio" id="radio3" name=home_desc_guestsel value="게스트와 직접 만날 수 없습니다.">
							<label for=radio3>게스트와 직접 만날 수 없습니다.</label><br>
						</c:when>
						<c:when test="${hddto.home_desc_guestsel.equals('게스트와 직접 만날 수 없습니다.') }">
							<input type="radio" id="radio1" name="home_desc_guestsel" value="게스트와 친밀하게 교류할 것입니다.">
							<label for=radio1>게스트와 친밀하게 교류할 것입니다.</label><br> 
							<input type="radio" id="radio2" name=home_desc_guestsel value="게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.">
							<label for=radio2>게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.</label><br>
							<input type="radio" id="radio3" name=home_desc_guestsel checked="checked" value="게스트와 직접 만날 수 없습니다.">
							<label for=radio3>게스트와 직접 만날 수 없습니다.</label><br>
						</c:when>
						<c:when test="${hddto.home_desc_guestsel eq null}">
							<input type="radio" id="radio1" name="home_desc_guestsel" value="게스트와 친밀하게 교류할 것입니다.">
							<label for=radio1>게스트와 친밀하게 교류할 것입니다.</label><br> 
							<input type="radio" id="radio2" name=home_desc_guestsel value="게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.">
							<label for=radio2>게스트의 사생활을 존중하면서 게스트가 필요할 때 도움을 주겠습니다.</label><br>
							<input type="radio" id="radio3" name=home_desc_guestsel value="게스트와 직접 만날 수 없습니다.">
							<label for=radio3>게스트와 직접 만날 수 없습니다.</label><br>
						</c:when>
					</c:choose>
						
					<div class="ta-wrap guest-ta">
						<textarea class="form-control" rows="4" cols="" name="home_desc_guest">${hddto.home_desc_guest }</textarea>
					</div>
				</div>
				<div class="etc-wrap">
					<div>
						<b>기타 사항</b>
					</div>
					<div>게스트에게 숙박 중 고려해야 할 기타 세부정보를 알려주세요.</div>
					<div class="ta-wrap">
						<textarea class="form-control" rows="4" cols="" name=home_desc_etc>${hddto.home_desc_etc }</textarea>
					</div>
				</div>

				<div class="line"></div>

				<div class="region-title">
					<b>지역정보</b>
				</div>

				<div class="region-wrap">
					<div>
						<b>소개</b>
					</div>
					<div>숙소가 위치한 지역의 특색을 한국어로 게스트에게 알려주세요.</div>
					<div class="ta-wrap">
						<textarea class="form-control" rows="4" cols="" name=home_desc_region>${hddto.home_desc_region }</textarea>
					</div>
				</div>
				<div class="traffic-wrap">
					<div>
						<b>교통편</b>
					</div>
					<div>게스트에게 숙소가 대중 교통과 가까운지 알려줄 수 있습니다. 또한 주위의 주차 공간에 대해서도 알려줄
						수 있습니다.</div>
					<div class="ta-wrap">
						<textarea class="form-control" rows="4" cols="" name="home_desc_traffic">${hddto.home_desc_traffic }</textarea>
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
				
				<input type="hidden" name="home_desc_seq" value="${hddto.home_desc_seq }">
				<input type="hidden" name="home_seq" value="${hdto.home_seq }">
			</form>
		</div>
	</div>
</body>
</html>