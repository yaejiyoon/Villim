<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이메일로 회원가입</title>

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
#title{
	margin-top: 10%;
}

#middle {
	width: 100%;
	
	margin-top: 3%;
}
#bottom{
	margin-top: 10%;

}
#secondNm{

	width:93%;	
	margin-left: 3.6%;
	margin-bottom: 3%;
	height:50px;
}
#secondIcon{
	position: absolute;
	top:23.5%;
	left:91%;
	color: silver;
	
}
#firstIcon{
	position: absolute;
	top:32.5%;
	left:91%;
	color: silver;
	
}
#emailIcon{
	position: absolute;
	top:42.5%;
	left:91%;
	color: silver;
	
}
#pwIcon{
	position: absolute;
	top:52%;
	left:91%;
	color: gold;
	
}
#firstNm{
	width:93%;
	margin-left: 3.6%;
	margin-bottom: 3%;
	height:50px;

}
#accountEm{
	width:93%;
	margin-left: 3.6%;
	margin-bottom: 3%;
	height:50px;
}
#pw{
	width:93%;
	margin-left: 3.6%;
	margin-bottom: 3%;
	height:50px;
}
#droplist1{
	position: absolute;
	z-index:1;
	left: 88%;
	top : 25%;
}
#droplist2{
	position: absolute;
	z-index:1;
	left: 88%;
	top : 25%;
}
#droplist3{
	position: absolute;
	z-index:1;
	left: 88%;
	top : 25%;
}


#monthInput {
	width: 30%;
	display: inline;
	margin-right: 0.3%;
	height:45px;
}
#yearInput {
	width: 30%;
	display: inline;
	margin-right: 0.3%;
	height:45px;
}
#dayInput {
	width: 30%;
	display: inline;
	margin-right: 0.3%;
	height:45px;
}

#completeBtn {
	width: 92%;
	height:70px;
	margin-top:7%;
}
#birthTitle{
	margin-bottom: 2%;
	padding-right: 68%;
	
}

#myModal {
	
	text-align: left;
	z-index: 11000;
	
}
#agreeWapper{
	margin-left: 10%;
	padding-right: 10%;

}


#upload {
	display: none;
}
#mheader{
	border-bottom-width: 0px;
}
#mfooter{
	border-top-width: 0px;
	padding-right: 68%;
}

/* modal1 */
#myModal1{
	

}
#mheader1{
	border-bottom-width: 0px;
	padding-top:0px;
	padding-bottom:0px;
}
#mfooter1{
	border-top-width: 0px;
	padding-right: 72%;
	padding-top:0px;
	padding-bottom:0px;
}
#mfooter1 button{
	position:absolute;
	top:82%;
	width:45%;
	
}
#myModal1 .modal-body{
	padding:0px 0px 0px 0px;
	height:600px;
}
#logo{
	position: absolute;
	top:30%;
	left:45%;
	width:10%;
	height:10%;
	color:white;
}
#h21{
	
position: absolute;
top:40%;
color:white;
}
#h21{
position: absolute;
top:43%;
left:30%;
color:white;
}
#h22{
position: absolute;
top:48%;
left:36%;
color:white;
}
#h51{
position: absolute;
top:58%;
left:30%;
color:white;
}
#h52{
position: absolute;
top:63%;
left:30%;
color:white;
}
#h53{
position: absolute;
top:68%;
left:30%;
color:white;
}
#h54{
position: absolute;
top:73%;
left:30%;
color:white;
}

/* 사진업로드 모달 */

#mheader2{
	border-bottom-width: 0px;

}
#modal2h21{
	margin-left:33%;
}
#modal2h41{
margin-left:28%;
}
#modal2h42{
margin-left:26%;
}
#modal2h43{
margin-left:35%;
margin-bottom:5%;
}
#imageLoad{
	margin-left:30%;
	margin-bottom:3%;
	width:30%;

}
#facebook{
	width:80%;
	margin-left:11%;
	margin-top:5%;
	margin-bottom: 3%;
}
#uploadFake{
	
	width:80%;
	margin-left:11%;

}
#mfooter2{
	border-top-width: 0px;
	padding-right: 72%;

	padding-bottom:0px;
}
#mfooter2 button{
	margin-left:120%;
	padding-left:50%;
	padding-right:50%;
	margin-bottom:3%;
}

/* 모달 3  */

#mheader3{
border-bottom-width: 0px;
	
}
#modal3h21{
margin-left:30%;
}
#modal3h41{
margin-left:22%;
}
#modal3h42{
margin-left:28%;
margin-bottom:5%;
}
#myModal3 .modal-body img{
	margin-left:40%;
	width:20%;
	height:20%;
	margin-bottom:7%;
}
#chooseNation{
	width:60%;
	margin-left:20%;
}
#phoneCheck{
	width:60%;
margin-left:20%;
margin-bottom:5%;
}
#nationList{
	position:absolute;
	left:77.5%;
	top:60.3%;
}
#nation{
	margin-left:47%;
}
#phonenum{
margin-left:45%;

}
#authBtn1{
	width:30%;
	padding-top:2%;
	padding-bottom:2%;
	margin-left:35%;
}
#mfooter3{
border-top-width: 0px;
}

/* 모달 4  */
#mheader4{
border-bottom-width: 0px;	
}
#myModal4 .modal-body img{
	width:20%;
	height:20%;
	margin-bottom:5%;
	margin-left:39%;
}
#modal4h21{
	margin-left:26%;
}
#modal4h41{
margin-left:31%;
margin-bottom:5%;
}
#inputAuthNum{
	width:60%;
	margin-left:20%;
}
#mfooter4{
border-top-width: 0px;
}
#authBtn2{
	width:40%;
	margin-bottom:3%;
	padding-top:3%;
	padding-bottom:3%;
	margin-left:30%;
}
#reSend{
width:40%;
padding-top:3%;
	padding-bottom:3%;
	margin-left:30%;
}
#timer{
	margin-left:21%;
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
						html+= " alt=이미지 로드 실패   class='img-circle' id='profilePicture' style='width:265px; height:265px;'>";

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
								var converttime = toHourMinSec(time);
								
								$("#timer").html(converttime);
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
							
							hour = Math.floor(t/3600); 
							min = Math.floor( (t-(hour*3600)) / 60 );
							sec = t - (hour*3600) - (min*60);
							
							/* if(hour < 10) hour = "0" + hour; */
							if(min < 10) min = "0" + min;
							if(sec < 10) sec = "0" + sec;
							
							return ("남은시간 : " + min + "분" +sec + "초");

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
									$("#memberEmail").val($("#accountEm").val());
									$("#memberNm").val($("#firstNm").val() + $("#secondNm").val());
									$("#memberBirth").val($("#yearInput").val()+$("#monthInput").val()+$("#dayInput").val());
									$("#memberPicture").val(load);
									$("#memberPhone").val(phoneNum);
									$("#memberPw").val($("#pw").val());
									
									
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
							var authNum = $("#inputAuthNum").val();
							var memberEmail = $("#memberEmail").val();
							var memberNm = $("#memberNm").val();
							var memberBirth = $("#memberBirth").val();
							var memberPicture = $("#memberPicture").val();
							var memberPhone = $("#memberPhone").val();
							var memberPw = $("#memberPw").val();
							
							$.ajax({
								url : "isAuthKey.do",
								type : "post",
								data : {							
									authNum : authNum,
									member_email : memberEmail,
									member_name : memberNm,
									member_birth : memberBirth,
									member_picture : memberPicture,
									member_phone : memberPhone,
									member_pw : memberPw
									
								},
								success : function(response) {
									
									if(response=='성공'){
										alert(memberEmail);
										opener.location = "successsignup.do";
										self.close();
									}
									}
								});

							}); 
	 		
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
		<div>
		 <input type="text" name="secondName" class="form-control"
					placeholder="이름을 입력하세요" aria-describedby="basic-addon2"
					value=""  id="secondNm"><i class="far fa-user fa-2x" id="secondIcon"></i>
		</div>		
			
			
		 <input type="text" name="firstName" class="form-control"
					placeholder="성을 입력하세요" aria-describedby="basic-addon2"
					value="" id="firstNm"><i class="far fa-user fa-2x" id="firstIcon"></i>
			
			
		 <input type="text" name="accountEmail" class="form-control"
					placeholder="이메일을 입력하세요" aria-describedby="basic-addon2"
					value="" id="accountEm"><i class="fas fa-envelope fa-2x" id="emailIcon"></i>
		
			
		 <input type="password" name="password" class="form-control"
					placeholder="비밀번호를 입력하세요." aria-describedby="basic-addon2"
					value="" id="pw"><i class="fas fa-key fa-2x" id="pwIcon"></i>
			
		</div>
		<div id="bottom">
			<div id="birthTitle"><font>생년월일을 선택하세요</font></div>
			<div class="dropdown" id="month" style="display: inline;">
				<input type="text" name="monthProp" placeholder="월" id="monthInput" class="form-control">
				<a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					id="monthBtn" style="cursor: pointer;"> <span class="caret" id="droplist1"></span>
				</a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel"
					id="monthList" style="overflow:scroll; height:200px">
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
				<input type="text" name="dayProp" placeholder="일" id="dayInput" class="form-control">
				<a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					id="dayBtn" style="cursor: pointer;"> <span class="caret" id="droplist2"></span>
				</a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel"
					id="dayList" style="overflow:scroll; height:200px">
				</ul>
			</div>


			<div class="dropdown" id="year" style="display: inline;">
				<input type="text" name="yearProp" placeholder="년" id="yearInput" class="form-control"><a
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
					id="yearBtn" style="cursor: pointer;"> 
				 <span class="caret" id="droplist3"></span></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel"
					id="yearList" style="overflow:scroll; height:200px"> 
				</ul>
			</div>
		</div>
		<br>

		<div id="complete">
			<button id="completeBtn" data-toggle="modal" data-target="#myModal"
				type="button" class="btn btn-danger">
				<font>회원가입 완료하기</font>
			</button>
			<!--  	 <a id="completeBtn" data-toggle="modal" href="#myModal"><font>가입 완료</font></a> -->
		</div>
		<!-- 	</form> -->
	</div>

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" id="mheader">
<!-- 					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button> -->
					
				</div>
				<div class="modal-body">
					<div id="agreeWapper">
						<div id="agreeTitle">
						<h2>
							<strong><font>가입하시기 전에</font></strong>
						</h2>
						</div>
						<div id="agreeContent">
						<h5>
							<font>Villim은 모두가 환영받을 수 있고 서로 신뢰할 수 있는 커뮤니티를</font>
						</h5>
					
						<h5>
							<font>만들어 나가고자 합니다. 이를 위해, 회원님에게 에어비앤비 서비스 약관에</font>
						</h5>
						
						<h5>
							<font>동의하고 커뮤니티의 회원 모두를 존중하고 차별 없이 대할 것을</font>
						</h5>
					
						<h5>
							<font>약속해주시기를 부탁드리고 있습니다.</font>
						</h5>
					
						<br>
						<h5>
							<strong><font>Villim 커뮤니티를 위한 약속</font></strong>
						</h5>
						
						<h5>
							<font>모든 Villim 커뮤니티 회원을 인종,종교,출신,국가,민족,피부색,</font>
						</h5>
					
						<h5>
							<font>장애,성별,성적 정체성,성적 취향 또는 연령에 상관없이 존중하며 개인적</font>
						</h5>
						
						<h5>
							<font>판단이나 편견 없이 대하겠습니다.</font><a href="#"><font>자세히
									알아보기</font></a>
						</h5>
						<br>

						<h5>
							<strong><font>Villim 서비스 약관</font></strong>
						</h5>
						
						<h5>
							<a href="#"><strong><font>Villim 서비스 약관</font></a>,<a href="#">결제 서비스
								약관</a>,<a href="#">차별 금지 정책</a></strong>에 동의합니다.
						</h5>
					
						<h5>
							또한, Villim<a href="#"><strong><font>개인정보 보호정책</font></strong></a>에 따른 개인정보 이용 및
							처리에도
						</h5>
				
						<h5>
							<strong><font>동의합니다.</font></strong><br>
						</h5>
						</div>
					</div>
				</div>
				<div class="modal-footer" id="mfooter">
					<button type="button" class="btn btn-primary" data-dismiss="modal"
						data-toggle="modal" data-target="#myModal1" id="iamagree">동의
					</button>
					<button type="button" class="btn btn-default" id="iamrefuse">거부</button>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
	
		<div class="modal-dialog">
		
			<div class="modal-content">
				<div class="modal-header" id="mheader1">
<!-- 					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4> -->
				</div>
				<div class="modal-body">
						<img src="resources/images/1.jpg" alt="" style="width: 100%; height:100%;">
						<img src="resources/img/titleLogo.png" alt="" id="logo">
						
							 <h2 id="h21">Villim에 오신 것을</h2>
							 <h2 id="h22">환영합니다.</h2>
							 <h5 id="h51">Villim은 신뢰에 기반해 자신의 집을</h5>
							 <h5 id="h52">빌려주는 호스트를 게스트와 연결해 줍니다.</h5>
							 <h5 id="h53">따라서 계정을 활성화 하려면 몇가지</h5>
							 <h5 id="h54">세부사항을 확인해 주셔야 합니다.</h5>
						
				
				</div>
				<div class="modal-footer" id="mfooter1">
					<button type="button" class="btn btn-danger" data-dismiss="modal"
						data-toggle="modal" data-target="#myModal2" id="nextStep">다음단계로</button>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" id="mheader2"></div>
				<div class="modal-body">
					<div>
						<h2 id=modal2h21>프로필 사진 추가</h2>
						<h4 id=modal2h41>사진을 올려주세요. 추후 호스트 및</h5>
						<h4 id=modal2h42>게스트에게 표시될 수 있도록 회원님의</h5>
						<h4 id=modal2h43>프로필에 추가하겠습니다.</h5>
					</div>
					<div id="imageLoad">
						<img src="./resources/img/signup/default.png" alt="이미지 로드 실패" class="img-circle"
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
				<div class="modal-footer" id="mfooter2">
					<button id="imgLoadBtn" type="button" class="btn btn-danger" data-dismiss="modal"
						data-toggle="modal" data-target="#myModal3">다음단계로</button>

				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" id="mheader3"></div>
				<div class="modal-body">
					<div>
						<h2 id="modal3h21">전화번호 인증하기</h2>
						<h4 id="modal3h41">호스트와 게스트가 여행 중 회원님께 연락할</h4>
						<h4 id="modal3h42">수 있도록 하기 위한 절차입니다.</h4>
						<img src="./resources/img/signup/phone.jpg" alt="사진 로드할 수 없습니다.">
					</div>	

					<div class="dropdown">
						<h5 id="nation">국가</h5>
						<input type="text" class="form-control" placeholder="한국(+82)" id="chooseNation">
						<a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							style="cursor: pointer;"> <span class="caret" id="nationList"></span>
						</a>
						<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
							<li>한국
						</ul>
					</div>
					
					<div>
					<h5 id="phonenum">전화번호</h5>
						<input type="text" placeholder="+82"  name="phone" id="phoneCheck" class="form-control"><br>
						<button class="btn btn-danger" id="authBtn1">
						전화번호 인증
						</button>
			
					</div>
				</div>
				<div class="modal-footer" id="mfooter3">
					

				</div>
			</div>
		</div>
	</div>
	
		<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" id="mheader4"></div>
				<div class="modal-body">
					<div>
						<h2 id="modal4h21">인증번호를 입력하세요</h2>
						<h4 id="modal4h41">3분안에 입력해야합니다.</h4>	
						<img src="./resources/img/signup/auth.png" alt="이미지 로드 실패">
					</div>
					
					<div>
						
						<input type="text" placeholder="인증번호를 입력하세요"  name="authNum" id="inputAuthNum"class="form-control"><div id="timer"></div><br>
						<input type="hidden" id="memberEmail" name="member_email">
						<input type="hidden" id="memberPw" name="member_pw">
						<input type="hidden" id="memberNm" name="member_name">
						<input type="hidden" id="memberBirth" name="member_birth">
						<input type="hidden" id="memberPicture" name="member_picture">
						<input type="hidden" id="memberPhone" name="member_phone">
						<button class="btn btn-danger" id="authBtn2">입력</button><br>
						<button class="btn btn-success" type=button id="reSend">재발급</button>
						
					</div>
				</div>
				<div class="modal-footer" id="mfooter4">
					

				</div>
			</div>
		</div>
	</div>

</body>
</html>