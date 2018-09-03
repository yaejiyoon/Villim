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


<link href="<c:url value="/resources/css/host/fullcalendar.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/host/fullcalendar.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/css/host/fullcalendar.print.min.css"/>"
	rel="stylesheet" media='print'>
<script src="<c:url value="/resources/js/moment.min.js"/>"
	type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="<c:url value="/resources/js/fullcalendar.min.js"/>"
	type="text/javascript"></script>

<title>달력보기</title>

<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

div {
	box-sizing: border-box;
}

#wrapper {
	display: inline-block;
	width: 100%;
	float: left;
}

#content {
	width: 74%;
	display: inline-block;
	float: left;
	margin-bottom: 50px;
}

/* 드롭다운 css */
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
	height: 70px;
}

.dd-sub-pic {
	width: 35%;
	display: inline-block;
	float: left;
	height: 100%;
}

.dd-pic {
	width: 60%;
	height: 60%;
	position: relative;
	top: 10px;
	left: 17px;
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
}

.dropdown-menu {
	width: 50vh;
	height: auto;
	overflow: scroll;
}

#dropdownMenu1:hover {
	text-decoration: none;
}
/* 드롭다운 css */
.full-calendar {
	width: 100%;
	display: inline-block;
	float: left;
}

#sidebar {
	width: 24%;
	height: auto;
	display: inline-block;
	float: right;
}

.btn-group {
	margin-top: 20px;
	margin-bottom: 50px;
}

.btn-group button:first-child {
	margin-right: 30px;
}
.btn {
	background-color: #008489;
	color: white;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 15px;
	margin-bottom: 15px;
}

#rp-wrap, #rip-wrap {
	width: 100%;
	display: inline-block;
	float: left;
}

#r-possible, #r-impossible {
	width: 70%;
	height: 100%;
	font-size: 18px;
	display: inline-block;
	float: left;
}

#r-possible2, #r-impossible2 {
	width: 30%;
	height: 100%;
	display: inline-block;
	float: left;
}

#resp, #resim {
	float: right;
	display: inline-block;
}
#start_date, #end_date{
	background-color: white;
}
#cancel{
	background-color: white;
	color: #008489;
	border: 2px solid #008489;
}
</style>
</head>
<body>
	<%
		int cnt = 0;
		int calcnt = 0;
	%>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id=content>
		<div class="home-summary-title dropdown" style="width: 30%;">
			<h2>
				<a id="dropname" class="dropdown-toggle" id="dropdownMenu1"
					data-toggle="dropdown" style="font-size: 25px;"
					aria-expanded="true"> ${hdto.home_name}<span class="caret"></span>
				</a>
			</h2>
			<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
				<c:if test="${list ne null }">
					<li role="presentation" class="dropdown-header">숙소를 선택하세요</li>
					<c:forEach var="result" items="${list }">
						<%
							cnt++;
						%>
						<li role="presentation">
							<div class="dd-wrap">
								<a id="cal<%=cnt%>" style="font-size: 17px;" role="menuitem"
									tabindex="-1" id="summ-link<%=cnt%>" href="javascript:void(0);">
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
									<div class="dd-sub-content">${result.home_name }</div> <input
									type="hidden" id="dseq<%=cnt %>" name="dseq"
									value="${result.home_seq }">
								</a>
							</div>
						</li>

						<script>
						$("#cal<%=cnt%>").click(function(){
							$('.full-calendar').not('#calendar<%=cnt%>').hide();
							$('#calendar<%=cnt%>').show();
							$('#dropname').text('${result.home_name}');
							
							var dseq = $("#dseq<%=cnt%>").val();
							$("#hidden_seq").val(dseq);
						})
						
						$(document).ready(function(){
							
							var s_date;
							var e_date;
							var seq = ${result.home_seq};
							
							$('#calendar<%=cnt%>').fullCalendar(
									{
										handleWindowResize:true,
										aspectRatio:1.5,
										contentHeight: 600,
										header : {
											left : 'prev,next today',
											center : 'title',
											right : 'month,agendaWeek,agendaDay'
										},
										lang : 'ko',
										defaultDate : new Date(), 
// 										validRange:function(nowDate){
// 												return{
// 													start:nowDate-1 
// 												};
// 										},
										navLinks : true, // can click day/week names to navigate views
										showNonCurrentDates:false,
										dragScroll : false,
										selectable : true,
										selectHelper : true,
										unselectAuto:false,
// 										selectAllow:function(selectInfo){
// 											var sstr=selectInfo.start.format('YYYY/MM/DD');
// 											var m = moment();
// 											var cstr = m.format('YYYY/MM/DD')
// 											alert(sstr);
// 											alert(cstr);
// 											var sarr = sstr.split('/');
// 											var carr = cstr.split('/');
											
// 											var sdate = new Date(sarr[0], sarr[1], sarr[2]);
// 											var cdate = new Date(carr[0], carr[1], carr[2]);
// 											var between = (cdate.getTime()-sdate.getTime())/1000/60/60/24;
// 										},
										select : function(start, end, jsEvent, view) {
											console.log("seqqqqqqqqq::"+seq);
											
											var m = moment();

											s_date = start.format("YYYY/MM/DD");
											e_date = moment(end).subtract('days', 1).format("YYYY/MM/DD");
											var cstr = m.format('YYYY/MM/DD')
											
											var sarr = s_date.split("/");
											var carr = cstr.split('/');
											var sdate = new Date(sarr[0], sarr[1], sarr[2]);
											var cdate = new Date(carr[0], carr[1], carr[2]);
											var between = (cdate.getTime()-sdate.getTime())/1000/60/60/24;
											
											if(between>0){
												$('#calendar<%=cnt%>').fullCalendar('unselect');
												$('#start_date').val("");
												$('#end_date').val("");
												
												return false;
											}
											
											console.log("시작날짜" + s_date);
											console.log("종료날짜:" + e_date);
					
											$('#start_date').val(s_date);
											$('#end_date').val(e_date);
										
											
											/* 예약 가능, 불가 체크하기 */
											$.ajax({
												url : 'calendarAjax.do',
												type : 'post',
												data : {
													seq : seq,
													start : s_date,
													end : e_date
												},
												success : function(resp) {
													console.log("resp:" + resp);
													console.log("성공" + resp.start);
													console.log("성공" + resp.end);
													console.log("성공" + resp.possible);
													if (resp.possible == "예약 불가") {
														console.log("예약 불가");
														$("#resim").prop("checked", true);
													} else {
														console.log("예약 가능");
														$("#resp").prop("checked", true);
													}
												
												},
												error : function(resp) {
													console.log("실패" + resp.status);
												}
											});
					// 							$('#calendar').fullCalendar('unselect');
										},
										eventDragStart : false,
										eventDragStop : false,
										eventDrop : false,
										eventMouseover : function(data, event, view){
											 var date = new Date();
											 var d = date.getDate();
											 var m = date.getMonth()+1;
											 var y = date.getFullYear();
										},
										eventMouseout :false,	
										editable : false,
										eventOverlap:false,
										eventLimit : true, // allow "more" link when too many events
										events : function(start, end, timezone, callback) {
											console.log("seq::::::::::::::"+seq);
											console.log("start.format()"+start.format());
											console.log("end.format()"+end.format());

											$.ajax({
												url : 'eventsAjax.do',
												type : 'post',
												data : {
													seq : seq
												},
												dataType:"json",
												success : function(resp) {
													console.log("썽공: "+resp);
													console.log("썽공: "+resp.jarr.length);
													
													var arr = new Array();
													arr = resp.jarr[0].split(",");
													console.log("asdasd::"+arr);
													console.log("length:" + arr.length);
													
													for(var i=0; i<arr.length; i++){
														console.log("arr::"+arr[i]);
													}
													
													for(var i=1; i<resp.jarr.length; i++){
														console.log("점심::"+resp.jarr[i].member_email);
														console.log("점심::"+resp.jarr[i].reserv_checkin);
														console.log("점심::"+resp.jarr[i].reserv_checkout);
														console.log("점심::"+resp.jarr[i].member_name);
													}
													
													arr.sort();
													
													var s_str = arr[0];
													var e_str = arr[arr.length-1];
													var tit = '예약 불가';
													var eventData=[];
													today = new Date();
													console.log("s_str::"+s_str);
													console.log("e_str::"+e_str);
													
													var events = [];
													$(resp).each(function() {
														
														// 예약완료 출력 출력
														for(var i=1; i<resp.jarr.length; i++){
															events.push({
																color:'#848484',
																start:resp.jarr[i].member_checkin,
																end:resp.jarr[i].member_checkout,
																rendering:'background'
															});
														}
														for(var i=1; i<resp.jarr.length; i++){
															events.push({
																start:resp.jarr[i].reserv_checkin,
																end:resp.jarr[i].reserv_checkout,
																title:resp.jarr[i].member_name,
																backgroundColor:'#ff5a5f',
												
															});
														}
														
														
														// 예약 불가 출력
														for(var i = 0; i<arr.length; i++){
															events.push({
																color:'#848484',
																start: arr[i],
																end:arr[i],
																title:tit,
																rendering:'background'
															});
														}
														for(var i = 0; i<arr.length; i++){
															events.push({
																start: arr[i],
																end:arr[i],
																title: tit,
																backgroundColor:'#008489'
															});
														}
													});
													events.push({
														start: '2017-01-01',
														end: '2018-08-29',
														color:'#E6E6E6',
														rendering:'background',
														select:false
														
													})
													
													$('#calendar').fullCalendar('renderEvent', events, true);
													callback(events);
												},
												error : function(resp,error, status) {
													console.log("실패 : "+resp.status+"::"+error+"::"+resp.responseText);
												}
												
											});
					
										}
					
					
									});
							var $first = $('.full-calendar').first();
							$('.full-calendar').not($first).hide();
						})
					</script>
						<input type=hidden name=seq value="${result.home_seq}">
					</c:forEach>
				</c:if>
			</ul>
		</div>
		<c:forEach begin="1" end="${list.size() }">
			<%
				calcnt += 1;
			%>
			<div id="calendar<%=calcnt%>" class="full-calendar" style="width:100%;"></div>
		</c:forEach>
	</div>
	<div id=sidebar>
		<div>
			<div style="margin-bottom: 10px;">
				<span><b>선택 날짜</b></span>
			</div>
		</div>

		<form action="modifyCalendar.do" method=post>
			<div>
				<input type="text" id=start_date name=start readonly="readonly" 
					class="form-control input-lg"> <input type="text" readonly="readonly"
					id=end_date name=end class="form-control input-lg">
			</div>
			<div class=line></div>
			<div>
				<div style="margin-bottom: 20px;">
					<span><b>예약 가능 여부</b></span>
				</div>
				<div id=rp-wrap>
					<label for="resp" id=r-possible>예약 가능</label>
					<div id=r-possible2>
						<input id="resp" name=home_reserve_possible type="radio"
							value="예약 가능">
					</div>
				</div>

				<div class=line></div>

				<div id=rip-wrap>
					<label for="resim" id=r-impossible>예약 불가</label>
					<div id=r-impossible2>
						<input id=resim name=home_reserve_possible type="radio"
							value="예약 불가">
					</div>
				</div>
			</div>
			<div class=line></div>
			<!-- 			<div> -->
			<!-- 				<div style="margin-bottom: 20px;"> -->
			<!-- 					<span><b>1박 요금</b></span> -->
			<!-- 				</div> -->
			<!-- 				<div> -->
			<!-- 					<input type="text" name=home_price class="form-control input-lg"> -->
			<!-- 				</div> -->
			<!-- 				<div class=line></div> -->
			<!-- 				<div> -->
			<!-- 					<textarea rows="5" cols="50" class="form-control input-lg"></textarea> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
			<div class=line></div>
			<div class="btn-group">
				<button class="btn btn-lg" id=save>저장</button>
				<button type="button" id=cancel class="btn btn-lg"
					onclick="history.go(-1)">취소</button>

				<input id="hidden_seq" type="hidden" name="seq"
					value="${hdto.home_seq }">
			</div>
		</form>

	</div>
</body>
</html>