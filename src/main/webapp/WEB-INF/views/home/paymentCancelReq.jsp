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
<script>
	$(document).ready(function(){
		$("#toindex").click(function(){
			$(location).attr("href","/");
		});
	})
</script>
<style>
@font-face {
	font-family: font2;
	src: url('<c:url value='/ resources/ fonts/ dx.ttf'/>');
}

@font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   }
   
   #continueBT{
   		background-color: white;
		color:#008489;
		border:2px solid #008489;
   }
</style>
<script>
	$(document).ready(function(){
		$("#continueBT").click(function(){
			$(location).attr('href','paymentCancelMsg.re?reserv_seq=${reservationDTO.reservation_seq}');
		});
	})
</script>
</head>
<body>
	<div id="paymemntWrapper">
		<div id="paymentheader">
			<div style="float:left; width:7%; height:100%;">
				<img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
			</div>
			<div style="float:left; width:93%; height:100%;">
				<p id="text" style="display: inline-block;"> > 1.이유를 선택하세요  <p id="text" style="display: inline; color: #d6d6d6">> 2.메세지 보내기 > 3.취소 확인하기</p></p>
			</div>
		</div>
		<div id="paymentContent" style="margin-top: 40px; min-height: 600px;">
			<div id="paymentLeft">
				<div id="paymentLeft-content01" style="border: 0px;">
					<p>취소하려는 이유가 무엇인가요?</p>
					<br>
					<p class="title">이유를 선택하세요</p>
					<select class="form-control">
					 <option style="display:none"> </option>
						<option>숙소가 필요 없어졌어요</option>
						<option>실수로 예약했어요</option>
						<option>호스트가 예약 취소를 원해요</option>
						<option>호스트가 마음에 들지 않아요</option>
						<option>여행 날짜가 변경되었어요</option>
					</select>
					
					<br>
					<br>
					<br>
					<button id="continueBT" class="btn btn-secondary">계속</button>
				</div>
			</div>
			<div id="paymentRight">
				<div id="paymentRight-content">
					<div id="content01">
						<div id="content01-homeName">
							<p>${hdto.home_name }</p>
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
							변경 전 총 예약금
							</p>
							<p style="display: inline; float:right;">₩<fmt:formatNumber value="${reservationDTO.totalAmount }" pattern="#,###" /></p>
						</div>
					</div>
					<div id="content04" style="margin-bottom: 5px;">
						<div style="margin:5px 0px;">
							<p style="display: inline; float:left;">총 환불 금액</p>
							<p style="display: inline; float:right; font-weight: 600;">₩
							<fmt:formatNumber value="${reservationDTO.totalAmount }" pattern="#,###" /></p>
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