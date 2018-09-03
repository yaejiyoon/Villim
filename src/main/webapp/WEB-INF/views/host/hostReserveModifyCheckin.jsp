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

<title>체크인</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/htitle.png'/>" />

<style>
body{
min-width:1280px;
}
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
}

.home-details-line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 30px;
	margin-bottom: 30px;
}

#cin-wrap {
	width: 100%;
	display: inline-block;
	float: left;
}

#cin1 {
	width: 50%;
	display: inline-block;
	float: left;
}

#cin2 {
	width: 50%;
	display: inline-block;
	float: left;
}

#cout {
	display: inline-block;
	float: left;
	width: 50%;
}

#cout-wrap {
	display: inline-block;
	float: left;
	width: 100%;
	margin-top: 40px;
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
<title>체크인과 체크아웃</title>
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
				<b>체크인과 체크아웃</b>
			</div>

			<div class="home-details-line"></div>


			<form action=hostReserveModifyCheckinProc.do method=post>

				<div id=cin-wrap class="row">
					<div id=cin1 class=col-md-6>
						<div>
							<b>체크인 시작 시간</b>
						</div>
						<div id=cin-start-wrap>
							<select id="cin-start" name=home_checkin_start
								class="form-control input-lg">
								<option value="시간 선택">시간 선택</option>
								<option value="조정 가능">조정 가능</option>
								<option value="8">08:00</option>
								<option value="9">09:00</option>
								<option value="10">10:00</option>
								<option value="11">11:00</option>
								<option value="12">12:00</option>
								<option value="13">13:00</option>
								<option value="14">14:00</option>
								<option value="15">15:00</option>
								<option value="16">16:00</option>
								<option value="17">17:00</option>
								<option value="18">18:00</option>
								<option value=19>19:00</option>
								<option value=20>20:00</option>
								<option value=21>21:00</option>
								<option value=22>22:00</option>
								<option value=23>23:00</option>
								<option value=24>24:00</option>
							</select>
						</div>
					</div>

					<div id=cin2 class=col-md-6>
						<div>
							<b>체크인 종료시간</b>
						</div>
						<div id=cin-end-wrap>
							<select id="cin-end" name=home_checkin_end
								class="form-control input-lg">
								<option value="시간 선택">시간 선택</option>
								<option value="조정 가능">조정 가능</option>
								<option value=8>08:00</option>
								<option value=9>09:00</option>
								<option value=10>10:00</option>
								<option value=11>11:00</option>
								<option value=12>12:00</option>
								<option value=13>13:00</option>
								<option value=14>14:00</option>
								<option value=15>15:00</option>
								<option value=16>16:00</option>
								<option value=17>17:00</option>
								<option value=18>18:00</option>
								<option value=19>19:00</option>
								<option value=20>20:00</option>
								<option value=21>21:00</option>
								<option value=22>22:00</option>
								<option value=23>23:00</option>
								<option value=24>24:00</option>
							</select>
						</div>
					</div>
				</div>


				<div id=cout-wrap class=row>
					<div id=cout class=col-md-6>
						<div>
							<b>체크 아웃 시간</b>
						</div>
						<div id=checkout-wrap>
							<select id="checkout" name=home_checkout
								class="form-control input-lg">
								<option value=1>01:00</option>
								<option value=2>02:00</option>
								<option value=3>03:00</option>
								<option value=4>04:00</option>
								<option value=5>05:00</option>
								<option value=6>06:00</option>
								<option value=7>07:00</option>
								<option value="8">08:00</option>
								<option value="9">09:00</option>
								<option value="10">10:00</option>
								<option value="11">11:00</option>
								<option value="12">12:00</option>
								<option value="13">13:00</option>
								<option value="14">14:00</option>
								<option value="15">15:00</option>
								<option value="16">16:00</option>
								<option value="17">17:00</option>
								<option value="18">18:00</option>
								<option value=19>19:00</option>
								<option value=20>20:00</option>
								<option value=21>21:00</option>
								<option value=22>22:00</option>
								<option value=23>23:00</option>
								<option value=24>24:00</option>
							</select>
						</div>
					</div>
				</div>
				
				<div class=home-details-line></div>
				
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

				<input type=hidden name=seq value=${hdto.home_seq }>
			</form>
		</div>
	</div>

	<script>
		$(document).ready(function(){
			jQuery.noConflict();
			var s_checkin_start = [];
			var s_checkin_end = [];
			var s_checkout = [];
			
			$('#cin-start option').each(function(){
				s_checkin_start.push($(this).val());
			})
			$('#cin-end option').each(function(){
				s_checkin_end.push($(this).val());
			})
			$('#checkout option').each(function(){
				s_checkout.push($(this).val());
			})
			
			if(${hdto.home_checkin_start == '시간 선택'}){
				$('#cin-start').find("option[value='시간 선택']").prop("selected", true);
				$('#cin-end').find("option[value='시간 선택']").prop("selected", true);
				$('#cin-end').prop("disabled", true);
			}else if(${hdto.home_checkin_start == '조정 가능'}){
				$('#cin-start').find("option[value='조정 가능']").prop("selected", true);
				$('#cin-end').find("option[value='조정 가능']").prop("selected", true);
				$('#cin-end').prop("disabled", true);
			}else if(${hdto.home_checkin_start != '시간 선택' && hdto.home_checkin_start != '조정 가능'}){
				for(var i=2; i < s_checkin_start.length; i++){
					console.log("s_checkin_start::" + s_checkin_start[i]);
					console.log(":::::"+${hdto.home_checkin_start});
					var num = '${hdto.home_checkin_start}';
					if( num == s_checkin_start[i] ){
						console.log("둘다 시간 선택");
						$('#cin-start').find("option[value="+s_checkin_start[i]+"]").prop("selected", true);
					}
				}		
			}
			
			if(${hdto.home_checkin_end == '시간 선택'}){
				$('#cin-end').find("option[value='시간 선택']").prop("selected", true);
			}else if(${hdto.home_checkin_end == '조정 가능'}){
				$('#cin-end').find("option[value='조정 가능']").prop("selected", true);
			}else if(${hdto.home_checkin_end != '시간 선택' && hdto.home_checkin_end != '조정 가능'}){
				for(var i=2; i < s_checkin_end.length; i++){
					console.log("s_checkin_end : " + s_checkin_end[i]);
					var num = '${hdto.home_checkin_end}';
						if(num == s_checkin_end[i]){
							$('#cin-end').find("option[value="+s_checkin_end[i]+"]").prop("selected", true);
						}
				}		
			}
			
			for(var i=0; i < s_checkout.length; i++){
				console.log("s_checkout : " + s_checkout[i]);
				if(${hdto.home_checkout == s_checkout[i]}){
					$('#checkout').find("option[value="+s_checkout[i]+"]").prop("selected", true);
				}
			}		
			
			
			$('#cin-start').change(function(){
				var cin = $(this).val();
				console.log("cin-start:"+ cin);
				if(cin=="시간 선택"){
					console.log("시간선택");
					$('#cin-end').find("option[value='시간 선택']").prop("selected", true);
					$('#cin-end').prop('disabled', true);
				}else if(cin == "조정 가능"){
					$('#cin-end').find("option[value='조정 가능']").prop("selected", true);
					$('#cin-end').prop('disabled', true);
				}else{
					$('#cin-end').prop('disabled', false);
				}
				
				var cendarr = [];
									
				$('#cin-end option').each(function(){
					cendarr.push($(this).val());
				})
				
				console.log("사이즈"+cendarr.length);
				console.log("사이즈"+cendarr[0]);
				
				for(var i=2; i<cendarr.length; i++){
					if(parseInt(cin) > parseInt(cendarr[i])){
						console.log(cendarr[i]);
						var parse = parseInt(cendarr[i]) + 1;
						$('#cin-end').find("option[value="+cendarr[i]+"]").prop("disabled", true);
						$('#cin-end').find("option[value="+parse+"]").prop("disabled", true);
					}else if(parseInt(cin) < parseInt(cendarr[i])){
						$('#cin-end').find("option[value="+cendarr[i]+"]").prop("disabled", false);
					}
				}
					
				
			})
			
		})
		
	</script>
</body>
</html>