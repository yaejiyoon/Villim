<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="<c:url value="../resources/css/home/reservationReq.css?var=2" />" rel="stylesheet" />
<link href="<c:url value="../resources/css/home/payment.css?var=3" />" rel="stylesheet" />

<!-- 결제 -->
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<script>
	$(document).ready(function(){
		
		var token ='';
		
		$("#toindex").click(function(){
			$(location).attr("href","/");
		});
		
		
		$("#ddBT").click(function(){
			
			$.ajax({
				url:"https://api.iamport.kr/users/getToken",
				data:{
					imp_key : "3566446879345688",
					imp_secret : "ROZteDbPjADbIXeFMXM9Mtj4NUM1T3ULRUe6xqWR0A2Ixhnkfau1EN5rISsBVnnNhBUP2QH2rKLZ19kg"
				},
				type:"post",
				success:function(resp){
					token = resp.response.access_token;
					console.log(token);
					
					/* $.ajax({
						
						url:"https://api.iamport.kr/payments/cancel",
						type:"post",
						processData : false,
						contentType : false,
						beforeSend: function(xhr) { 
						      xhr.setRequestHeader('X-ImpTokenHeader', token); 
			
						},
							
						
						success:function(resp){
							
							console.log(resp);
						}	

							
					}) */
				

					}
				})
				
				

		})
		
		$("#aaBT").click(function(){

			$.ajax({
				url:"https://api.iamport.kr/payments/cancel?_token="+token,
				type:"post",
				data:{
				    "merchant_uid": "merchant_1535703408487",
				    "cancel_reason": "사유",
				    "pay_method": "card"
				},
				success:function(resp){
					console.log(resp);
				}
			})
		
		})
		
		$("#paymentBT").click(function(){
			var IMP = window.IMP; // 생략가능
			IMP.init('imp31935218');
			
			IMP.request_pay({
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : 'villim',
			    amount : 1000,
			    /* amount : ${reservationDTO.totalAmount}, */
			    buyer_email : '${memberDTO.member_email}',
			    buyer_name : '${memberDTO.member_name}',
			    buyer_tel : '${memberDTO.member_phone}',
			    buyer_addr : '${memberDTO.member_location}',
			}, function(rsp) {
			    if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			        
			        $(location).attr('href','payment.re?seq='+${reservationDTO.reservation_seq}+'&home_seq='+${hdto.home_seq}+'&mr='+rsp.merchant_uid);
			        
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			    }
			    alert(msg);
			});
		});
	})
</script>
<style>
@font-face {
	font-family: font2;
	src: url('<c:url value='/resources/fonts/dx.ttf'/>');
}

@font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
        
   }
   
</style>
</head>
<body>
	<div id="paymemntWrapper">
		<div id="paymentheader">
			<div style="float:left; width:7%; height:100%;">
				<img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
			</div>
			<div style="float:left; width:93%; height:100%;">
				<p id="text"> > 확인 및 결제</p>
			</div>
		</div>
		<div id="paymentContent">
			<div id="paymentLeft">
				<div id="paymentLeft-content01">
					<p>확인 및 결제</p>
					<br>
					<p class="title">환불 정책: 유연 — 취소 무료</p>
					<p>체크인 24시간 전까지 예약을 취소하면 전액 환불됩니다. 그 이후 체크인 전에 취소하면 첫 1박 요금은 환불되지 않습니다.</p>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<p><a href="home_info.do?seq="+${reservationDTO.home_seq } class="greenA">숙소 이용규칙</a>, <a href="#" class="greenA">환불 정책</a>, 및 <a href="#" class="greenA">게스트 환불 정책</a>에 동의합니다. 또한, 서비스 수수료를 포함하여 명시된 총 금액을 결제하는 데 동의합니다.</p>
					<br>
					<br>
					<button id="paymentBT" class="btn btn-secondary">확인 및 결제</button>
					<button id="ddBT" class="btn btn-secondary">dd</button>
					<button id="aaBT" class="btn btn-secondary">aa</button>
					<br>
					<br>
					<br>
				</div>
			</div>
			<div id="paymentRight">
				<div id="paymentRight-content">
					<div id="content01">
						<div id="content01-homeName">
							<p>${hdto.home_name }집집집집집집집집집</p>
							<p>${hdto.home_addr1 }, ${hdto.home_addr2 }의 ${hdto.home_type }</p>
							<p>★★★★★</p><p>후기 137개</p>
							<p></p>
						</div>
						<div id="content01-homepic">
							<img src="<c:url value='/resources/img/home.jpg'/>">
						</div>
					</div>
					<div id="content02">
						<div style="margin:5px 0px;">
							<img src="<c:url value='/resources/img/group.png'/>" id="group">
							<p style="display: inline;">게스트 ${reservationDTO.population }명</p>
						</div>
						<div style="margin:5px 0px 7px 0px;">
							<img src="<c:url value='/resources/img/calendar.png'/>" id="calen">
							<p style="display: inline;">${checkInDate }     →    ${checkOutDate }</p>
						</div>
					</div>
					<div id="content03">
						<div style="margin:5px 0px;">
							<p style="display: inline; float:left;">
							₩<fmt:formatNumber value="${hdto.home_price }" pattern="#,###" /> x ${calDateDays }박
							</p>
							<p style="display: inline; float:right;">₩<fmt:formatNumber value="${reservationDTO.nightsAmount }" pattern="#,###" /></p>
						</div>
						<div style="margin:5px 0px;">
							<p style="display: inline; float:left;">청소비</p>
							<p style="display: inline; float:right;">₩<fmt:formatNumber value="${reservationDTO.cleaningFee }" pattern="#,###" /></p>
						</div>
						<div style="margin:5px 0px;">
							<p style="display: inline; float:left;">서비스 수수료</p>
							<p style="display: inline; float:right;">₩<fmt:formatNumber value="${reservationDTO.serviceFee }" pattern="#,###" /></p>
						</div>
					</div>
					<div id="content04">
						<div style="margin:5px 0px;">
							<p style="display: inline; float:left;">총 합계 (KRW)</p>
							<p style="display: inline; float:right; font-weight: 600; margin-bottom: 15px;">₩
							<fmt:formatNumber value="${reservationDTO.totalAmount }" pattern="#,###" /></p>
						</div>
					</div>
					<div id="content05">
						<div style="margin: 10px 0px;">
							<p class="title" style="float: left;">환불 정책: 유연 — 취소 무료</p>
							<p style="float: left; margin-bottom: 15px;">48시간 이내에 취소하면<br> 전액이 환불됩니다. <a class="greenA" href="#" style="font-weight: 400;">자세히 알아보기</a></p>
							<img src="<c:url value='/resources/img/refund.jpg'/>" style="position:absolute; width:50px; right:15px;">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="paymentfooter">
			<img src="<c:url value='/resources/img/logo.png'/>">
			<img src="<c:url value='/resources/img/copyright.png'/>" style="width:15px;">
			<p>villim, Inc.</p>
		</div>
	
	</div>
</body>
</html>