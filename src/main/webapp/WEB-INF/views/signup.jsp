<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Villim 회원가입</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



<style>
#wrapper {
	width: 100%;
	margin: 0px auto;
	text-align: center;
}

#middle {
	width: 100%;
	text-align: center;
}

#monthBtn {
	width: 20%;
}

#yearBtn {
	width: 20%;
}

#dayBtn {
	width: 20%;
}

#completeBtn {
	width: 80%;
}

#myModal {
	text-align: center;
	z-index: 11000;
}

#upload {
	display: none;
}
</style>

<script>
	$(document)
			.ready(
					function() {
					var load = "";
					var timerID; 
					var time = 30;
					var time1 = "";

						$("#yearBtn").click(function() {

							$.ajax({
								url : "year.do",
								type : "get",

								success : function(response) {

									var length = response.length;

									var html = '';

									for (var i = 0; i < response.length; i++) {
										html += '<li>';
										html += '<a>';
										html += response[i] + "년";
										html += '</a>';
										html += '</li>';

									}

									$("#yearList").html(html);

								},
								error : function() {
									console.log("에러 발생!");
								}
							});

						});

						$("#dayBtn").click(function() {
							var month = $("#monthInput").val();
							var year = $("#yearInput").val();

							$.ajax({
								url : "day.do",
								type : "get",
								data : {

									month : month,
									year : year
								},
								success : function(response) {

									var length = response.length;

									var html = '';

									for (var i = 0; i < response.length; i++) {
										html += '<li>';
										html += '<a>';
										html += response[i] + "일";
										html += '</a>';
										html += '</li>';

									}

									$("#dayList").html(html);

								},
								error : function() {
									console.log("에러 발생!");
								}
							});

						});

						$("#monthList").on("click", "li", function() {

							$("#monthInput").val($(this).text());
						});
						$("#yearList").on("click", "li", function() {

							$("#yearInput").val($(this).text());
						});
						$("#dayList").on("click", "li", function() {

							$("#dayInput").val($(this).text());
						});

						$("#completeBtn").click(function() {

							$("#test").val($("#dayInput").val());

						});
						$("#uploadFake").click(function() {
							alert("on");
							$("#upload").click();

						});

						/* 변화 감지  */
						$('input[type=file]')
								.change(
										function() {

											var formData = new FormData(
													$("#uploadForm")[0]);
											/* var formData = new FormData(); */
											alert(formData);
											var html = "";
											$
													.ajax({
														url : "upload.do",
														type : "post",
														data : formData,
														processData : false,
														contentType : false,
														success : function(
																response) {
															alert(response);
															html += "<img src=files/";
						html+= response;
						html+= " alt=이미지 로드 실패   class='img-circle' id='profilePicture' style='width:100px'>";

															/* $("#profilePicture").attr("src","files/"+response);  */
															$("#imageLoad")
																	.html(html);
															load = response;
														}

													});

										});
						
						$("#imgLoadBtn").click(function(){
							if(load==""){
								$("#test10").val('${picture}');
								$("#test11").val($("#dayInput").val());
							}else{
							$("#test10").val(load);
							$("#test11").val($("#dayInput").val());
							}
						})
						function start_timer(){
						
							timerID = setInterval(decrementTime,1000);
						
						}
						function decrementTime(){

							if(time>0){
								
								time--;
								$("#timer").html(time);
							}else{
								clearInterval(timerID);
								alert("인증번호 유효시간이 지났습니다");
								return; 
							}
						}
						function toHourMinSec(t){
							var hour;
							var min;
							var sec;
							alert("toHourMinSec");
							hour = Math.floor(t/3600);
							min = Math.floor( (t-(hour*3600)) / 60 );
							sec = t - (hour*3600) - (min*60);
							
							if(hour < 10) hour = "0" + hour;
							if(min < 10) min = "0" + min;
							if(sec < 10) sec = "0" + sec;
							
							return (hour + ":" + min + ":" +sec);

						}
						
					 $("#authBtn1").click(function(){ 
							var phoneNum = $("#phoneCheck").val();
							$.ajax({
								url : "phoneCheck.do",
								type : "post",
								data : {							
									phoneNum : phoneNum
								},
								success : function(response) {

									time1 = response;
									$("#memberEmail").val('${accountEmail}');
									$("#memberNm").val('${firstName}' + '${secondName}');
									$("#memberBirth").val($("#yearInput").val()+$("#monthInput").val()+$("#dayInput").val());
									$("#memberPicture").val(load);
									$("#memberPhone").val(phoneNum);
									
									
									alert(load);
									alert(phoneNum);

								},
								error : function() {
									console.log("에러 발생!");
								}

							});

							$("#myModal3").modal('hide');
							$('#myModal4').modal('show');

						});

					 	 $("#myModal4").on("shown.bs.modal", function(){
					 		start_timer();
					 		decrementTime();
					 	 });

						$("#authBtn2").click(function(){
							
							var key = $("#inputAuthNum").val();
							
							
							if(key==session){
								alert("true");
							}else{
								alert("false");
							}
							
						})
						
						 
						
								
					});
</script>
</head>
<body>

	<div id="wrapper">
		<div id="title">
			<font><h3>정보를 입력을 완료하세요</h3></font><br> <font>회원 가입 절차를
				완료하려면 회원님의 정보를 확인하고 빠진 정보를 입력해</font> <font>주세요.</font>
		</div>
		<!-- <form action="info.do" method="post"> -->
		<div id="middle">
			<div class="input-group">
				<input type="text" name="secondName" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${secondName}">
			</div>
			<div class="input-group">
				<input type="text" name="firstName" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${firstName}">
			</div>
			<div class="input-group">
				<input type="text" name="accountEmail" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${accountEmail}">
			</div>
			<br>
		</div>
		<div id="bottom">
			<font>생년월일</font><br>
			<div class="dropdown" id="month" style="display: inline;">
				<input type="text" name="monthProp" placeholder="일" id="monthInput">
				<a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					id="monthBtn"> <span class="caret"></span>
				</a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel"
					id="monthList">
					<li>1월</li>
					<li>2월</li>
					<li>3월</li>
					<li>4월</li>
					<li>5월</li>
					<li>6월</li>
					<li>7월</li>
					<li>8월</li>
					<li>9월</li>
					<li>10월</li>
					<li>11월</li>
					<li>12월</li>
				</ul>
			</div>

			<div class="dropdown" id="day" style="display: inline;">
				<input type="text" name="dayProp" placeholder="일" id="dayInput">
				<a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					id="dayBtn"> <span class="caret"></span>
				</a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel"
					id="dayList">
				</ul>
			</div>


			<div class="dropdown" id="year" style="display: inline;">
				<input type="text" name="yearProp" placeholder="년" id="yearInput"><a
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					id="yearBtn"> <!-- 				<button type="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" id="yearBtn">
					년 <span class="caret"></span>
				</button> --> <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel"
					id="yearList">
				</ul>
			</div>
		</div>
		<br>

		<div id="complete">
			<button id="completeBtn" data-toggle="modal" data-target="#myModal"
				type="button" class="btn btn-danger">
				<font>가입 완료</font>
			</button>
			<!--  	 <a id="completeBtn" data-toggle="modal" href="#myModal"><font>가입 완료</font></a> -->
		</div>
		<!-- 	</form> -->
	</div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<div>
						<h2>
							<font>가입하시기 전에</font>
						</h2>
						<br>
						<h3>
							<font>Villim은 모두가 환영받을 수 있고 서로 신뢰할 수 있는 커뮤니티를</font>
						</h3>
						<br>
						<h3>
							<font>만들어 나가고자 합니다. 이를 위해, 회원님에게 에어비앤비 서비스 약관에</font>
						</h3>
						<br>
						<h3>
							<font>동의하고 커뮤니티의 회원 모두를 존중하고 차별 없이 대할 것을</font>
						</h3>
						<br>
						<h3>
							<font>약속해주시기를 부탁드리고 있습니다.</font>
						</h3>
						<br>

						<h3>
							<font>Villim 커뮤니티를 위한 약속</font>
						</h3>
						<br>
						<h3>
							<font>모든 Villim 커뮤니티 회원을 인종,종교,출신,국가,민족,피부색,</font>
						</h3>
						<br>
						<h3>
							<font>장애,성별,성적 정체성,성적 취향 또는 연령에 상관없이 존중하며 개인적</font>
						</h3>
						<br>
						<h3>
							<font>판단이나 편견 없이 대하겠습니다.</font><a href="#"><font>자세히
									알아보기</font></a>
						</h3>
						<br>

						<h3>
							<font>Villim 서비스 약관</font>
						</h3>
						<br>
						<h3>
							<a href="#"><font>Villim 서비스 약관</font></a>,<a href="#">결제 서비스
								약관</a>,<a href="#">차별 금지 정책</a>에 동의합니다.
						</h3>
						<br>
						<h3>
							또한, Villim<a href="#"><font>개인정보 보호정책</font></a>에 따른 개인정보 이용 및
							처리에도
						</h3>
						<br>
						<h3>
							<font>동의합니다.</font><br>
					</div>
					<input type="text" id="test">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						data-toggle="modal" data-target="#myModal1">동의</button>
					<button type="button" class="btn btn-primary">거부</button>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">Villim 에 오신것을 환영합니다.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal"
						data-toggle="modal" data-target="#myModal2">다음단계로</button>

				</div>
			</div>
		</div>
	</div>

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
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<div id="imageLoad">
						<img src="${picture}" alt="이미지 로드 실패" class="img-circle"
							id="profilePicture">
					</div>
					<div>
						<button type="button" class="btn btn-primary"
							onclick="FB.login();" id="facebook">
							<i class="fab fa-facebook-f fa-2x" style="color: white"></i> <font>페이스북
								사진 사용</font>
						</button>
						<form id="uploadForm" method="post" action="upload.do"
							enctype="multipart/form-data">
							<input type="file" id="upload" name="test">
							<button type="button" id="uploadFake">
								<i class="fas fa-cloud-upload-alt fa-2x" style="color: white"></i>
								<font>사진 업로드</font>
							</button>
						</form>

					</div>
				</div>
				<div class="modal-footer">
					<button id="imgLoadBtn" type="button" class="btn btn-default" data-dismiss="modal"
						data-toggle="modal" data-target="#myModal3">다음으로</button>

				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<div>
						<font>전화번호 인증하기</font>
					</div>
					<div>
						<font>호스트와 게스트가 여행 중 회원님께 연락할</font>
					</div>
					<div>
						<font>수 있도록 하기 위한 절차입니다.</font>
					</div>

					<div>이미지</div>

					<div class="dropdown">
						<button id="dLabel" type="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">
							Dropdown trigger <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<li>한국
						</ul>
					</div>
					
					<div>
					<!-- <form method="post" action="phoneCheck.do"> -->
						<input type="text" placeholder="+82"  name="phone" id="phoneCheck"><br>
						<button class="btn btn-danger" id="authBtn1"
						>
				<!-- 		data-dismiss="modal" data-toggle="modal" data-target="#myModal4" -->
						
						전화번호 인증
						</button>
					<!-- </form> -->
					</div>
					
					<input type="text" id="test10">
					<input type="text" id="test11">
				</div>
				<div class="modal-footer">
					

				</div>
			</div>
		</div>
	</div>
	
		<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<div>
						<font>인증번호를 입력하세요</font>
					</div>
					<div>
						<font>3분안에 입력해야합니다.</font>
						<div id="timer"></div>
					</div>

					<div id="time5"></div>

					<div>
						<form action="isAuthKey.do" method="post">
						<input type="text" placeholder="인증번호를 입력하세요"  name="authNum" id="inputAuthNum"><br>
						<input type="hidden" id="memberEmail" name="member_email">
						<input type="hidden" id="memberNm" name="member_name">
						<input type="hidden" id="memberBirth" name="member_birth">
						<input type="hidden" id="memberPicture" name="member_picture">
						<input type="hidden" id="memberPhone" name="member_phone">
						<button class="btn btn-danger" id="authBtn2">입력</button>
						<button class="btn btn-success" type=button id="reSend">재발급</button>
						</form>
					</div>
					
					
					<input type="text" id="time1">
					<input type="text" id="time2">
					
				</div>
				<div class="modal-footer">
					

				</div>
			</div>
		</div>
	</div>

</body>
</html>