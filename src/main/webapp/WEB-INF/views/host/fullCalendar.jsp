<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />


<link href="<c:url value="/resources/css/host/fullcalendar.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/host/fullcalendar.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value="/resources/css/host/fullcalendar.print.min.css"/>"
	rel="stylesheet" media='print'>
<script src="<c:url value="/resources/js/moment.min.js"/>"
	type="text/javascript"></script>
<script src="<c:url value="/resources/js/jquery.min.js"/>"
	type="text/javascript"></script>
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
	width: 100%;
	height: auto;
	border: 1px solid black;
}

#calendar {
	border: 1px dotted black;
	width: 75%;
	display: inline-block;
	float: left;
}

#sidebar {
	border: 1px dotted black;
	width: 25%;
	height: auto;
	display: inline-block;
	float: left;
	position: fixed;
	display: inline-block;
}

.btn-group {
	margin-top: 20px;
	margin-bottom: 50px;
}

.btn-group button:first-child {
	margin-right: 30px;
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
</style>
</head>
<body>
	<div id="calendar" class="full-calendar"></div>
	<div id=sidebar>
		<div>
			<div style="margin-bottom: 20px;">
				<span><b>선택 날짜</b></span>
			</div>
		</div>

		<form action="modifyCalendar.do" method=post>

			<div>
				<input type="text" id=start_date name=start
					class="form-control input-lg"> <input type="text"
					id=end_date name=end class="form-control input-lg">
			</div>
			<div class=line></div>
			<div>
				<div style="margin-bottom: 20px;">
					<span><b>예약 가능 여부</b></span>
				</div>
				<div id=rp-wrap>
					<div id=r-possible>예약 가능</div>
					<div id=r-possible2>
						<input id="resp" name=home_reserve_possible type="radio"
							value="예약 가능">
					</div>
				</div>

				<div class=line></div>

				<div id=rip-wrap>
					<div id=r-impossible>예약 불가</div>
					<div id=r-impossible2>
						<input id=resim name=home_reserve_possible type="radio"
							value="예약 불가">
					</div>
				</div>
			</div>
			<div class=line></div>
			<div>
				<div style="margin-bottom: 20px;">
					<span><b>1박 요금</b></span>
				</div>
				<div>
					<input type="text" name=home_price class="form-control input-lg">
				</div>
				<div class=line></div>
				<div>
					<textarea rows="5" cols="50" class="form-control input-lg"></textarea>
				</div>
			</div>
			<div class=line></div>
			<div class="btn-group">
				<button class="btn btn-info btn-lg">저장</button>
				<button type="button" class="btn btn-info btn-lg"
					onclick="history.back()">취소</button>
				<input type=hidden name=seq value=${hdto.home_seq }>
			</div>
		</form>

	</div>
	<script>
		var s_date;
		var e_date;
		
		$('#calendar').fullCalendar(
				{
					header : {
						left : 'prev,next today',
						center : 'title',
						right : 'month,agendaWeek,agendaDay'
					},
					lang : 'ko',
					defaultDate : new Date(),
					navLinks : true, // can click day/week names to navigate views
					dragScroll : true,
					selectable : true,
					selectHelper : true,
					// 					dayClick : function(date) {
					// // 						alert('clicked ' + date.format());
					// 						$('#start_date').val(date.format());
					// 						$('#end_date').val(date.format());

					// 					},
					select : function(start, end, jsEvent, view) {
						$(this).css("background-color", "#E6E6E6");
						s_date = start.format("YYYY/MM/DD");
						e_date = moment(end).subtract('days', 1).format(
								"YYYY/MM/DD");

						var m = moment();

						console.log("시작날짜" + s_date);
						console.log("종료날짜:" + e_date);

						$('#start_date').val(s_date);
						$('#end_date').val(e_date);
						
						
						
						

						var title ;
// 						= prompt('Event Title:')
						var eventData;
						if (title) {
							eventData = {
								title : title,
								start : start,
								end : end,
								rendering : 'background'
							};
							$('#calendar').fullCalendar('renderEvent',
									eventData, true); // stick? = true
  
// 							$.ajax({
// 								url : 'calendarAjax.do',
// 								type : 'post',
// 								data : {
// 									title : title,
// 									start : s_date,
// 									end : e_date
// 								},
// 								success : function(resp) {
// 									console.log("성공" + resp.title);
// 									console.log("성공" + resp.start);
// 									console.log("성공" + resp.end);
// 									rendering: 'background'
// 									var eventData;
									
// 									if (title != null) {
// 										eventData = {
// 											title : title,
// 											start : start,
// 											end : end,
// 											rendering : 'background'
// 										};
// 										$('#calendar').fullCalendar('renderEvent',
// 											eventData, true);
									
// 									}
								
// 								},
// 								error : function(resp) {
// 									console.log("실패" + resp.status);
// 								}
// 							});

						}

						$('#calendar').fullCalendar('unselect');
					},
					eventDragStart : true,
					eventDragStop : true,
					eventDrop : function(event, delta) {
						alert(event.start + ":" + delta.days);
					},
					eventMouseover : function(event, jsEvent, view) {
						$(this).css("border", "1px solid black");
					},
					eventMouseout : function(event, jsEvent, view) {
						$(this).css("border", "none");
					},
					eventRender : function(event, element) {
						element.attr('href', '#');
					},
					editable : true,
					eventLimit : true, // allow "more" link when too many events
					events : function(start, end, timezone, callback) {
// 						$.ajax({
// 							url : 'calendarAjax.do',
// 							type : 'post',
// 							data : {
// 								start : start.format(),
// 								end : end.format()
// 							},
// 							success : function(resp) {
// 								console.log("썽공: " + resp.result);
// 							},
// 							error : function(resp) {
// 								console.log("실패 : " + resp.status);
// 							}

// 						});

					}

				// 					events : [ {
				// 						title : 'Long Event',
				// 						start : '2018-08-07',
				// 						end : '2018-08-10'
				// 					}, {
				// 						id : 999,
				// 						title : 'Repeating Event',
				// 						start : '2018-08-16T16:00:00'
				// 					}, {
				// 						title : 'Meeting',
				// 						start : '2018-08-12T10:30:00',
				// 						end : '2018-08-12T12:30:00'
				// 					}, {
				// 						title : 'Click for Google',
				// 						url : 'http://google.com/',
				// 						start : '2018-08-28'
				// 					} ]

				});
	</script>
</body>
</html>