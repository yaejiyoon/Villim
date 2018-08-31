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
	height: auto;
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
	left: 46px;
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
	text-decoration: none;
}

.host-notice a:link {
	text-decoration: none;
}

.host-notice a:visited {
	text-decoration: none;
}

.host-notice-wrap {
	display: inline-block;
	width: 100%;
	height: 120px;
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
	width: 100%;
	height: auto;
}

.reserve-contents {
	width: 100%;
	height: 120px;
}

.hosting-result-wrap {
	display: inline-block;
	width: 37%;
	height: 500px;
	margin-left: 20px;
	margin-top: 70px;
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
	width: 100%;
	height: 100px;
}

.dd-sub-pic {
	width: 35%;
	display: inline-block;
	float: left;
	height: 100%;
}

.dd-pic {
	width: 80%;
	position: relative;
	top: 3px;
	left: 11px;
}

.dd-main-pic {
	width: 100%;
	height: 100%;
}

.dd-sub-content {
	width: 65%;
	display: inline-block;
	float: left;
	height: 100%;
	padding-left: 15px;
	padding-top: 15px;
}

.dropdown-menu {
	width: 350px;
	height: 300px;
}

#dropdownMenu1:hover {
	text-decoration: none;
}

.btn {
	background-color: #008489;
	color: white;
}

#bottom-wrap {
	display: inline-block;
	width: 100%;
	border: 1px solid black;
	margin-bottom: 30px;
	margin-top: 40px;
	margin-bottom: 30px;
}

.alim-link:hover {
	background-color: #E6E6E6;
}

#cover-add-wrap {
	margin: 0 auto;
	width: 50%;
}

#cover-add {
	width: 100%;
}

.left {
	width: 35%;
	display: inline-block;
	float: left;
}

.right {
	width: 64%;
	height: 13px; 
	float: right;
	display: inline-block;
}

.lrwrap{
width:100%;
border: 1px dotted orange;
	display: inline-block;
}
</style>

</head>
<body>
	<%
		int cnt = 0;
	%>
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
							style="font-size: 25px; color: black;">숙소요약<span
							style="font-size: 20px;" class="caret"></span>
						</a>
					</h2>
					<ul class="dropdown-menu" role="menu"
						aria-labelledby="dropdownMenu1" style="overflow: scroll;">
						<c:if test="${homeList ne null }">
							<li role="presentation" class="dropdown-header">숙소를 선택하세요</li>

							<c:forEach var="result" items="${homeList }">
								<%
									cnt++;
								%>
								<li role="presentation">
									<div class="dd-wrap">
										<a style="font-size: 17px;" role="menuitem" tabindex="-1"
											id="summ-link<%=cnt%>" href="javascript:void(0);">
											<div class="dd-sub-pic">
												<c:if test="${result.home_main_pic ne null }">
													<img class="dd-main-pic img-rounded"
														src="<c:url value='files/${result.home_main_pic }'/>">
												</c:if>
												<c:if test="${result.home_main_pic eq null }">
													<img class="dd-pic img-rounded"
														src="<c:url value='/resources/img/photo.png'/>">
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
									
										$('#summ-link<%=cnt%>').click(function(){
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
												$("#hp-number").text("${hpsize}/19");
												if(resp.hdto.home_main_pic == null){
													$(".home-summary-contents-pic").find("img").each(function() {
														console.log("pic"+resp.pic);
														$("#mainpic").attr('src', "<c:url value ='/resources/img/photo.png'/>");
													});
													
													$("#cover-wrap").find('img').each(function(){
														$("#cover").attr("src", "<c:url value='/resources/img/photo.png'/>");
													})
													$("#cover-wrap").attr("id", "cover-wrap");
													
												} else {
													$(".home-summary-contents-pic").find("img").each(function() {
														console.log("pic"+ resp.hdto.home_main_pic);
														$("#mainpic").attr('src',"<c:url value ='files/"+resp.hdto.home_main_pic+"'/>");
													});
													
													$("#cover-wrap").find('img').each(function(){
														$("#cover").attr("src", "<c:url value='files/"+resp.hdto.home_main_pic+"'/>");
													})
													
												}
													$('#homename').text(resp.hdto.home_name);
													$('#address').text(resp.hdto.home_addr1+ " "+ resp.hdto.home_addr2+ " "+ resp.hdto.home_addr3+ " "
																+ resp.hdto.home_addr4+ " "+ resp.hdto.home_state);
													$('#price').text(resp.hdto.home_price+ "원");
													$('#homename').attr("href",	"hostHomeTab.do?seq="+ resp.hdto.home_seq+ "");
// 													$('#cover').attr("src", "<c:url value='files/"+resp.hdto.home_main_pic+"'/>");
													$('#coverbtn').attr("onclick", "location.href='hostHomePhotoModifyTab.do?seq="+resp.hdto.home_seq+"'")
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
						<img id=mainpic class="home-pic-add img-rounded"
							src="<c:url value='/resources/img/photo.png'/>">
					</c:if>
					<c:if test="${hdto.home_main_pic ne null}">
						<img id=mainpic class="home-pic img-rounded"
							src="<c:url value='files/${hdto.home_main_pic }'/>">
					</c:if>
				</div>
				<div class="home-summary-contents-addr col-md-6">
					<p>
						<a id=homename href="hostHomeTab.do?seq=${hdto.home_seq }"
							style="color: black;">${hdto.home_name }</a>
					</p>
					<p id=address>${hdto.home_addr1},${hdto.home_addr2 },${hdto.home_addr3 },${hdto.home_addr4},${hdto.home_nation }운영중</p>
					<p class="home-summary-contents-price">가격</p>
					<p id=price class="home-summary-contents-price2">${hdto.home_price }
						<c:if test="${hdto.home_currency.equals('KRW')}">&nbsp;원</c:if>
					</p>

					<div class="progress-wrap" style="margin-top: 30px;">
						<span class="home-summary-contents-feel">숙소 호감도</span>


						<div class="dropdown" style="display: inline-block;">
							<a class="dropdown-toggle" id="dropdownMenu1"
								data-toggle="dropdown" aria-expanded="true"
								style="font-size: 25px; color: black;"> <span
								class="glyphicon glyphicon-question-sign"></span>
							</a>
							<ul class="dropdown-menu" role="menu" style="padding: 25px;"
								aria-labelledby="dropdownMenu1">
								<li role="presentation" class="dropdown-header"><b>숙소
										호감도</b></li>
								<li>숙소 호감도는 주변의 인기 숙소에 비해 회원님의 숙소가 게스트에게 얼마나 부각되는지를 판단합니다.</li>
								<br>
								<li><div class="lrwrap">
										<span class="left"><b>달력</b></span><span class="right">예약
											가능</span>
									</div></li>
								<li><div class="lrwrap">
										<div class="left"><b>가격</b></div><div class="right">
											<div class="progress">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
													style="width: 50%; height: 15px;">
													<span class="sr-only">60% Complete</span>
												</div>
											</div>
									</div></li>
								<li><div class="lrwrap">
										<div class="left">
											<b>사진</b>
										</div>
										<div class="right">
											<div class="progress" style="width: 100%; height: 15px;">
												<div class="progress-bar" role="progressbar"
													aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
													style="width: 80%;">
													<span class="sr-only">60% Complete</span>
												</div>
											</div>
										</div>
									</div></li>
								<li><div class="lrwrap">
										<span class="left"><b>숙소 세부정보</b></span><span class="right">
											<div class="progress-bar" role="progressbar"
												aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
												style="width: 50%; height: 15px;">
												<span class="sr-only">60% Complete</span>
											</div>
										</span>
									</div></li>
							</ul>
						</div>

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
						<div class="home-summary-card-sub1-contents-img"
							style="width: 100%; height: 150px; margin-top: 40px; text-align: center;">
							<img alt="Friend" max-width="100%;"
								src="https://a0.muscache.com/airbnb/static/cohosting/friend-8bb3af2d3a16ce627db9f5e48e982ed6.svg">
						</div>
						<button style="position: relative; top: 20px;"
							class="home-summary-card-sub1-contents-btn btn btn-lg"
							type="button">친구 초대하기</button>
					</div>
				</div>

				<div class="home-summary-card-sub2">
					<div class="home-summary-card-sub2-contents">
						<div>
							<h4>커버 사진 품질 향상</h4>
						</div>
						<span>게스트는 종종 커버 사진을 보고 숙소를 선택합니다. 멋진 사진을 찍는 팁을 확인해 보세요.</span>
						<div id=cover-wrap class="img-rounded"
							style="width: 100%; height: 150px; margin-top: 15px;">
							<c:if test="${hdto.home_main_pic eq null}">
								<div id=cover-add-wrap>
									<img id=cover-add class="img-rounded"
										src="<c:url value='/resources/img/photo.png'/>">
								</div>
							</c:if>
							<c:if test="${hdto.home_main_pic ne null}">
								<img id="cover" class="img-rounded"
									style="width: 100%; height: 100%;"
									src="<c:url value='files/${hdto.home_main_pic }'/>">
							</c:if>
						</div>
						<button type="button" id="coverbtn"
							style="position: relative; top: 20px;" class="btn btn-lg"
							onclick="location.href='hostHomePhotoModifyTab.do?seq=${hdto.home_seq}'"
							style="position: relative; top: 7px;">커버 사진 업데이트</button>
					</div>
				</div>

				<div class="home-summary-card-sub3">
					<div class="home-summary-card-sub3-contents">
						<div>
							<h4>상세한 설명 추가</h4>
						</div>
						<div>상세 설명을 추가하면 숙소에 대한 관심도를 높일 수 있습니다.</div>
						<div class="img-rounded"
							style="border: 1px dotted black; width: 100%; height: 150px; margin-top: 38px;"></div>
						<button type="button" class="btn btn-lg"
							style="position: relative; top: 20px;"
							onclick="location.href='hostHomeTitleModifyTab.do?seq=${hdto.home_seq}'">세부정보
							추가</button>
					</div>
				</div>

				<a data-toggle="collapse" href="#collapseExample1"
					aria-expanded="false" aria-controls="collapseExample"
					style="font-size: 18px;">더 보기</a>
				<div class=collapse id="collapseExample1">
					<div class=well
						style="display: inline-block; float: left; width: 100%; height: 390px; padding: 0; border: none;">

						<div style="background-color: white; width: 100%; height: 390px;">
							<div class="home-summary-card-sub3">
								<div class="home-summary-card-sub3-contents">
									<div>
										<h4>사진 추가</h4>
									</div>
									<div>회원님의 숙소 사진은 5장입니다. 일반적으로 숙소 사진이 19장 이상일 경우 더 많은 예약을
										받습니다.</div>
									<div id="hp-number" class="img-rounded"
										style="border: 1px dotted black; width: 100%; height: 150px; text-align: center; padding-top: 35px; margin-top: 38px; font-size: 40px;">
										<c:if test="${hdto.home_main_pic ne null}">
											${hpsize+1} / 19
									</div>
									</c:if>
									<c:if test="${hdto.home_main_pic eq null}">
											${hpsize} / 19
								</div>
								</c:if>
								<button type="button" class="btn btn-lg"
									style="position: relative; top: 20px;"
									onclick="location.href='hostHomeTitleModifyTab.do?seq=${hdto.home_seq}'">세부정보
									추가</button>
							</div>
						</div>
					</div>
				</div>
			</div>



		</div>
		<!-- home-summary-card 끝 -->

	</div>
	<!-- home-summary 끝 -->



	<div id="bottom-wrap">
		<div class="notice-reserve">
			<span class="host-notice"><h2>알림</h2></span>
			<div style="width: 100%; height: auto;">
				<%-- 					<c:forEach var="rlist" items="${rlist }"> --%>
				<%-- 						<c:if test="${rlist.reserv_state == 0 }"> --%>
				<%-- 							<c:if test="${rlist.home_seq == hdto.home_seq }"> --%>
				<!-- 								<div class="host-notice-wrap" style="border: 1px solid #E6E6E6;"> -->
				<!-- 									<a href="#" -->
				<!-- 										style="display: inline-block; width: 100%; height: 100%;"> -->
				<!-- 										<div style="width: 80%; float: left; padding: 20px;"> -->
				<!-- 											<div style="font-size: 17px; color: #FF8000;"> -->
				<%-- 												<b>요청 · ${rlist.member_name }</b> --%>
				<!-- 											</div> -->
				<!-- 											<div style="font-size: 15px; color: black;">숙박 인원 -->
				<%-- 												${rlist.home_people }명 · ${rlist.reserv_checkin } - --%>
				<%-- 												${rlist.reserv_checkout }</div> --%>
				<%-- 											<div style="font-size: 15px; color: black;">${rlist.home_name }</div> --%>
				<!-- 										</div> -->
				<!-- 										<div style="width: 20%; float: right;"> -->
				<!-- 											<img style="width: 9vh; margin-top: 15px; margin-left: 15px;" -->
				<!-- 												class="img-circle" -->
				<%-- 												src="<c:url value='/resources/img/${rlist.member_picture }'/>"> --%>
				<!-- 										</div> -->
				<!-- 									</a> -->
				<!-- 								</div> -->
				<%-- 							</c:if> --%>
				<%-- 						</c:if> --%>
				<%-- 					</c:forEach> --%>
				<%
					int ncnt = 30;
					int mcnt = 300;
				%>
				<c:forEach var="mlist" items="${mlist }" begin="0" end="2">
					<%
						ncnt++;
					%>
					<div id="coll<%=ncnt%>" class="host-notice-wrap"
						style="border: 1px solid #E6E6E6; height: auto;">
						<a class="alim-link" data-toggle=collapse
							href="#collapseExample<%=ncnt%>"
							style="width: 100%; height: 100%; display: inline-block;"
							aria-expanded="false" aria-controls="collapseExample">
							<div style="width: 80%; float: left; padding: 20px;">
								<div style="font-size: 17px; color: #FF8000;">
									<b>문의 · ${mlist.member_name }</b>
								</div>
								<div style="font-size: 15px; color: black;">${mlist.home_name }</div>
							</div>
							<div style="width: 20%; float: right;">
								<img style="width: 8vh; margin-top: 15px; margin-left: 15px;"
									class="img-circle"
									src="<c:url value='/resources/img/${mlist.member_picture }'/>">
							</div>

							<div class=collapse id="collapseExample<%=ncnt%>"
								style="width: 100%; height: 170px;">
								<div class=well
									style="width: 100%; height: 170px; border-color: white; display: inline-block; padding: 0;">
									<div class="well-sub"
										style="width: 100%; height: 100%; background-color: white; display: inline-block;">
										<div
											style="padding-left: 20px; font-size: 16px; color: black;">
											"${mlist.message_content}"</div>
										<div
											style="padding-left: 20px; font-size: 15px; margin-top: 30px;">
											<button type="button" class="btn btn-lg">사전승인</button>
											<button type="button" class="btn btn-lg">거절</button>
										</div>
									</div>
								</div>
							</div>

						</a>
					</div>
					<script>
							$("#collapseExample<%=ncnt%>").click(function() {
								$(this).css('background-color', 'white');
						})
					</script>
				</c:forEach>
			</div>
			<c:if test="${mlist.size()>3 }">
				<div>
					<a href="#" data-toggle="modal" data-target="#myModal2">더 보기</a>
				</div>
			</c:if>


			<!-- Modal -->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">알림 목록</h4>
						</div>
						<div class="modal-body">


							<c:forEach var="mlist" items="${mlist }" begin="0" end="2">
								<%
									mcnt++;
								%>
								<div id="coll<%=mcnt%>" class="host-notice-wrap"
									style="border: 1px solid #E6E6E6; height: auto;">
									<a class="alim-link" data-toggle=collapse
										href="#collapseExample<%=mcnt%>"
										style="width: 100%; height: 100%; display: inline-block;"
										aria-expanded="false" aria-controls="collapseExample">
										<div style="width: 80%; float: left; padding: 20px;">
											<div style="font-size: 17px; color: #FF8000;">
												<b>문의 · ${mlist.member_name }</b>
											</div>
											<div style="font-size: 15px; color: black;">${mlist.home_name }</div>
										</div>
										<div style="width: 20%; float: right;">
											<img style="width: 8vh; margin-top: 15px; margin-left: 15px;"
												class="img-circle"
												src="<c:url value='/resources/img/${mlist.member_picture }'/>">
										</div>


										<div class=collapse id="collapseExample<%=mcnt%>"
											style="width: 100%; height: 170px;">
											<div class=well
												style="width: 100%; height: 170px; border-color: white; display: inline-block; padding: 0;">
												<div class="well-sub"
													style="width: 100%; height: 100%; background-color: white; display: inline-block;">
													<div
														style="padding-left: 20px; font-size: 16px; color: black;">
														"${mlist.message_content}"</div>
													<div
														style="padding-left: 20px; font-size: 15px; margin-top: 30px;">
														<button type="button" class="btn btn-lg">사전승인</button>
														<button type="button" class="btn btn-lg">거절</button>
													</div>
												</div>
											</div>
										</div>

									</a>
								</div>
							</c:forEach>


						</div>
						<div class="modal-footer">
							<button type="button" class="btn" data-dismiss="modal">Close</button>
							<!-- 							<button type="button" class="btn btn-primary">Save -->
							<!-- 								changes</button> -->
						</div>
					</div>
				</div>
			</div>



			<div class="reserve-wrap">
				<h2>예약</h2>
				<div class="reserve-contents">
					<c:if test="${rlist2.size() != 0 }">
						<c:forEach var="rlist2" items="${rlist2 }" begin="0" end="2">
							<a href="#"
								style="display: inline-block; width: 100%; height: 100%; border: 1px solid #E6E6E6;">
								<div style="width: 80%; float: left; padding: 20px;">
									<div style="font-size: 17px; color: #FF8000;">
										<b>요청 · ${rlist2.member_name }</b>
									</div>
									<div style="font-size: 15px; color: black;">숙박 인원
										${rlist2.home_people }명 · ${rlist2.reserv_checkin } -
										${rlist2.reserv_checkout }</div>
									<div style="font-size: 15px; color: black;">${rlist2.home_name }</div>
								</div>
								<div style="width: 20%; float: right;">
									<img style="width: 9vh; margin-top: 15px; margin-left: 15px;"
										class="img-circle"
										src="<c:url value='/resources/img/${rlist2.member_picture }'/>">
								</div>
							</a>
						</c:forEach>
					</c:if>
					<c:if test="${rlist2.size() == 0 }">
						<div
							style="width: 30%; margin: 0 auto; text-align: center; margin-top: 50px;">
							<img src="<c:url value='/resources/img/calendar.png'/>"
								style="width: 10vh;">
							<div>예정된 예약이 없습니다.</div>
						</div>
					</c:if>
				</div>
			</div>
			<c:if test="${rlist2.size()>3 }">
				<div>
					<a href="#" data-toggle="modal" data-target="#myModal">더 보기</a>
				</div>
			</c:if>
		</div>


		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">다가올 예약 목록</h4>
					</div>
					<div class="modal-body">
						<c:forEach var="rlist2" items="${rlist2 }">
							<a href="#"
								style="display: inline-block; width: 100%; height: 100%; border: 1px solid #E6E6E6;">
								<div style="width: 80%; float: left; padding: 20px;">
									<div style="font-size: 17px; color: #FF8000;">
										<b>요청 · ${rlist2.member_name }</b>
									</div>
									<div style="font-size: 15px; color: black;">숙박 인원
										${rlist2.home_people }명 · ${rlist2.reserv_checkin } -
										${rlist2.reserv_checkout }</div>
									<div style="font-size: 15px; color: black;">${rlist2.home_name }</div>
								</div>
								<div style="width: 20%; float: right;">
									<img style="width: 9vh; margin-top: 15px; margin-left: 15px;"
										class="img-circle"
										src="<c:url value='/resources/img/${rlist2.member_picture }'/>">
								</div>
							</a>
						</c:forEach>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn" data-dismiss="modal">Close</button>
						<!-- 							<button type="button" class="btn btn-primary">Save -->
						<!-- 								changes</button> -->
					</div>
				</div>
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
					<td><a href="">8월 조회수</a></td>
					<td class="right">0</td>
				</tr>
				<tr>
					<td><a href="">8월 예약</a></td>
					<td class="right">0</td>
				</tr>
				<tr>
					<td><a href="">전체 평점</a></td>
					<td class="right">후기없음</td>
				</tr>
				<tr>
					<td><a href="">전체 후기 수</a></td>
					<td class="right">${cnt}</td>
				</tr>
			</table>
			<div class="hosting-result-line"></div>
		</div>



	</div>

	</div>

	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>