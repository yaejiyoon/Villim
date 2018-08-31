<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>메세지 전송 완료</title>
<style>
#reservationBt {
position:relative;
top:5vh;
    background: #ff2e4d;
    color: #ffffff !important;
    font-size: 15px;
    font-weight:bold;
    height: 50px;
    line-height: 0.8;
    padding: 18px 30px;
    text-transform: capitalize;
    border-radius: 1px;
    letter-spacing: 0.5px;
	border:0px !important;
	cursor:pointer;
	border-radius:100px;
    text-decoration:none;
}



#confirmBt{
    position:relative;
    top:14vh;
    left:-8.1vw;
    background: #ffffff;
    color: #ff2e4d;
	border:2px solid #ff2e4d;
    font-size: 15px;
    font-weight: bold;
    height: 50px;
    line-height: 0.8;
    padding: 18px 30px;
    text-transform: capitalize;
    letter-spacing: 0.5px;
	cursor:pointer;
	border-radius:100px;
    text-decoration:none;
}


</style>
</head>
<body>
<%@ include file="../../resource/include/messageSendHeader.jsp"%>
<div id="wrapper" style="height:38vh; width:34%; margin-top:10vh;position:relative;left:14vw;top:-5vh;"> 
 <div class="container"  style="height:100%; width:100%;">
 <h3 style="font-weight:bold;">메세지가 전송되었습니다.</h3>
 <h4>호스트가 24시간 이내에 응답합니다.</h4>
 <hr style="position:relative;">
 
 
 <h4 style="line-height:1.5;">이 숙소를 예약하기 위해 ${host_name}님에게 메세지를 보낼 필요가 없습니다. 지금 바로 여행 날짜에 대한 예약을 확정할 수 있습니다.</h4>
	 
	 <!-- <form action="reservReq.re">
	 <input type="hidden" value="">
	 <input type="hidden" value="">
	 <input type="hidden" value="">
	 <input type="hidden" value="">
	 <input type="hidden" value="">
	 <input type="hidden" value="">
	 <input type="hidden" value="">
	 <input type="hidden" value="">
	 <a href="#" target="_blank" id="reservationBt" class="themeBtn3">지금 예약하기</a>
   </form> -->
   
    <a href="javascript:history.go(-2)" target="_blank" id="confirmBt" class="themeBtn3">확인</a>  
 </div>

</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>