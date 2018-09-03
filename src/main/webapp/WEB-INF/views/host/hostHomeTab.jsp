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
	margin: 30px auto;
	width: 70%;
	height: auto;
	margin-bottom: 100px;
}

.wrapper-sub {
	width: 65%;
}

.home-details {
	margin-top: 60px;
	width: 60%;
	display: inline-block;
	float: left;
	padding: 0;
	margin-bottom: -30px;
}

.home-details div {
	display: inline-block;
	float: left;
	padding: 0;
}

.nav-btn {
	background-color: white;
	text-align: center;
	border: none;
	text-decoration: none;
	width: 100%;
	height: 70px;
	padding: 0;
	font-size: 15px;
}

.nav-btn:hover {
	border-bottom: 2px solid #008489;
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

.btn {
	background-color: white;
	color: #008489;
	border: 1px solid #008489;
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
	width: 30%;
	height: 140px;
	margin-top: 30px;
	margin-right: 20px;
	float: left;
	display: inline-block;
}

.dd-pic {
	width: 100%;
	height: 100%;
	display: inline-block;
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

.accomo-table tr td {
	padding-left: 0;
}

.accomo-table tr td:nth-child(2n) {
	text-align: right;
}

.ameni-before, .ameni-after {
	font-size: 17px;
	margin-bottom: 20px;
}

.ameni-before:nth-child(2n), .ameni-after:nth-child(2n) {
	text-align: right;
	padding-left: 0;
	padding-right: 30px;
}

#add-link {
	margin-bottom: 20px;
}

.img {
	width: 4vh;
}
</style>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div class="home-title">
			<div style="display: inline-block; width: 79%;">
				<h2>${hdto.home_name }</h2>
			</div>
			<div style="display: inline-block; width: 20%; text-align: right;">
				<button type="button" class="btn"
					onclick="location.href='fullCalendar.do?seq=${hdto.home_seq}'">
					<b>달력보기</b>
				</button>
				<button type="button" class="btn" onclick="location.href='home_info.do?seq=${hdto.home_seq}&sep=0'">
					<b>숙소 미리보기</b>
				</button>
			</div>

		</div>

		<div class="home-details" class="row">
			<div class="col-md-3">
				<button class="nav-btn" type="button" style="color: #008489;"
					onclick="location.href='hostHomeTab.do?seq=${hdto.home_seq}'">
					<b>숙소 세부정보</b>
				</button>
			</div>
			<div class="col-md-3">
				<button class="nav-btn" type="button"
					onclick="location.href='hostReserveTab.do?seq=${hdto.home_seq}'">예약
					설정</button>
			</div>
			<div class="col-md-3">
				<button class="nav-btn" type="button"
					onclick="location.href='hostReservePossibleTab.do?seq=${hdto.home_seq}'">예약
					가능 여부</button>
			</div>
			<div class="col-md-3">
				<button class="nav-btn" type="button"
					onclick="location.href='hostPriceTab.do?seq=${hdto.home_seq}'">현지 법규</button>
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
					<button type="button" class="btn"
						onclick="location.href='hostHomePhotoModifyTab.do?seq=${hdto.home_seq}'">
						<b>수정</b>
					</button>
				</div>

				<c:if test="${hdto.home_main_pic ne null }">
					<a href="hostHomePhotoModifyTab.do?seq=${hdto.home_seq}">
						<div class="home-pic">
							<img class="dd-pic img-responsive img-rounded"
								src="<c:url value='files/${hdto.home_main_pic }'/>">
						</div>
					</a>
				</c:if>

				<c:if test="${hplist.size() ne 0 }">
					<c:forEach var="hplist" items="${hplist }" begin="1" end="2">
						<a href="hostHomePhotoModifyTab.do?seq=${hdto.home_seq}">
							<div class="home-pic">
								<img class="dd-pic img-responsive img-rounded"
									src="<c:url value='files/${hplist.home_pic_name }'/>">
							</div>
						</a>
					</c:forEach>
				</c:if>

				<c:if test="${hdto.home_main_pic eq null }">
					<a href="hostHomePhotoModifyTab.do?seq=${hdto.home_seq}">
						<div class="home-pic">
							<img class="dd-pic img-responsive img-rounded"
								src="<c:url value='/resources/img/photo.png'/>">
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
					<button type="button" class="btn"
						onclick="location.href='hostHomeTitleModifyTab.do?seq=${hdto.home_seq}'">
						<b>수정</b>
					</button>
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
					<button type="button" class="btn"
						onclick="location.href='hostHomeRoomModifyTab.do?seq=${hdto.home_seq}'">
						<b>수정</b>
					</button>
				</div>
				<table class="accomo-table">
					<c:if test="${hdto.home_people ne null }">
						<tr class="row" style="margin: auto;">
							<td class="col-md-6"><div>건물 유형 :
									${hdto.home_buildingType }</div></td>
							<td class="col-md-6"><div></div>숙소 유형: ${hdto.home_type }</td>
						</tr>
						<tr class="row" style="margin: auto;">
							<td class="col-md-6"><div>숙박 가능인원 : ${hdto.home_people }명</div></td>
							<td class="col-md-6"><div>
									공용 공간:
									<c:if test="${hdto.home_public ne null}">있음</c:if>
									<c:if test="${hdto.home_public eq null}">없음</c:if>
								</div></td>
						</tr>
					</c:if>
					<tr class="row" style="margin: auto;">
						<td class="col-md-6"><div>침실 : ${roomCnt }</div></td>
						<td class="col-md-6"><div>침대 : ${bedCnt }</div></td>
					</tr>
				</table>
			</div>

			<div class="home-details-line"></div>

			<div class="accommo-wrap">
				<div class="title-expl-title">
					<h4 style="margin-bottom: 20px;">
						<b>편의시설</b>
					</h4>
				</div>
				<div class="title-expl-mod">
					<button type="button" class="btn"
						onclick="location.href='hostHomeModifyFacilityTab.do?seq=${hdto.home_seq}'">
						<b>수정</b>
					</button>
				</div>
				<div class="add-before row">
					<c:forEach var="list" items="${list }" begin="0" end="5">
						<c:choose>
							<c:when test="${list == '필수품목' }">
								<div class="ameni-before col-md-6">
									<img class='img' src="<c:url value='/resources/img/essential.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '에어컨' }">
								<div class="ameni-before col-md-6">
									<img class='img' src="<c:url value='/resources/img/air.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '난방' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/heating.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == 'TV' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/television.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '샴푸' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/shampoo.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '헤어드라이어' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/hairdryer.png'/>">${list }</div>
							</c:when>
							<c:when test="${list =='작업공간' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/laptop.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '주방' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/kitchen.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '옷걸이' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/hanger.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '다리미' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/hanger.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '세탁기' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/washingmachine.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '건조기' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/washingmachine.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '무선인터넷' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/wifi.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '침구' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/bed2.png'/>">${list }</div>
							</c:when>
						</c:choose>
					</c:forEach>
				</div>
				<c:if test="${list.size() == 0 }">
					<tr>
						<td style="font-size: 17px;"><b>설정되지 않았습니다.</b></td>
					</tr>
				</c:if>
				<c:if test="${list.size() != 0}">
					<div>
						<a id="add-link" style="font-size: 15px; padding-left: 0;"
							class="col-md-12" data-toggle="collapse" href="#collapseExample"
							aria-expanded="false" aria-controls="collapseExample">더 보기 </a><br>
					</div>
				</c:if>

				<div class="collapse row add-after" id="collapseExample">
					<c:forEach var="list" items="${list }" begin="6">
						<c:choose>
							<c:when test="${list == '필수품목' }">
								<div class="ameni-before col-md-6">
									<img class='img' src="<c:url value='/resources/img/essential.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '에어컨' }">
								<div class="ameni-before col-md-6">
									<img class='img' src="<c:url value='/resources/img/air.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '난방' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/heating.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == 'TV' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/television.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '샴푸' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/shampoo.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '헤어드라이어' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/hairdryer.png'/>">${list }</div>
							</c:when>
							<c:when test="${list =='작업공간' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/laptop.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '주방' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/kitchen.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '옷걸이' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/hanger.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '다리미' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/hanger.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '세탁기' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/washingmachine.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '건조기' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/washingmachine.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '무선인터넷' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/wifi.png'/>">${list }</div>
							</c:when>
							<c:when test="${list == '침구' }">
								<div class="ameni-before col-md-6">
									<img class='img'
										src="<c:url value='/resources/img/bed2.png'/>">${list }</div>
							</c:when>
						</c:choose>
					</c:forEach>
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
					<button type="button" class="btn"
						onclick="location.href='hostHomeModifyLocationTab.do?seq=${hdto.home_seq}'">
						<b>수정</b>
					</button>
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
					<button type="button" class="btn"
						onclick="location.href='hostHomeModifyStateTab.do?seq=${hdto.home_seq}'">
						<b>수정</b>
					</button>
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