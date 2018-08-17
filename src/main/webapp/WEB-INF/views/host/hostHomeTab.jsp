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
<title>숙소 탭</title>



<style>
div {
	box-sizing: border-box;
}

#wrapper {
	border: 1px solid black;
	margin: 30px auto;
	width: 70%;
	height: auto;
}

.wrapper-sub {
	width: 70%;
}

.home-details {
	margin-top: 60px;
	width: 70%;
	display: inline-block;
	float: left;
	padding: 0;
}

.home-details div {
	display: inline-block;
	float: left;
	padding: 0;
}

.nav-btn {
	background-color: white; 
	text-align:center;
	border: none;
	text-decoration: none;
	width: 100%;
	height: 70px;
	padding: 0;
	font-size: 17px;
}

.nav-btn:hover {
	border-bottom: 2px solid blue;
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

.nav-btn:checked {
	text-decoration: none;
}

.home-details-line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

.home-pic-wrap {
	width: 100%;
}

.home-pic-title {
	display: inline-block;
	float: left;
	width: 90%;
}

.home-pic-mod {
	display: inline-block;
	float: left;
	width: 9%;
	text-align: right;
}

.home-pic {
	width: 40%;
	height: 180px;
	margin-top: 30px;
	float: left;
	border: 4px dotted #D8D8D8;
	max-width: 100%; 
	display: block;
}

.dd-pic-wrap {
	margin: 0 auto;
	width: 30%;
	height: 30%;
	margin-top: 30px;
}

.dd-pic {
	width: 100%; 
	max-height:100%; 
	display:inline-block;
}

.title-expl-wrap {
	width: 100%;
}

.title-expl-title {
	display: inline-block;
	float: left;
	width: 90%;
}

.title-contents {
	display: inline-block;
	width: 90%;
}

.title-expl-mod {
	display: inline-block;
	float: left;
	width: 9%;
}

.title-expl-loc {
	display: inline-block;
	font-size: 17px;
	margin-top: 30px;
	margin-bottom: 20px;
}

.title-expl-mod-add {
	font-size: 17px;
	margin-top: 10px;
	margin-bottom: 10px;
}

.title-expl-mod-add a:hover {
	text-decoration: none;
}

.title-expl-mod-add a:visited {
	text-decoration: none;
}

.accomo-table {
	width: 100%;
	margin-top: 20px;
}

.accomo-table tr td {
	font-size: 17px;
}

.accomo-table tr td:nth-child(2) {
	text-align: left;
}

.accomo-table tr td div {
	margin-top: 15px;
	margin-bottom: 15px;
}

.facility-table {
	width: 100%;
	margin-top: 20px;
	display: inline-block;
	float: left;
}

.facility-table tr td div {
	font-size: 17px;
	margin-top: 10px;
	margin-bottom: 10px;
	width: 100%;
}

.facility-table-tr {
	width: 100%;
}

.facility-table-td {
	display: inline-block;
	float: left;
	width: 100%;
	text-align: left;
}

.facility-table-td:nth-child(2) {
	text-align: center;
}

.loc-wrap {
	width: 100%;
}

.loc-contents {
	width: 100%;
	margin-top: 30px;
	display: inline-block;
	float: left;
	font-size: 18px;
}

.state-chan {
	width: 100%;
	margin-top: 30px;
	display: inline-block;
	float: left;
	font-size: 20px;
	margin-top: 30px;
	margin-top: 30px;
}
</style>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div class="home-title">
			<h2>${hdto.home_name }</h2>
		</div>

		<div class="home-details" class="row">
			<div class="col-md-2">
				<button class="nav-btn" type="button"
					onclick="location.href='hostHomeTab.do?seq=${hdto.home_seq}'">숙소
					세부정보</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button"
					onclick="location.href='hostReserveTab.do?seq=${hdto.home_seq}'">예약
					설정</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button"
					onclick="location.href='hostPriceTab.do?seq=${hdto.home_seq}'">요금</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button"
					onclick="location.href='hostReservePossibleTab.do?seq=${hdto.home_seq}'">예약
					가능 여부</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button">현지 법규</button>
			</div>
			<div class="col-md-2">
				<button class="nav-btn" type="button">공동 호스트</button>
			</div>
		</div>

		<div class="home-details-line"></div>

		<div class="wrapper-sub">
			<div class="home-pic-wrap">
				<div class="home-pic-title">
					<h4>
						<b>사진</b>
					</h4>
				</div>
				<div class="home-pic-mod">
					<button type="button" class="btn btn-info"
						onclick="location.href='hostHomePhotoModifyTab.do?seq=${hdto.home_seq}'">수정</button>
				</div>
				<c:if test="${hdto.home_main_pic ne null }">
					<a href="hostHomePhotoModifyTab.do?seq=${hdto.home_seq}">
						<div class="home-pic">
							<img class="dd-pic img-responsive"
								src="<c:url value='files/${hdto.home_main_pic }'/>">
						</div>
					</a>
				</c:if>
				<c:if test="${hdto.home_main_pic eq null }">
					<a href="hostHomePhotoModifyTab.do?seq=${hdto.home_seq}">
						<div class="home-pic">
							<div class="dd-pic-wrap">
								<img class="dd-pic img-responsive img-rounded"
									src="<c:url value='/resources/img/imgadd.png'/>">
							</div>
						</div>
					</a>
				</c:if>
			</div>

			<div class="home-details-line"></div>

			<div class="title-expl-wrap">
				<div class="title-expl-title">
					<h4>
						<b>제목 및 설명</b>
					</h4>
				</div>
				<div class="title-expl-mod">
					<button type="button" class="btn btn-info"
						onclick="location.href='hostHomeTitleModifyTab.do?seq=${hdto.home_seq}'">수정</button>
				</div>
				<div class="title-expl-loc">
					<b>${hdto.home_name }</b>
				</div>

				<div class="title-contents">${hdto.home_contents }</div>
				<div class="title-expl-mod-add">
					<a href="hostHomeTitleModifyTab.do?seq=${hdto.home_seq}">공간 추가</a>
				</div>
				<div class="title-expl-mod-add">
					<a href="hostHomeTitleModifyTab.do?seq=${hdto.home_seq}">사용가능
						공간 / 시설 추가</a>
				</div>
				<div class="title-expl-mod-add">
					<a href="hostHomeTitleModifyTab.do?seq=${hdto.home_seq}">게스트와의
						교류 추가</a>
				</div>
				<div class="title-expl-mod-add">
					<a href="hostHomeTitleModifyTab.do?seq=${hdto.home_seq}">주변 지역
						소개 추가</a>
				</div>
				<div class="title-expl-mod-add">
					<a href="hostHomeTitleModifyTab.do?seq=${hdto.home_seq}">대중교통
						추가</a>
				</div>
				<div class="title-expl-mod-add">
					<a href="hostHomeTitleModifyTab.do?seq=${hdto.home_seq}">기타 메모
						추가</a>
				</div>
			</div>

			<div class="home-details-line"></div>

			<div class="accommo-wrap">
				<div class="title-expl-title">
					<h4>
						<b>침실과 숙박인원</b>
					</h4>
				</div>
				<div class="title-expl-mod">
					<button type="button" class="btn btn-info">수정</button>
				</div>
				<table class="accomo-table">
					<c:if test="${hdto.home_people ne null }">
						<tr class="row" style="margin: auto;">
							<td class="col-md-6"><div>숙박 가능인원 : ${hdto.home_people }
									명</div></td>
							<td class="col-md-6"><div>건물 유형 : ${hdto.home_type }</div></td>
						</tr>
					</c:if>
					<c:if test="${hdto.home_bedroom ne null }">
						<tr class="row">
							<td class="col-md-6"><div>침실 : ${hdto.home_bedroom }</div></td>
							<td class="col-md-6"><div>침대 : ${hdto.home_bed }</div></td>
						</tr>
					</c:if>
				</table>
			</div>

			<div class="home-details-line"></div>

			<div class="accommo-wrap">
				<div class="title-expl-title">
					<h4>
						<b>편의시설</b>
					</h4>
				</div>
				<div class="title-expl-mod">
					<button type="button" class="btn btn-info"
						onclick="location.href='hostHomeModifyFacilityTab.do?seq=${hdto.home_seq}'">수정</button>
				</div>
				<table class="facility-table" style="margin-bottom: 20px;">
					<c:set var="i" value="0" />
					<c:set var="j" value="2" />
					<c:forEach var="list" items="${list }" begin="0" end="3">
						<c:if test="${i%j == 0 }">
							<tr class="row"
								style="text-align: left; border: 1px dotted white;">
						</c:if>

						<td class="col-md-6" style="border: 1px dotted white;"><div>${list }</div></td>

						<c:if test="${i%j == j-1 }">
							</tr>
						</c:if>

						<c:set var="i" value="${i+1 }" />
					</c:forEach>

				</table>

				<div style="font-size: 15px;">
					<a class="col-md-12" data-toggle="collapse" href="#collapseExample"
						aria-expanded="false" aria-controls="collapseExample">더 보기 </a>
				</div>

				<c:set var="i" value="0" />
				<c:set var="j" value="2" />
				<div class="collapse" id="collapseExample">
					<table class="facility-table">
						<c:forEach var="list" items="${list }" begin="4">
							<c:if test="${i%j == 0 }">
								<tr class="row"
									style="text-align: left; border: 1px dotted white;">
							</c:if>

							<td class="col-md-6" style="border: 1px dotted white;"><div>${list }</div></td>

							<c:if test="${i%j == j-1 }">
								</tr>
							</c:if>
							<c:set var="i" value="${i+1 }" />
						</c:forEach>
					</table>
				</div>

			</div>

			<div class="home-details-line"></div>

			<div class="loc-wrap">
				<div class="title-expl-title">
					<h4>
						<b>위치</b>
					</h4>
				</div>
				<div class="title-expl-mod">
					<button type="button" class="btn btn-info"
						onclick="location.href='hostHomeModifyLocationTab.do?seq=${hdto.home_seq}'">수정</button>
				</div>
				<div class="loc-contents">${hdto.home_addr1 },
					${hdto.home_addr2 }, ${hdto.home_zipcode }, ${hdto.home_nation }</div>
			</div>

			<div class="home-details-line"></div>

			<div class="state-wrap">
				<div class="title-expl-title">
					<h4>
						<b>숙소 상태</b>
					</h4>
				</div>
				<div class="title-expl-mod">
					<button type="button" class="btn btn-info"
						onclick="location.href='hostHomeModifyStateTab.do?seq=${hdto.home_seq}'">수정</button>
				</div>
				<div class="state-chan">
				<c:if test="${hdto.home_state == 0 }">				
					운영 중
				</c:if>
				<c:if test="${hdto.home_state == 1 }">				
					휴식 모드
				</c:if>
				<c:if test="${hdto.home_state == 2 }">				
					운영 중지
				</c:if>
				</div>
			</div>

			<div class="home-details-line"></div>
		</div>
	</div>
	<%@ include file="../../resource/include/footer.jsp"%>

</body>
</html>