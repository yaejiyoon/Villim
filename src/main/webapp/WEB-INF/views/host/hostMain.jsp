<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<%-- <link href="<c:url value="/resources/css/host/hostMain.css" />" --%>
<!-- 	rel="stylesheet" /> -->


<title>알림판 - Airbnb</title>
<style>
div {
	box-sizing: border-box;
}

#wrapper {
	margin: 30px auto;
	width: 70%;
	height: 1500px;
}

.alimpan {
	width: 100%;
}

.alimpan-title {
	width: 84%;
	text-align: left;
	display: inline-block;
}

.add-homelink {
	font-size: 20px;
	text-align: right;
	width: 15%;
	display: inline-block;
}

.add-homelink-link:hover {
	text-decoration: none;
}

.home-summary {
	margin-top: 60px;
}

.home-summary-title h2 {
	margin-bottom: 10px;
}

.home-summary-title-wrap {
	margin-bottom: 20px;
}

.home-summary-title {
	width: 150px;
}

.home-summary-span {
	font-size: 17px;
}

.home-summary-contents {
	display: inline-block;
	width: 80%;
	height: 200px; 
	margin-left: 2px;
}

.home-pic {
	width: 100%;
	height: 100%;
}
.home-pic-add {
	width: 50%;
	height: 50%;
	position: relative;
	top: 48px;  
	left:46px;
}

.home-summary-contents-pic {
	display: inline-block;
	float: left;
	width: 35%;
	height: 100%;  
}

.home-summary-contents-addr {
	display: inline-block;
	float: left;
	width: 65%;
	height: 100%;
}

.home-summary-contents-addr p, span {
	margin-bottom: 0;
	font-size: 15px;
}

.home-summary-contents-price {
	margin-top: 20px;
	margin-bottom: 20px;
}

.home-summary-contents-price2 {
	margin-bottom: 20px;
}

.home-summary-card {
	border: 1px solid black;
	width: 100%;
	height: 390px;
	margin-top: 50px;
}

.home-summary-card-sub1 {
	border: 1px dotted black;
	display: inline-block;
	width: 32%;
	height: 100%;
	float: left;
}

.home-summary-card-sub2 {
	border: 1px dotted black;
	display: inline-block;
	width: 32%;
	height: 100%;
	float: left;
	margin-left: 17px;
	margin-right: 17px;
}

.home-summary-card-sub3 {
	border: 1px dotted black;
	display: inline-block;
	width: 32%;
	height: 100%;
	float: left;
}

.home-summary-card-sub1-contents, .home-summary-card-sub2-contents,
	.home-summary-card-sub3-contents {
	width: 85%;
	height: 85%;
	margin: 0 auto;
	margin-top: 30px;
	font-size: 16px;
}

.noti-reser-host-resr-wrap {
	width: 100%;
	display: inline-block;
	margin-top: 80px;
}

.notice-reserve {
	display: inline-block;
	float: left;
	width: 60%;
	margin-top: 70px;
}

.host-notice {
	width: 200px;
}

.host-notice a:hover {
	background-color: gray;
}

.host-notice a:link {
	text-decoration: none;
}

.host-notice a:visited {
	text-decoration: none;
}

.host-notice-wrap {
	border: 1px dotted black;
	display: inline-block;
	float: left;
	width: 100%;
	height: 120px;
	width: 100%;
}

.host-notice-wrap:hover {
	background-color: #F2F2F2;
}

.host-notice-wrap-sub {
	width: 85%;
	margin: 0 auto;
	margin-top: 20px;
}

.host-notice-icon {
	width: 50px;
	display: inline-block;
	float: left;
}

.host-notice-content {
	width: 400px;
	display: inline-block;
	float: left;
}

.host-notice-contents {
	width: 400px;
	display: inline-block;
}

.host-notice-date {
	width: 100px;
	display: inline-block;
}

.reserve-wrap {
	margin-top: 30px;
	display: inline-block;
	float: left;
	width: 100%;
}

.reserve-contents {
	border: 1px dotted black;
	width: 100%;
	height: 200px;
}

.hosting-result-wrap {
	display: inline-block;
	width: 37%;
	margin-left: 20px;
	margin-top: 70px;
	float: left;
}

.hosting-result-table {
	margin-top: 20px;
	width: 100%;
}

.hosting-result-table tr, td {
	width: 50%;
	font-size: 18px;
}

.right {
	text-align: right;
}

.hosting-result-line {
	display: inline-block;
	width: 100%;
	border: 0.5px solid #E6E6E6;
	margin-top: 20px;
	margin-bottom: 40px;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

.dropdown-header {
	font-size: 17px;
	color: black;
}

.dd-wrap {
	border: 1px solid black;
	width: 100%;
	height: 100px;
}

.dd-sub-pic {
	border: 1px dotted black;
	width: 35%;
	display: inline-block;
	float: left;
	height: 100%;
}

.dd-pic {
	width:60%;
	height: 60%; 
	position: relative;
	top: 20px; 
	left:25px;
}
.dd-main-pic{
	width:100%;
	height: 100%; 
}

.dd-sub-content {
	border: 1px dotted black;
	width: 65%;
	display: inline-block;
	float: left;
	height: 100%;
}

.dropdown-menu {
	width: 400px;
	height: 250px;
	overflow: scroll;
}
#dropdownMenu1:hover{
	text-decoration: none;
}
</style>

</head>
<body>
<%int cnt=0; %>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div class="alimpan">
			<div class="alimpan-title">  
				<h1>알림판</h1>
			</div>
			<div class="add-homelink">
				<a class="add-homelink-link" href="#">숙소 등록하기</a>
			</div>
		</div>


		<div class="home-summary">
			<div class="home-summary-title-wrap">
				<div class="home-summary-title dropdown">
					<h2>
						<a class="dropdown-toggle" id="dropdownMenu1"
							data-toggle="dropdown" aria-expanded="true"
							style="font-size: 25px;"> 숙소요약 <span
							class="caret"></span>
						</a>
					</h2>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1">
						<c:if test="${homeList ne null }">
							<li role="presentation" class="dropdown-header">숙소를 선택하세요</li>

							<c:forEach var="result" items="${homeList }">
							<%cnt++; %>
								<li role="presentation">
									<div class="dd-wrap">
										<a style="font-size: 17px;" role="menuitem" tabindex="-1" id=summ-link<%=cnt %>
											href="javascript:void(0);">
											<div class="dd-sub-pic">
											<c:if test="${result.home_main_pic ne null }">
												<img class="dd-main-pic img-rounded"
													src="<c:url value='files/${result.home_main_pic }'/>">
											</c:if>
											<c:if test="${result.home_main_pic eq null }">
											<img class="dd-pic img-rounded"
													src="<c:url value='/resources/img/imgadd.png'/>">
											</c:if>
											</div>
											<div class="dd-sub-content">${result.home_name }</div>
										</a>
									</div>
								</li>
								<input type="hidden" name="home_seq" value="${result.home_seq }">

								<script>
								$(document).ready(function(){
									var seq; 
								
									$(document).on('click', '#summ-link<%=cnt%>', function(){
										seq = ${result.home_seq};
										console.log(seq);

										$.ajax({
											url:"summary.do",
											type:"post",
											data:{
												seq:seq
											},
											success:function(resp){
												console.log("성공 : "+resp);
												if(resp.pic == null){
													$(".home-summary-contents-pic").find("img").each(function() {
														console.log("pic"+resp.pic);
														$("#mainpic").attr('src', "<c:url value ='/resources/img/imgadd.png'/>");
													});
												} else {
													$(".home-summary-contents-pic").find("img").each(function() {
														console.log("pic"+ resp.pic);
														$("#mainpic").attr('src',"<c:url value ='files/"+resp.pic+"'/>");
													});
												}
												
													$('#homename').text(resp.name);
													$('#address').text(resp.addr1+ " "+ resp.addr2+ " "+ resp.addr3+ " "
																+ resp.addr4+ " "+ resp.state);
													$('#price').text(resp.price+ "원");
													$('#homename').attr("href",	"hostHomeTab.do?seq="+ resp.seq	+ "");
												},
													
												error : function(data,status) {
													console.log("실패"+ data);
													console.log("실패"+ status);
												}
											});
										})

									})
								</script>

							</c:forEach>

						</c:if>
					</ul>
				</div>
				<span class="home-summary-span">저마다의 호스팅 스타일은 다르지만, 숙소를 부각시킬
					수 있는 몇 가지 팁을 알려드립니다.</span>
			</div>

			<div class="home-summary-contents row">
				<div class="home-summary-contents-pic col-md-6">
					<c:if test="${hdto.home_main_pic eq null}">
						<img id=mainpic class="home-pic-add img-rounded" src="<c:url value='/resources/img/imgadd.png'/>">
					</c:if>
					<c:if test="${hdto.home_main_pic ne null}">
						<img id=mainpic class="home-pic img-rounded" src="<c:url value='files/${hdto.home_main_pic }'/>">
					</c:if>
				</div>
				<div class="home-summary-contents-addr col-md-6">
					<p>
						<a id=homename href="hostHomeTab.do?seq=${hdto.home_seq }">${hdto.home_name }</a>
					</p>
					<p id=address>${hdto.home_addr1},${hdto.home_addr2 },${hdto.home_addr3 },${hdto.home_addr4},${hdto.home_nation }운영중</p>
					<p class="home-summary-contents-price">가격</p>
					<p id=price class="home-summary-contents-price2">${hdto.home_price }<c:if
							test="${hdto.home_currency.equals('KRW')}">&nbsp;원</c:if>
					</p>

					<div class="progress-wrap" style="margin-top: 30px;">
						<span class="home-summary-contents-feel">숙소 호감도</span>
						<!-- 호감도는 숙소 평점별로 나타내기 -->
						<div class="progress" style="width: 50%; height: 10px;">
							<div class="progress-bar" role="progressbar" style="width: 50%"
								aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
				</div>
			</div>

			<div class="home-summary-card">
				<div class="home-summary-card-sub1">
					<div class="home-summary-card-sub1-contents">
						<div>
							<h4>친구와 함께 호스팅하기</h4>
						</div>
						<div>
							신뢰할 수 있는 지인을 공동 호스트로 초대하여 도움을 받으세요.<br>
						</div>
						<div class="home-summary-card-sub1-contents-img" style="width: 100%; height:150px; margin-top: 40px;">
							<img alt="Friend" height="100" width="140"
								src="https://a0.muscache.com/airbnb/static/cohosting/friend-8bb3af2d3a16ce627db9f5e48e982ed6.svg">
						</div>
						<button style="position: relative; top:20px;"
							class="home-summary-card-sub1-contents-btn btn btn-info btn-lg"
							type="button">친구 초대하기</button>
					</div>
				</div>

				<div class="home-summary-card-sub2">
					<div class="home-summary-card-sub2-contents">

						<div>
							<h4>커버 사진 품질 향상</h4>
						</div>
						<span>게스트는 종종 커버 사진을 보고 숙소를 선택합니다. 멋진 사진을 찍는 팁을 확인해 보세요.</span>
						<div style="border: 1px dotted black; width: 100%; height:150px; margin-top: 15px;">  
							<c:if test="${hdto.home_main_pic eq null}"> 
								<img id=mainpic class="img-rounded" style=" width: 100%; height:100%;position: relative; left: 60px;"
									src="<c:url value='/resources/img/imgadd.png'/>">
							</c:if>
							<c:if test="${hdto.home_main_pic ne null}">
								<img class="img-rounded" style="width: 100%; height:100%;"
									src="<c:url value='files/${hdto.home_main_pic }'/>">
							</c:if>
						</div>
						<button type="button" style="position: relative; top:20px;" class="btn btn-info btn-lg" onclick="location.href='hostHomePhotoModifyTab.do?seq=${hdto.home_seq}'" style="position: relative; top: 7px;">커버 사진
							업데이트</button>
					</div>
				</div>

				<div class="home-summary-card-sub3">
					<div class="home-summary-card-sub3-contents">
						<div>
							<h4>상세한 설명 추가</h4>
						</div>
						<div>상세 설명을 추가하면 숙소에 대한 관심도를 높일 수 있습니다.</div>
						<div style="border: 1px dotted black; width: 100%; height:150px; margin-top: 40px;"></div>
						<button type="button" class="btn btn-info btn-lg"
						style="position: relative; top: 20px; "
						onclick="location.href='hostHomeTitleModifyTab.do?seq=${hdto.home_seq}'">세부정보 추가</button>
					</div>
				</div>
			</div>
			<!-- home-summary-card 끝 -->

		</div>
		<!-- home-summary 끝 -->
		<div class="notice-reserve">
			<span class="host-notice"><h2>알림</h2></span>
			<!-- for문써서 알림있으면 가져오기 -->

			<a href="">
				<div class="host-notice-wrap">
					<div class="host-notice-wrap-sub">
						<div class="host-notice-icon">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
						</div>
						<div class="host-notice-contents">
							<div class="host-notice-content">회원님이 촬영하신 본인 사진으로 회원님 본인임을
								확인할 수 없습니다. 본인 확인을 위해 회원님의 다른 사진을 제출해주세요.</div>
							<div class="host-notice-date">날짜</div>
						</div>
					</div>
				</div>
			</a>
			<div class="reserve-wrap">
				<h2>예약</h2>
				<div class="reserve-contents">aa</div>
			</div>
		</div>


		<div class="hosting-result-wrap">
			<span class="hosting-result">
				<h2>호스팅 성과</h2>
			</span>
			<table class="hosting-result-table">
				<tr>
					<td><a href="">8월 수입</a></td>
					<td class="right">0</td>
				</tr>
				<tr>
					<td><a href="">지난 30일간 조회수</a></td>
					<td class="right">0</td>
				</tr>
				<tr>
					<td><a href="">지난 30일간 예약</a></td>
					<td class="right">0</td>
				</tr>
				<tr>
					<td><a href="">전체 평점</a></td>
					<td class="right">후기없음</td>
				</tr>
				<tr>
					<td><a href="">전체 후기 수</a></td>
					<td class="right">0</td>
				</tr>
			</table>
			<div class="hosting-result-line"></div>
		</div>
	</div>

	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>