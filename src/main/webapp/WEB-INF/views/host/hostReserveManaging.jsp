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
#wrapper {
	margin: 30px auto;
	margin-top: 50px;
	margin-bottom: 100px;
	height: auto;
	width: 100%;
}
body{
min-width:1280px;
}
#wrapper-sub {
	width: 70%;
}

#left-sub div a {
	color: #A4A4A4;
	font-size: 16px;
}

#left-sub div a:hover {
	text-decoration: none;
	color: #E6E6E6;
}

#center {
	float: left;
	display: inline-block;
}

#left {
	display: inline-block;
	float: left;
}

#right {
	display: inline-block;
	float: right;
	padding-right: 0;
}

#r-sub {
	border: 1px solid #BDBDBD;
	width: 100%;
	height: 100%;
}

#r-title {
	height: 65px;
	background-color: #F2F2F2;
	font-size: 17px;
	position: relative;
	padding-top: 20px;
	padding-left: 20px;
}

#r-contents {
	margin: 0 auto;
	width: 95%;
	padding-top: 20px;
}

.member-img {
	width: 65px;
}
</style>
<title>다가올 숙소 예약</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/htitle.png'/>" />
</head>
<body>
	<%
		int cnt = 0;
	%>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id=wrapper>
		<div id=wrapper-sub class=container>
			<div id=left class="col-md-3">
				<div id=left-sub>
					<div style="margin-bottom: 10px;">
						<a href="hostHomeList.do">숙소 목록</a>
					</div>
					<div>
						<a href="hostReserveAllManaging.do" style="color: black"><b>예약
								관리</b></a>
					</div>
				</div>
			</div>

			<div id=right class="col-md-9">
				<div id=r-sub>
					<div id=r-title>다가올 예약</div>
					<div id=r-contents>
						<table class="table">
							<tr>
								<th>상태</th>
								<th>날짜와 위치</th>
								<th>인원</th>
								<th>내용</th>
							</tr>
							<c:if test="${rlist eq null }">
								<tr>다가올 예약이 없습니다.
								</tr>
							</c:if>
							<c:if test="${rlist ne null }">
								<c:forEach var="rlist" items="${rlist }">
									<%
										cnt++;
									%>
									<c:if test="${rlist.reserv_state == 0 }">
										<tr>
											<td>
												<div style="margin-bottom: 10px;color: #008489;"><b>대기 중</b></div>
												<div>
													<button type="button" class="btn btn-sm"
														style="background-color: #ff5a5f; color: white;">지금
														답장하기</button>
												</div>
												<div>
													<span id="time-hour<%=cnt%>"></span><span>시</span> <span
														id="time-min<%=cnt%>"></span><span>분</span> <span
														id="time-sec<%=cnt%>"></span><span>초</span>
												</div>
											</td>
											<td>
												<div>${rlist.reserv_checkin }-${rlist.reserv_checkout }</div>

												<!-- 숙소 링크 걸기 -->
												<div>
													<a href="#">${rlist.home_name }</a>
												</div>

												<div>${rlist.home_addr1 }${rlist.home_addr2 }${rlist.home_addr3 }${rlist.home_addr4 }
													${rlist.home_zipcode }</div>
											</td>
											<td><p>
													<img class="member-img img-circle"
														src="<c:url value='/resources/img/1.jpg'/>">
												</p>
												<p>${rlist.member_name }</p></td>
											<td>
												<div>합계 ₩${rlist.totalAmount }</div> <!-- 메시지 링크 걸기 -->
												<div>
													<a href="#">메시지 기록</a>
												</div>
											</td>
										</tr>
										<script>
										
// 										window.onbeforeunload = function() {
// 											$.ajax({
// 												url:"savetime.do",
// 												type:'post',
// 												data:{
// 													seq:${rlist.reservation_seq}
// 												},
// 												success:function(resp){
// 													console.log("성공::"+resp);
// 												}
// 											});
// 										};
										
										var date<%=cnt%> = new Date('${rlist.reserv_waitdate}');
										var time<%=cnt%> = date<%=cnt%>.getTime();
										function remain<%=cnt%>(){
										        var now = new Date();

										        var gap = Math.round((time<%=cnt%> - now.getTime() ) / 1000);
										        var D = Math.floor(gap / 86400);
										        var H = Math.floor((gap- D * 86400) / 3600 % 3600);
										        var M = Math.floor((gap - H * 3600) / 60 % 60);
										        var S = Math.floor((gap- M * 60) % 60);
										        
										        if(gap <= 0){
										        	$.ajax({
										        		url:"modifyReservState.do",
										        		type:"post",
										        		data:{
										        			seq:${rlist.reservation_seq}
										        		},success:function(resp){
										        			console.log("성공::"+resp);
										        			location.reload();
										        		}
										        		
										        	});
										        }
										 		
										        $('#time-day<%=cnt%>').text(D);
										    	$('#time-hour<%=cnt%>').text(H);
												$('#time-min<%=cnt%>').text(M);
												$('#time-sec<%=cnt%>').text(S);
										        
										}
										remain<%=cnt%>();
										setInterval(remain<%=cnt%>,1000);
											
										</script>
									</c:if>
								</c:forEach>
							</c:if>

						</table>
						<div
							style="border-top: 1px solid #BDBDBD; height: 60px; padding-top: 20px;">
							<a href="hostReserveAllManaging.do">예약 기록 전체보기</a>
						</div>
					</div>
				</div>
			</div>



		</div>
	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>