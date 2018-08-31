<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	border: 1px solid black;
	margin: 10px auto;
	width: 70%;
	height: auto;
}

#wrapper-sub1 {
	width: 70%;
}

#wrapper-sub2 {
	margin-top: 50px;
	border: 1px solid black;
	width: 70%;
	display: inline-block;
	float: left;
}

#wrapper-sub3 {
	border: 1px solid black;
	margin-top: 70px;
	margin-bottom: 50px;
	border: 1px solid black;
	width: 60%;
	display: inline-block;
}

.home-details {
	border: 1px solid black;
	margin-top: 60px;
	width: 50%;
	padding: 0;
	display: inline-block;
	float: left;
}

.home-details div {
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
	font-size: 17px;
	text-align: left;
}

.nav-btn:hover {
	
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

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 20px;
	margin-bottom: 20px;
}

.well {
	font-size: 20px;
}

#gpa-title {
	margin-top: 50px;
	font-size: 25px;
}

.gpa-con {
	width: 75%;
	height: 30px;
	font-size: 18px;
	color: black;
}

.gpa-con a {
	font-size: 18px;
	color: black;
	display: inline-block;
	float: left;
}

.gpa-con span {
	display: inline-block;
	float: right;
	font-size: 18px;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

a:focus {
	text-decoration: none;
}

.star-wrap {
	width: 4%;
	height: 100%;
	display: inline-block;
	float: right;
}

.star-img {
	max-width: 100%;
	max-height: 100%;
}

.num {
	font-size: 18px;
	display: inline-block;
	float: left;
	width: 4%;
	text-align: center;
	margin-top: 5px;
}

.per {
	margin-top: 5px;
	margin-left: 5px;
	font-size: 18px;
	width: 4%;
	display: inline-block;
	float: left;
	font-size: 18px;
}

.star-list-wrap {
	width: 4%;
	height: 4%;
	display: inline-block;
	float: left;
	padding: 0;
	margin-right: 5px;
}

.progress {
	margin-top: 5px;
	height: 30px;
	display: inline-block;
	float: left;
	width: 87%;
}

.star-list {
	max-width: 100%;
	max-height: 100%;
	padding: 0;
	margin: 0;
}

.well {
	width: 75%;
	padding: 0px;
	height: auto;
	display: inline-block;
	float: left;
	border: none;
}

.well-sub {
	width: 100%;
	display: inline-block;
	float: left;
	background-color: white;
}

#review-title {
	font-size: 25px;
}

li {
	float: left;
	list-style: none;
}

.pagination>li>a, .pagination>li>span {
	border-radius: 50% !important;
	margin: 0 5px;
}

#naviPrev, #naviNext {
	border: 1px solid #008489;
	color: #008489;
}

#naviPrev:hover, #naviNext:hover {
	background-color: white !important;
}

.naviPage {
	border: 0px !important;
	color: #008489 !important;
}

.naviPage:hover {
	background-color: white !important;
}

.naviCurrentPage {
	background-color: #008489 !important;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id=wrapper-sub1>
			<div class="home-details" class="row">
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostHomeAchievement.do'">
						<b>평점</b>
					</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostReserveTab.do'">수입</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostHits.do'">조회수</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostReservePossibleTab.do'">발전기회</button>
				</div>
			</div>
		</div>

		<div class=line></div>

		<div id=wrapper-sub2>
			<div>
				<b>숙소 선택</b>
			</div>
			<select class="form-control input-lg"
				onchange="if(this.value) location.href=(this.value);"
				style="width: 70%; display: inline-block; margin-top: 20px;">
				<option value="hostHomeAchievement.do">모든 숙소</option>
				<c:forEach var="hlist" items="${hlist}">
					<option ${param.seq eq hlist.home_seq ? "selected":"" }
						value="hostHomeAchievement.do?seq=${hlist.home_seq}">${hlist.home_name }</option>
				</c:forEach>
			</select>

			<div id=gpa>
				<div style="width: 50%; margin-top: 40px;">
					<div style="display: inline-block; font-size: 35px; width: 30%;">
						<div>
							<div style="width: 70%; display: inline-block; float: left;">
								<b>${allTotal }</b>
							</div>
							<div style="width: 30%; display: inline-block;">
								<img style="max-width: 100%; display: inline-block;"
									src="<c:url value='/resources/img/star.png'/>">
							</div>
						</div>
						<div style="font-size: 17px;">전체 평점</div>
					</div>
					<div
						style="margin-left: 40px; display: inline-block; font-size: 35px; width: 25%;">
						<b>${cnt }</b><br>
						<div style="font-size: 17px;">총 후기 수</div>
					</div>
				</div>
				<div id=gpa-title>
					<b>평점(${cnt }개)</b>
				</div>
				<div class=line></div>

				<a data-toggle=collapse href=#collapseExample1 aria-expanded="false"
					aria-controls="collapseExample">
					<div class=gpa-con>
						전체적 만족도
						<div class=star-wrap>
							<img class="star-img"
								src="<c:url value='/resources/img/star.png'/>">
						</div>
						<span>${avg1 }</span>
					</div>
				</a>
				<div class=collapse id=collapseExample1>
					<div class=well>
						<c:forEach var="list" items="${satList }">
							<fmt:parseNumber var="test" value="${(list.count/cnt)*100}"
								integerOnly="true" />
							<div class=well-sub>
								<div class=num>${list.g_review_satisfaction }</div>
								<div class=star-list-wrap>
									<img class="star-list"
										src="<c:url value='/resources/img/star.png'/>">
								</div>
								<div class="progress" style="width: 50%;">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
										style="width: ${(list.count/cnt)*100}%;"></div>
								</div>
								<div class=per>${test}%</div>
							</div>
						</c:forEach>

					</div>
				</div>



				<div class=line></div>

				<a data-toggle=collapse href=#collapseExample2 aria-expanded="false"
					aria-controls="collapseExample">
					<div class=gpa-con>
						정확성
						<div class=star-wrap>
							<img class="star-img"
								src="<c:url value='/resources/img/star.png'/>">
						</div>
						<span>${avg2}</span>
					</div>
				</a>
				<div class=collapse id=collapseExample2>
					<div class=well>
						<c:forEach var="list" items="${accList }">
							<fmt:parseNumber var="test" value="${(list.count/cnt)*100}"
								integerOnly="true" />
							<div class=well-sub>
								<div class=num>${list.g_review_accuracy }</div>
								<div class=star-list-wrap>
									<img class="star-list"
										src="<c:url value='/resources/img/star.png'/>">
								</div>
								<div class="progress" style="width: 50%;">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
										style="width: ${(list.count/cnt)*100}%;"></div>
								</div>
								<div class=per>${test}%</div>
							</div>
						</c:forEach>

					</div>
				</div>



				<div class=line></div>


				<a data-toggle=collapse href=#collapseExample3 aria-expanded="false"
					aria-controls="collapseExample">
					<div class=gpa-con>
						청결도
						<div class=star-wrap>
							<img class="star-img"
								src="<c:url value='/resources/img/star.png'/>">
						</div>
						<span>${avg3 }</span>
					</div>
				</a>
				<div class=collapse id=collapseExample3>
					<div class=well>
						<c:forEach var="list" items="${cleanList }">
							<fmt:parseNumber var="test" value="${(list.count/cnt)*100}"
								integerOnly="true" />
							<div class=well-sub>
								<div class=num>${list.g_review_cleanliness}</div>
								<div class=star-list-wrap>
									<img class="star-list"
										src="<c:url value='/resources/img/star.png'/>">
								</div>
								<div class="progress" style="width: 50%;">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
										style="width: ${(list.count/cnt)*100}%;"></div>
								</div>
								<div class=per>${test}%</div>
							</div>
						</c:forEach>

					</div>
				</div>



				<div class=line></div>


				<a data-toggle=collapse href=#collapseExample4 aria-expanded="false"
					aria-controls="collapseExample">
					<div class=gpa-con>
						의사소통
						<div class=star-wrap>
							<img class="star-img"
								src="<c:url value='/resources/img/star.png'/>">
						</div>
						<span>${avg4 }</span>
					</div>
				</a>
				<div class=collapse id=collapseExample4>
					<div class=well>
						<c:forEach var="list" items="${checkList }">
							<fmt:parseNumber var="test" value="${(list.count/cnt)*100}"
								integerOnly="true" />
							<div class=well-sub>
								<div class=num>${list.g_review_checkIn}</div>
								<div class=star-list-wrap>
									<img class="star-list"
										src="<c:url value='/resources/img/star.png'/>">
								</div>
								<div class="progress" style="width: 50%;">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
										style="width:${(list.count/cnt)*100}%;"></div>
								</div>
								<div class=per>${test}%</div>
							</div>
						</c:forEach>

					</div>
				</div>



				<div class=line></div>

				<a data-toggle=collapse href=#collapseExample5 aria-expanded="false"
					aria-controls="collapseExample">
					<div class=gpa-con>
						체크인
						<div class=star-wrap>
							<img class="star-img"
								src="<c:url value='/resources/img/star.png'/>">
						</div>
						<span>${avg5 }</span>
					</div>
				</a>
				<div class=collapse id=collapseExample5>
					<div class=well>
						<c:forEach var="list" items="${ameniList }">
							<fmt:parseNumber var="test" value="${(list.count/cnt)*100}"
								integerOnly="true" />
							<div class=well-sub>
								<div class=num>${list.g_review_amenities}</div>
								<div class=star-list-wrap>
									<img class="star-list"
										src="<c:url value='/resources/img/star.png'/>">
								</div>
								<div class="progress" style="width: 50%;">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
										style="width: ${(list.count/cnt)*100}%;"></div>
								</div>
								<div class=per>${test }%</div>
							</div>
						</c:forEach>

					</div>
				</div>



				<div class=line></div>


				<a data-toggle=collapse href=#collapseExample6 aria-expanded="false"
					aria-controls="collapseExample">
					<div class=gpa-con>
						의사소통
						<div class=star-wrap>
							<img class="star-img"
								src="<c:url value='/resources/img/star.png'/>">
						</div>
						<span>${avg6 }</span>
					</div>
				</a>
				<div class=collapse id=collapseExample6>
					<div class=well>
						<c:forEach var="list" items="${commList }">
							<fmt:parseNumber var="test" value="${(list.count/cnt)*100}"
								integerOnly="true" />
							<div class=well-sub>
								<div class=num>${list.g_review_communication}</div>
								<div class=star-list-wrap>
									<img class="star-list"
										src="<c:url value='/resources/img/star.png'/>">
								</div>
								<div class="progress" style="width: 50%;">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
										style="width: ${(list.count/cnt)*100}%;"></div>
								</div>
								<div class=per>${test }%</div>
							</div>
						</c:forEach>

					</div>
				</div>


				<div class=line></div>


				<a data-toggle=collapse href=#collapseExample7 aria-expanded="false"
					aria-controls="collapseExample">
					<div class=gpa-con>
						위치
						<div class=star-wrap>
							<img class="star-img"
								src="<c:url value='/resources/img/star.png'/>">
						</div>
						<span>${avg7 }</span>
					</div>
				</a>
				<div class=collapse id=collapseExample7>
					<div class=well>
						<c:forEach var="list" items="${locList }">
							<fmt:parseNumber var="test" value="${(list.count/cnt)*100}"
								integerOnly="true" />
							<div class=well-sub>
								<div class=num>${list.g_review_location}</div>
								<div class=star-list-wrap>
									<img class="star-list"
										src="<c:url value='/resources/img/star.png'/>">
								</div>
								<div class="progress" style="width: 50%;">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
										style="width: ${(list.count/cnt)*100}%;"></div>
								</div>
								<div class=per>${test }%</div>
							</div>
						</c:forEach>

					</div>
				</div>


				<div class=line></div>


				<a data-toggle=collapse href=#collapseExample8 aria-expanded="false"
					aria-controls="collapseExample">
					<div class=gpa-con>
						가치
						<div class=star-wrap>
							<img class="star-img"
								src="<c:url value='/resources/img/star.png'/>">
						</div>
						<span>${avg8 }</span>
					</div>
				</a>
				<div class=collapse id=collapseExample8>
					<div class=well>
						<c:forEach var="list" items="${valList }">
							<fmt:parseNumber var="test" value="${(list.count/cnt)*100}"
								integerOnly="true" />
							<div class=well-sub>
								<div class=num>${list.g_review_value}</div>
								<div class=star-list-wrap>
									<img class="star-list"
										src="<c:url value='/resources/img/star.png'/>">
								</div>
								<div class="progress" style="width: 50%;">
									<div class="progress-bar" role="progressbar"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
										style="width: ${(list.count/cnt)*100}%;"></div>
								</div>
								<div class=per>${test}%</div>
							</div>
						</c:forEach>

					</div>
				</div>


			</div>
		</div>

		<div id=wrapper-sub3>
			<div>
				<div id=review-title>
					<b>후기(${cnt }개)</b>
				</div>
				<div class=line></div>
				<!-- 				<div style="font-size: 17px;"> -->
				<!-- 					<b>전체 평점으로 필터링</b> -->
				<!-- 				</div> -->
				<!-- 				<select id=sel-review name=gpa class="form-control input-lg"> -->
				<!-- 					<option value=all selected="selected">평점이 있는 숙소</option> -->
				<!-- 					<option value=5>별 5개</option> -->
				<!-- 					<option value=4>별 4개</option> -->
				<!-- 					<option value=3>별 3개</option> -->
				<!-- 					<option value=2>별 2개</option> -->
				<!-- 					<option value=1>별 1개</option> -->
				<!-- 				</select> -->
			</div>
			<%
				int c_cnt = 15;
			%>
			<c:forEach var="list" items="${listGR }">
				<%
					c_cnt += 1;
				%>
				<div>
					<div style="width: 100%; height: 100px;">
						<div class="img-circle"
							style="width: 13%; display: inline-block; float: left;">
							<img class="img-circle"
								style="max-width: 100%; max-height: 100%;"
								src="<c:url value='/resources/img/${list.member_picture }'/>">
							<!-- 조인해서 member_picture가져오기 -->
						</div>
						<div
							style="width: 85%; height: 100%; display: inline-block; margin-left: 10px;">
							<div>
								<b>${list.member_email }</b>
							</div>
							<div>guest_review테이블의 member_email을 통해 결제테이블에서 결제 내역을 가져와
								날짜, 가격, host_name값 가져오기</div>
						</div>
					</div>

					<div
						style="margin-bottom: 20px; display: inline-block; width: 100%; font-size: 16px;">
						<b>공개 피드백</b>
					</div>
					<div style="margin-bottom: 10px; font-size: 15px;">${list.g_review_public }</div>
					<div style="margin-bottom: 10px;">
						날짜 : ${list.g_review_date }<a data-toggle=collapse
							href="#collapseExample<%=c_cnt%>" aria-expanded="false"
							aria-controls="collapseExample"><span
							style="float: right; font-size: 16px;">세부정보 더 보기</span></a>
					</div>
					<div class=line></div>
					<div class=collapse id="collapseExample<%=c_cnt%>">
						<div class=well style="width: 100%; height: auto;">
							<div style="width: 100%; height: auto; background-color: white;">
								<div style="font-size: 16px;">
									<b>공개 답글</b>
								</div>
								<div style="font-size: 15px;">${list.h_review_public }</div>
								<div style="font-size: 16px; margin-top: 10px;">
									<b>비공개 피드백</b>
								</div>
								<div style="font-size: 15px;">${list.g_review_private }</div>
								<div class=line></div>
							</div>
						</div>
					</div>


				</div>
			</c:forEach>

			<div style="text-align: center;">
				<ul class="pagination">${paging }
				</ul>
			</div>

		</div>
	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>