<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<!-- 달력 -->
<link rel="stylesheet" href="<c:url value='/resources/css/host/datepickerui.css'/>" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 

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

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
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

.date-wrap{
margin-top:50px;
	width:100%;
}

.date-wrap-sub {
	width: 30%;
	display: inline-block;
	float: left;
}
.modal-body{
	height:350px;
}
#myModal{
	width:100%;
}
</style>
<title>숙소 상태 탭</title>

<script>
	
</script>

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
				<b>숙소상태</b>
			</div>
			
			<form action='hostHomeModifyStateProc.do' method="post">
			<div class="state-sel" style="width: 80%;">
				<select id="state" name="home_state" class="form-control input lg"
					style="font-size: 17px;">
					<option value=0 >운영중</option>
					<option value=1 data-toggle="modal" data-target="#myModal">휴식모드</option>
					<option value=2>운영중지</option>
				</select>
			</div>
			<div class=line></div>
			<div style="font-size: 17px; margin-bottom: 20px;">
				<b>숙소를 조회하고 예약할 수 있는 게스트</b>
			</div>
			<div>
				<div>
					<input type="radio" id="open" checked="checked"
						style="width: 30px;"><label for="open">공개</label>
				</div>
				<div>계정 보유 여부와 관계없이 에어비앤비에 접속한 누구에게나 숙소가 표시됩니다.</div>
			</div>

			<div class=line></div>
				
			<!-- 모달모달 시작 -->
			
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel"></h4>
						</div>
						<div class="modal-body">
							<div style="font-size: 20px;">
								<b>숙소를 휴식 모드로 설정</b>
							</div>
							<div>설정한 기간 동안 숙소가 검색결과에 표시되지 않습니다. 이미 확정된 예약은 반드시 이행해야
								합니다.</div>
							<div class="date-wrap">
								<div class="date-wrap-sub">
									<input type="text" id="from" name="home_rest_start" value=""
										class="form-control input lg" placeholder="시작일">
								</div>
								<div class="date-wrap-sub">
									<input type="text" id="to" name="home_rest_end" value=""
										class="form-control input lg" placeholder="종료일">
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" id="modal-save" class="btn btn-info btn-lg" data-dismiss="modal">저장</button>
							<button type="button" id="modal-cancel" class="btn btn-info btn-lg" data-dismiss="modal">취소</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 모달모달 끝-->

			<input type=hidden id=start_date name=home_rest_start value="">
			<input type=hidden id=end_date name=home_rest_end value="">
			<input type=hidden name=seq value="${hdto.home_seq }">

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
			
			<script>
				$(document).on('click', '#modal-save', function(){
					var start_val = $('#start_date').val();
					start_val = $('#from').val();
					console.log("sv : " + start_val);
					
					var end_val = $('#end_date').val();
					end_val = $('#to').val();
					console.log("sv : " + end_val);
					
				})
			</script>

			<script>
				$(document).ready(function() {
						jQuery.noConflict();
						
						if(${hdto.home_state == 0}){
							$('#state').find("option[value=0]").prop("selected", true);
						}else if(${hdto.home_state == 1}){
							$('#state').find("option[value=1]").prop("selected", true);
						}else if(${hdto.home_state == 2}){
							$('#state').find("option[value=2]").prop("selected", true);
						}
						
						$("#modal-cancel").click(function(){
							$("#state").find("option[value=0]").removeAttr("selected");
							$("#state").find("option[value=0]").prop("selected", true);
						})

						$("#state").change(function() {
							console.log($(this).val());
							if ($(this).val() == 1) {
								$("#myModal").modal();
							}
						});
						
						$(function() {
							
							var dateFormat = "mm/dd/yy", 
									from = $("#from")
									.datepicker({
										minDate: 0,
										defaultDate : "+1w",
										changeMonth : true,
										numberOfMonths : 1,
										altFormat:"yy/mm/dd",
										dateFormat:"yy/mm/dd",
										onClose: function( selectedDate ) {
						                to.datepicker( "option", "minDate", selectedDate );
						            }            


									}), to = $("#to").datepicker({
										defaultDate : "+1w",
										changeMonth : true,
										numberOfMonths : 1,
										altFormat:"yy/mm/dd",
										dateFormat:"yy/mm/dd",
										onClose: function( selectedDate ) {
							            from.datepicker( "option", "maxDate", selectedDate );
										}	
									}); 

								function getDate(element) {
									var date;
									try {
										date = $.datepicker.parseDate(dateFormat, element.value);
										console.log("date:" + date);
									} catch (error) {
										date = null;
									}

									return date;
								}
							});
						});
			</script>

	
		</div>
	</div>
</body>
</html>