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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
<title>대금 수령 방법</title>
<link rel="shortcut icon"
	href="<c:url value='/resources/img/htitle.png'/>" />

<style>
div {
	box-sizing: border-box;
}

body {
	min-width: 1280px;
}

#wrapper {
	margin: 30px auto;
	width: 70%;
	height: auto;
	margin-bottom: 100px;
}

#wrapper-sub {
	width: 100%;
	height: auto;
}

#left-side {
	width: 30%;
	height: 100%;
	float: left;
	display: inline-block;
}

#left-side div {
	font-size: 17px;
	color: #A4A4A4;
	margin-bottom: 10px;
}

#right-side {
	height: 100%;
	width: 67%;
	display: inline-block;
}

.right-title {
	font-size: 25px;
	height: 20%;
	padding-top: 10px;
	padding-bottom: 10px;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

#right-contents {
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

.btn-wrap {
	width: 100%;
}

.btn-wrap-sub1 {
	display: inline-block;
	float: left;
	width: 50%;
}

.btn-wrap-sub2 {
	witdh: 50%;
	display: inline-block;
	float: right;
}

.title {
	margin-top: 20px;
}

input[type=text] {
	width: 70%;
}

#nextbtn {
	color: white;
	background-color: #008489;
}

#cancelbtn {
	color: #008489;
	background-color: white;
	font-weight: bold;
}
/* 모달모달 */
   #likeyModal{
      margin-top: 50px;
      margin: 0 auto;
      height:auto;
      font-family:font2 !important;
   }
   
   .modal-dialog.reserv-dialog{
      width: 380px;
      height: 100%;
   }
   
   .modal-content.reserv-content{
      height: auto;
   }
   
   .modal-header.reserv-header{
      width:100%;
      border: 0px !important;
   }
   
   .basicAmenities{
      border-bottom:  1px solid #d6d6d6;
      margin: 20px 0px;
      
   }
   
   .modal-body.reserv-body{
      padding:0 30px;
      height: 100px;;
   }

   .reserv-footer{
      border-top: 1px solid #d6d6d6;
      
   }
   
   .reserv-body button{
      background-color: white;
      color:#ff5a5f;
      border:2px solid #ff5a5f;
   }
   
   .reserv-body button:hover{
      color:#ff5a5f;
   }
</style>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>

	<div id="wrapper">
		<div id=wrapper-sub>
			<div id="left-side">
				<!-- 				<div> -->
				<!-- 					<a href="hostHomeManage.do" style="color: #A4A4A4;">알림</a> -->
				<!-- 				</div> -->
				<!-- 				<div> -->
				<!-- 					<a href="#" style="color: #A4A4A4;">결제 수단</a> -->
				<!-- 				</div> -->
				<div>
					<a href="hostHomePayment.do" style="color: Black;"><b>대금 수령
							방법</b></a>
				</div>
				<div>
					<a
						href="hostHomePaymentBreakdown.do?seq=0&startmon=1&startyear=2018&endmon=9&endyear=2018"
						style="color: #A4A4A4;">대금 수령 내역</a>
				</div>
			</div>
			<div id="right-side">
				<form id="subm" action="accountAssign.do" method="post">
				<div>
					<div class=right-title>
						<b>은행정보 입력</b>
					</div>
					<div class="title">
						<div>
							<b>은행이름</b>
						</div>
						<input id="bname" name="bname" type="text"
							placeholder="예 : 농협" class="form-control input-lg">
					</div>

					<div class="title">
						<div>
							<b>계좌 등록 이름</b>
						</div>
						<input type="text" id="mname" name="mname" placeholder="예 :최인형"
							class="form-control input-lg">
					</div>

					<div class="title">
						<div>
							<b>신분증 정보</b>
						</div>
						<input type="text" id=mnum name=mnum class="form-control input-lg"
							placeholder="예 : 9012261111111">
					</div>

					<div class="title">
						<div>
							<b>계좌 번호</b>
						</div>
						<input type="text" id="anum" name="anum"
							placeholder="예 : 3020008422921" class="form-control input-lg">
					</div>
				</div>
				<div class=line></div>

				<div class="btn-wrap">
					<div class="btn-wrap-sub1">
						<button id="cancelbtn" onclick="history.go(-1);"
							class="btn btn-lg" type="button">〈 뒤로</button>
					</div>
					<div class=btn-wrap-sub2>
						<button id="nextbtn" class="btn btn-lg" type="button"
							class="close" data-dismiss="modal" aria-label="Close">다음〉</button>
					</div>
			
				</div>
			</div>
			
				<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog reserv-dialog">
					<div class="modal-content reserv-content">
						<div class="modal-header reserv-header">
							<img src="<c:url value='/resources/img/logo2.png'/>"
								style="width: 60px;">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span><span class="sr-only">Close</span>
							</button>
						</div>
						<div class="modal-body reserv-body">
							<p style="font-weight: 600;">계좌를 등록하시겠습니까?</p>
							<button id="assign" class="btn btn-secondary""
								>등록</button>
							<button class="btn btn-secondary" "
								data-dismiss="modal">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</form>
			
			
			
			<script>
				$(document).ready(function() {
					$('#bname-sub').hide();
					$('#mname-sub').hide(); 
					$('#mnum-sub').hide();
					$('#anum-sub').hide();
				})
				
				$('#nextbtn').click(function() {
									if (($('#bname').val() == "")
											|| ($('#mname').val() == "")
											|| ($('#mnum').val() == "")
											|| ($('#anum').val() == "")) {

										if ($('#bname').val() == "") {
											var output = "<div id='bname-sub'>은행이름은 필수영역입니다.</div>"

											if ($('#bname-sub').length == 0) {
												$('#bname').after(output);
											} else {
											}
											$('#bname').css("border",
													"1px solid red");
											$('#bname-sub').css("color", "red");
										} else {
											$('#bname').css("border",
													"1px solid black");
											$('#bname-sub').remove();
											$('#bname-sub').css("color", "red");
										}

										if ($('#mname').val() == "") {
											var output = "<div id='mname-sub'>이름은 필수영역입니다.</div>"

											if ($('#mname-sub').length == 0) {
												$('#mname').after(output);
											} else {
											}
											$('#mname').css("border",
													"1px solid red");
											$('#mname-sub').css("color", "red");
										} else {
											$('#mname').css("border",
													"1px solid black");
											$('#mname-sub').remove();
											$('#mname-sub').css("color", "red");
										}

										if ($('#mnum').val() == "") {
											var output1 = "<div id='mnum-sub'>신분증 번호는 필수영역입니다.</div>"

											if ($('#mnum-sub').length == 0) {
												$('#mnum').after(output1);
											} else {
											}
											$('#mnum').css("border",
													"1px solid red");
											$('#mnum-sub').css("color", "red");
										} else {
											$('#mnum').css("border",
													"1px solid black");
											$('#mnum-sub').remove();
											$('#mnum-sub').css("color", "red");
										}

										if ($('#anum').val() == "") {
											var output1 = "<div id='anum-sub'>계좌번호는 필수영역입니다.</div>"

											if ($('#anum-sub').length == 0) {
												$('#anum').after(output1);
											} else {
											}
											$('#anum').css("border",
													"1px solid red");
											$('#anum-sub').css("color", "red");
										} else {
											$('#anum').css("border",
													"1px solid black");
											$('#anum-sub').remove();
											$('#anum-sub').css("color", "red");
										}
									} else {
										$('#myModal2').modal();
									}
								})
			</script>



		
			<script>
				$('#assgin').on('click' , function(){
					console.log("asldkjaskld");
					$('#subm').submit();
				})
			
			
				// 					$.ajax({
				// 							url : "https://testapi.open-platform.or.kr", 
				// 							type : "get",
				// 							data:{
				// 								client_id:'l7xx8e89e5098dc14e8e87198f4fb1f4fdab',
				// 								redirect_uri:'https://192.168.120.113/hostHomePaymentAddress.do',
				// 								scope:inquiry,
				// 								client_info:'이녕초이',
				// 								auth_type:0,
				// 								lang:'kor'
				// 							},
				// 							contentType:" application/x-www-form-urlencoded; charset=UTF-8",
				// 							success : function(resp) {
				// 							console.log("성공::"+ resp);
				// // 							console.log(resp.bank_code_std); 
				// // 							console.log(resp.account_num);
				// // 							console.log(resp.tran_dtime);
				// 							}
				// 						});

				// 					$.ajax({
				// 							url : "https://testapi.open-platform.or.kr/oauth/2.0/token", 
				// 							type : "post",
				// 							data:{
				// 								client_id:'l7xx8e89e5098dc14e8e87198f4fb1f4fdab',
				// 								client_secret:'b44314fd0881410ca6ebac6d0a79797d',
				// 								scope:"oob",
				// 								grant_type:"client_credentials"
				// 							},
				// 							contentType:" application/x-www-form-urlencoded; charset=UTF-8",
				// 							success : function(resp) {
				// 								console.log("성공::"+ resp);
				// 								console.log('토큰::'+resp.access_token);

				// 								$.ajax({
				// 		 							url : "https://testapi.open-platform.or.kr/inquiry/real_name", 
				// 		 							type : "post",
				// 		 							beforeSend : function(xhr){
				// 		 						    		xhr.setRequestHeader("Bearer", resp.access_token);
				// 	 						        },
				// 		 							data:{
				// 		 								scope:"oob",
				// 										bank_code_std:"011",
				// 										account_num:"3020008422921",
				// 										account_holder_info:"9012261",
				// 										tran_dtime:"20160310101921"		 							
				// 		 							},
				// 		 							contentType:"application/x-www-form-urlencoded; charset=UTF-8",
				// 		 							success : function(resp) {
				// 		 								console.log("성공::"+ resp);
				// 		 								console.log(resp.bank_name);
				// 		 								console.log(resp.account_holder_info);
				// 		 								console.log(resp.account_holder_name);
				// 		 							}
				// 		 						});
			</script>

		</div>
	</div>

	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>