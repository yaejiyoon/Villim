<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
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

<!-- animated -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Baloo|Ubuntu" rel="stylesheet">

<!-- 달력 -->
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/datepicker.js?var=1" />"></script>
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/i18n/datepicker.en.js" />"></script>
<link rel="stylesheet" href="<c:url value="../../resources/css/home/dist/css/datepicker.css?var=1" />" />
<link rel="stylesheet" href="<c:url value="../../resources/css/home/docs/css/style.css?var=1" />"/>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<title>${guest_name}님과의 대화</title>
<style>
/* @font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   } */
.card {
	transition: 0.3s;
	width: 18vw;
	height: 170vh;
	border: 1px solid #c9cacc;
	position: relative;
	left:22.5vw;
	margin-top:1vh;
	margin-bottom:10vh;
}


.text-right{ text-align: right; }

.comments-app{
  margin: 50px auto;
  max-width: 680px;
  padding: 0 50px;
  width: 100%;
}

.comments-app h1{
  color: #191919;
  margin-bottom: 1.5em;
  text-align: center;
  text-shadow: 0 0 2px rgba(152, 152, 152, 1);
}

.comment-form{  }
.comment-form .comment-avatar{  }

.comment-form .form{ margin-left: 100px; }

.comment-form .form .form-row{ /* margin-bottom: 10px; */ }
 .comment-form .form .form-row:last-child{ margin-bottom: 0; }

.comment-form .form .input{
  background-color: #fcfcfc;
  border: none;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  color: #555f77;
  font-family: inherit;
  font-size: 14px;
  padding: 5px 10px;
  outline: none;
  width: 100%;

  -webkit-transition: 350ms box-shadow;
  -moz-transition: 350ms box-shadow;
  -ms-transition: 350ms box-shadow;
  -o-transition: 350ms box-shadow;
  transition: 350ms box-shadow;
}

.comment-form .form textarea.input{
  height:14vh;
  padding: 0px;
  position:relative;
  left:-25vw;
  top:-2.5vh;
}

.comment-form .form label{
  color: #555f77;
  font-family: inherit;
  font-size: 14px;
}

.comment-form .form input[type=submit]{
  background-color: #555f77;
 border: 4px solid #969696;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  color: #fff;
  cursor: pointer;
  display: block;
  margin-left: auto;
  outline: none;
  padding: 6px 15px;

  -webkit-transition: 350ms box-shadow;
  -moz-transition: 350ms box-shadow;
  -ms-transition: 350ms box-shadow;
  -o-transition: 350ms box-shadow;
  transition: 350ms box-shadow;
}

.comment-form .form .input:focus,
.comment-form .form input[type=submit]:focus,
.comment-form .form input[type=submit]:hover{

}

.comment-form .form.ng-submitted .input.ng-invalid,
.comment-form .form .input.ng-dirty.ng-invalid{
  
}

.comment-form .form .input.disabled {
    background-color: #E8E8E8;
}



.comment-form,
.comment{ 
   margin-bottom: 0vh; 
  height:auto;
  position: relative;
  z-index: 0;
} 


.comment-form .comment-avatar,
.comment .comment-avatar{
  border: 2px solid #fff;
  border-radius: 50%;
  box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
  height: 80px;
  left: 16;
  overflow: hidden;
  position: absolute;
  top: 0;
  width: 80px;
}

.comment-form .comment-avatar img,
.comment .comment-avatar img{
  /* display: block; */
  height: auto;
  width: 100%;
}

.comment .comment-box{
  background-color: #fcfcfc;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  margin-left: 100px;
  position: relative;
  padding: 15px;
}

.comment .comment-box:before,
.comment .comment-box:after{
  border-width: 10px 10px 10px 0;
  border-style: solid;
  border-color: transparent #FCFCFC;
  content: "";
  left: -10px;
  position: absolute;
  top: 20px;
}

.comment .comment-box:before{
  border-color: transparent rgba(0, 0, 0, .05);
   top: 22px;
}

.comment .comment-text{
  color: #555f77;
  font-size: 15px;
  margin-bottom: 21px;
}

.comment .comment-footer{
  color: #acb4c2;
  font-size: 13px;
}

.comment .comment-footer:after{
  content: "";
  display: table;
  clear: both;
}

.comment .comment-footer a{
  color: #acb4c2;
  text-decoration: none;

  -webkit-transition: 350ms color;
  -moz-transition: 350ms color;
  -ms-transition: 350ms color;
  -o-transition: 350ms color;
  transition: 350ms color;
}

.comment .comment-footer a:hover{
  color: #555f77;
  text-decoration: underline;
}

.comment .comment-info{
  float: left;
  width: 85%;
}

.comment .comment-author{ }
.comment .comment-date{ }

.comment .comment-date:before{
  content: "|";
  margin: 0 10px;
}

.comment-actions{
  float: left;
  text-align: right;
  width: 15%;
}



.box1 {
  width: 300px;
  margin: 50px auto;
  border: 4px solid #e2e2e2;
  background:#e2e2e2;
  padding: 20px;
  text-align: center;
  font-weight: 900;
  color: #595858;
  font-family: arial;
  position: relative;
  
  
}


/* speech bubble 5 */

.sb5:before {
  content: "";
  width: 0px;
  height: 0px;
  position: absolute;
  
  border-left: 10px solid #fff2f2;
  border-right: 10px solid transparent;
  border-top: 10px solid #fff2f2;
  border-bottom: 10px solid transparent;
  right: -21px;
  top: 6px;
 
}

.sb5:after {
  content: "";
  width: 0px;
  height: 0px;
  position: absolute;
  border-left: 7px solid #fff2f2;
  border-right: 7px solid transparent;
  border-top: 7px solid #fff2f2;
  border-bottom: 7px solid transparent;
  right: -11px;
  top: 10px;
  
}


/* speech bubble 6 */

.sb6:before {
  content: "";
  width: 0px;
  height: 0px;
  position: absolute;
  border-left: 10px solid transparent;
  border-right: 10px solid #e2e2e2;
  border-top: 10px solid #e2e2e2;
  border-bottom: 10px solid transparent;
  left: -21px;
  top: 6px;
}

.sb6:after {
  content: "";
  width: 0px;
  height: 0px;
  position: absolute;
  border-left: 7px solid transparent;
  border-right: 7px solid #e2e2e2;
  border-top: 7px solid #e2e2e2;
  border-bottom: 7px solid transparent;
  left: -11px;
  top: 10px;
}

.img-circle {
    border-radius: 50%;
}


.card2 {
    border: 1.3px solid #e8e8e8;
    transition: 0.3s;
    width: 30%;
    height:35vh;
    margin: 0 auto;
    position:relative;
    left:10vw;
    top:-180vh;
}

.container {
    padding: 2px 16px;
}

/* Reset Select */
select {
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  appearance: none;
  outline: 0;
  box-shadow: none;
  background: #f9f9f9;
  background-image: none;
  border:0px;
}
/* Custom Select */
.select {
  position: relative;
  display: block;
  width: 15.5em;
  height: 3em;
  line-height: 3;
  background: #f2f2f2;
  color:black;
  overflow: hidden;
  border-radius: .25em;
  border:0px;
    left:3vw;
  top:-5.5vh;
}
select {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0 0 0 .5em;
  color: #5e5e5e;
  left:1vw;
  cursor: pointer;
  border:0px;
}
select::-ms-expand {
  display: none;
  
}
/* Arrow */
.select::after {
  content: '\25BC';
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  padding: 0 1em;
  background: #f9f9f9;
  pointer-events: none;
}
/* Transition */
.select:hover::after {
  color: #f39c12;
}
.select::after {
  -webkit-transition: .25s all ease;
  -o-transition: .25s all ease;
  transition: .25s all ease;
}

/* calender */

.my-class{
background:#bcbcbc;
color:#848484;
font-weight:800;

}
.datepicker-here{
  /* pointer-events: none; */
}


.unactive {
  display:none;
}

.invisible {
  display:none;
}

ul li {
  color: #918f8f;
  display: block;
  position: relative;
  float: left;
  width: 100%;
  height: 100px;
}
ul li input[type="radio"] {
  position: absolute;
  visibility: hidden;
}

ul li label {
  display: block;
  position: relative;
  font-weight: 400;
  font-size: 1.5em;
  padding: 25px 25px 25px 80px;
  margin: 10px auto;
  height: 30px;
  z-index: 9;
  cursor: pointer;
  -webkit-transition: all 0.25s linear;
}

ul li:hover label {
  color: #918f8f;
}

ul li .radiobutton {
  display: block;
  position: absolute;
  border: 4px solid #918f8f;
  border-radius: 100%;
  height: 30px;
  width: 30px;
  top: 30px;
  left: 20px;
  transition: border 0.25s linear;
  -webkit-transition: border 0.25s linear; 
}

 ul li:hover .radiobutton {
  border: 4px solid #918f8f;
}

ul li .radiobutton::before {
  display: block;
  position: absolute;
  content: "";
  border-radius: 100%;
  height: 20px;
  width: 20px;
  top: 5px;
  left: 5px;
  margin: auto;
  transition: background 0.25s linear;
  -webkit-transition: background 0.25s linear;
}
input[type="radio"]:checked ~ .radiobutton::before {
  background: #333333;
  margin: auto;
  transition: background 0.25s linear;
  -webkit-transition: background 0.25s linear;
}
input[type="radio"]:checked ~ .radiobutton {
  border: 4px solid #333333;
}

input[type="radio"]:checked ~ label {
  color: #333333;
}
</style>
<script>
$(document).ready(function(){
	var week = ['일', '월', '화', '수', '목', '금', '토'];

		var dayOfCI = week[new Date($('#checkIn').val()).getDay()];
		var dayOfCO = week[new Date($('#checkOut').val()).getDay()];
		
		$('#dayCI').html(dayOfCI+"요일");
		$('#dayCO').html(dayOfCO+"요일");
		
	
		
  			$('#msgSendBt').click(function(){
    		
  				
  				if(!$('#message_content').val()){
  					
  					$('.comments-app').prepend("<div class=\"alert alert-danger\" style=\"position:relative;width:48%;top:4.8vh;left:0.4vw;background-color:white;\"><span class=\"glyphicon glyphicon-alert\"></span><strong  style=\"border:white;background:white;\"> 메세지를 입력후 버튼을 눌러주세요</strong></div>");
  					window.setTimeout(function() {
  		        	    $(".alert").fadeTo(1000, 0).slideUp(1000, function(){
  		        	        $(this).remove(); 
  		        	    });
  		        	}, 3000);
  		        	
  		        	return false;
  					
  				}
  				
  	            
  				
  				$.ajax({
  					type:"POST",
  				    url:"messageSendInRoom.msg",
  					data:"message_room_seq="+parseInt($("#message_room_seq").val())+"&home_seq="+parseInt($('#home_seq').val())+"&fromID="+$('#userId').val()+"&toID="+$('#guest_email').val()+"&message_content="+$('#message_content').val(),
  					success:function(resp){
  						$('.co').prepend("<div class=\"comment\" style=\"height:auto;\"><div class=\"comment-image\" style=\"width:3.7vw;height:7vh;position:relative;left:26vw;top:5vh;\"><img src=\"files/${host_picture}\" style=\"width:100%;height:100%;position:relative;\" class=\"img-circle\" alt=\"avatar\"></div><div  class=\"box1 sb5\" style=\"position:relative;left:-3vw;width:80%;height:auto;top:-7vh;margin-bottom:0;\">"+resp.message_content+"<h5 style=\"position:relative;top:2vh;left:8vw;\">"+resp.message_time+"</h5></div></div>");
  					}
  					
  					
  				});
  				
  				$('#message_content').val("");
  				
  				
  			})
  			
  	
  	$("#reservRejectBT").click(function(){
  		rejectForm.submit();
  	})
	
})
</script>
</head>
<body>
<%@ include file="../../resource/include/header_msg.jsp" %>



		

<div class="card">
						<div class="row" style="font-weight:700;width:100%;top:-8vh;height:30vh;position:relative;left:0.8vw;">
			<div style="position:relative;top:2vh;">
					<h4 style="position:relative;top:1.6vh;left:2.5vw;color:#5e5e5e;font-weight:700;font-family: font;">예약 세부정보</h4>
					<hr style="color:gray;width:70%;position:relative;top:2vh;">
				<div style="position:relative;  top:4vh;left:5.3vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;color:#9e9e9e;">체크인</h6><h6 style="display: inline !important;top:-2.8vh; margin:1vw;position:relative; left:1vw;font-weight:700;color:#9e9e9e;">체크 아웃</h6></div>
				<div style="position:relative;  top:7vh;left:5vw;font-weight:700;"><h6  style="display: inline !important;position:relative; top:-4.5vh;left:-1.4vw;margin:1vw;font-weight:700;">${msgRoom.checkIn}</h6><h6 style="display: inline !important; margin:1vw;position:relative; left:1vw;top:-4.5vh;font-weight:700;">${msgRoom.checkOut}</h6></div>
				<div style="position:relative;  top:7vh;left:5.5vw;font-weight:700;"><h6 id="dayCI" style="display: inline !important;position:relative; top:-4.5vh;left:-1.7vw;margin:1vw;font-weight:700;">$요일</h6><h6 id="dayCO" style="display: inline !important; margin:1vw;position:relative; left:1.2vw;top:-4.5vh;font-weight:700;">$요일</h6></div>
				<input id="checkIn" type="hidden" value="${splitCheckIn}">
				<input id="checkOut"  type="hidden" value="${splitCheckOut}">
				<span class="glyphicon glyphicon-triangle-right" style="position:relative;left:8.8vw;top:-1vh;"></span>
				<hr style="color:gray;width:70%;position:relative;top:1vh;">
				<div style="position:relative;  top:3vh;left:5.3vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;color:#9e9e9e;">인원</h6></div>
				<div style="position:relative;  top:3vh;left:5.4vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;">${msgRoom.totalNumber}명</h6></div>
		
			</div>
			</div>
			
			
			<div class="row" style="height:24vh;position:relative;left:0.8vw;top:-8vh;width:100%;">
			
			<div style="position:relative;top:1vh;">
			<h4 style="position:relative;top:1.6vh;left:2.5vw;color:#5e5e5e;font-weight:700;font-family: font;">호스팅 대금</h4>
			<div style="position:relative;  color:#5e5e5e;top:3vh;left:1vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:2vw;top:0vh;width:15vw;line-height:4vh;">￦${home_price} x ${diffDay}박 </h5><h5 style="display: inline !important;position:relative;left:5.8vw;">￦${stayPrice}</h5></div>
            <div style="position:relative;  color:#5e5e5e;top:3vh;left:1vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:2vw;top:0vh;width:15vw;line-height:4vh;">서비스 수수료</h5><h5 style="display: inline !important;position:relative;left:6.8vw;">￦${home_servicefee}</h5></div>
            <div style="position:relative;  color:#5e5e5e;top:3vh;left:1vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:2vw;top:0vh;width:15vw;line-height:4vh;">청소비</h5><h5 style="display: inline !important;position:relative;left:9.2vw;">￦${home_cleaningfee}</h5></div>
			<hr style="background-color:#727272;width:70%;position:relative;top:1.9vh;font-weight:900;height:3px;">
			<div style="position:relative;  top:-1vh;left:0vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:4.1vw;top:1vh;width:15vw;font-weight:700;">합계</h5><h5 style="display: inline !important;position:relative;left:10vw;font-weight:700;top:1vh;">￦${totalPrice}</h5></div>
			
			
			</div>
			
			</div>
			<hr style="color:#666666;width:70%;position:relative;top:-6vh;font-weight:900;height:15px;">
			
			
			<div class="row" style="height:24vh;position:relative;left:0.8vw;top:-9vh;width:100%;">
			<div style="width:75%;position:relative;top:1vh;left:3vw;">
			<h4 style="position:relative;top:0vh;left:-0.8vw;color:#5e5e5e;font-weight:700;line-height:1.3;font-family: font;" id="reservCancelBT">예약 취소</h4>
			<h5 style="position:relative;top:2vh;left:-0.8vw;color:#5e5e5e;line-height:1.7;width:75%;">현재 숙소에 유연 환불 정책을 적용하고 계십니다.
이 예약을 취소하면 페널티를 받게 됩니다. 페널티에는 1년간 슈퍼호스트 지위 박탈, 취소 기록을 보여주는 후기 공개, 취소 수수료가 포함되며, 취소한 예약에 해당하는 날짜가 달력에서 차단됩니다.</h5>
			</div>
			</div>
			
			<hr style="color:#666666;width:70%;position:relative;top:-10vh;font-weight:900;height:15px;">
	
			<div class="row" style="height:22vh;position:relative;left:0.8vw;top:-15vh;width:100%;">
			<div style="width:75%;position:relative;top:3vh;left:3vw;">
			<h4 style="position:relative;top:2vh;left:-0.8vw;color:#5e5e5e;font-weight:700;line-height:1.3;font-family: font;">언제나 빌림을 통해 대화하세요</h4>
			<h5 style="position:relative;top:4vh;left:-0.8vw;color:#5e5e5e;line-height:1.7;width:75%;">안전한 결제를 위해 빌림 웹사이트나 앱 외부에서 송금하거나 대화를 나누지 마세요</h5>
			</div>
			</div>
			
			
			<div class="row" style="position:relative;width:100%;left:0.8vw;top:-15vh;height:60.5vh;">
			<div style="position:relative;top:2vh;">
			<h4 style="color:#5e5e5e;position:relative;top:1vh;left:2.4vw;font-weight:700;font-family: font;">게스트 소개 </h4>
			<div style="width:4.2vw;height:7.7vh;position:relative;left:3vw;top:2.9vh;">
            <img src="files/${guest_picture}" style="width:100%;height:100%;position:relative;" class="img-circle" alt="avatar">
			</div>
			<h4 style="color:#5e5e5e;position:relative;top:-6vh;left:7.8vw;">${guest_name}</h4>
			<h5 style="color:#9e9e9e;position:relative;top:-6vh;left:7.8vw;">${guest_location}</h5>
            <a style="color:#337a46;position:relative;left:7.8vw;top:-6vh;" data-toggle="modal" data-target="#demo-2">신고하기</a>
            <hr style="color:#666666;width:70%;position:relative;top:-6vh;font-weight:900;height:15px;">
            <c:if test="${!empty getHomeNames}">
     <div class="select">
    <select name="slct" id="slct">
<c:forEach var="homeList" items="${getHomeNames}" varStatus="i">
 <option value="${homeList.home_name}">${homeList.home_name}</option>
</c:forEach>
    </select>
    
     </div>
    <!-- 달력    -->
   
    <div class="datepicker-here" style="position:relative;width:90%;top:-2vh;left:0.4vw;border:0px;z-index:50000;"></div>
   <script>
                      $(document).ready(function(){
       
                    	 
                         var eventDates =[];
                         <c:forEach var="item" items="${date}">
                         eventDates.push("${item}");
                         </c:forEach>
                         for(var i=0 in eventDates.length){
                        	 console.log(eventDates[i])
                         }
                    	  
                          
                    	  
                          $('.datepicker-here').datepicker({
                        	
                               dateFormat : "yyyy-mm-dd",
                               minDate:new Date(),
                               language: {
                                  days: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                                   daysShort: ['일', '월', '화', '수', '목', '금', '토'],
                                   daysMin: ['일', '월', '화', '수', '목', '금', '토'],
                                   months: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
                                   monthsShort: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
                                   today: '오늘',
                                   clear: '날짜 지우기',
                                   dateFormat: "yyyy/mm/dd",
                                   timeFormat: 'hh:ii aa'
                                },
                                 onRenderCell: function (date, cellType) {
                               	  
                               	  var currentDate = date.getDate();
                                     var currentMonth = date.getMonth();
                                     currentMonth = "0"+currentMonth;
                                     
                                     if (cellType == 'day') {
                                        for(var i=0; i<eventDates.length;i++){
                                           
                                           var eventYear = eventDates[i].split('-')[0];
                                              var eventMonth = eventDates[i].split('-')[1]-1;
                                           eventMonth = "0"+eventMonth;
                                              var eventDay = eventDates[i].split('-')[2];
                                              
                                              
                                              if(eventMonth == currentMonth){
                                                 if(eventDay == currentDate){
                                                    return {
                                                         classes: 'my-class',
                                                         disabled: true
                                                        
                                                      }
                                                 }
                                              }
                                              
                                        }
                                 }
                                }
                                    
                            });
                      })
  					 
                           </script>
  
  </c:if>
			</div>
              
				</div>
			

			
		</div>

<input type="hidden" value="${date}" id="date">		
		<!--예약 확인 카드  -->
<c:forEach var="re" items="${reservCheck}">
<c:if test="${re.reserv_state==0}">
<div class="card2 animated slideInRight">
 
  <div class="container"  style=" width:100%;padding:1;">
    <h4><b>${guest_name}님이 숙소 예약을 요청합니다. </b></h4> 
    <p style="padding-top:2vh;">숙박 기간  ${re.reserv_checkin} ~ ${re.reserv_checkout}</p>
     <p style="paddgin-top:-3vh;">인원수  ${re.population}명</p>
    <p style="color:gray;padding-top:-1vh;"><span class="glyphicon glyphicon-time" style="color:gray;padding:0;"></span>&nbsp;응답률을 유지하려면 빠른 시간내로 응답하세요.</p>
    <div style="border:1.3px solid #e8e8e8;width:98%;height:10vh;">
    <img src="<c:url value='/resources/img/barchart.png'/>" style="width:3.5vw;height:6vh;position:relative;top:1.5vh;left:1vw;">
    <h5 style="font-weight:1000;position:relative;left:6vw;top:-6.5vh;">품격 있는 시작</h5>
    <br>
    <p style="color:gray;position:relative;top:-8.8vh;left:6vw;width:16vw;">게스트의 예약을 자꾸 거절하면 검색 결과에서 뒤로 밀려날 수 있습니다.</p>
    </div>
    <form action="rejectResev.re" method="post" id="rejectForm">
    	<input type="hidden" name="seq" value="${re.reservation_seq}">
    	<input type="hidden" name="roomSeq" value="${message_room_seq}">
    	<input type="hidden" id="home_seq" value="${re.home_seq}">
    </form>
    
    <form action="acceptReserv.re" method="post">
    	<input type="hidden" name="seq" value="${re.reservation_seq}" id="rrseq">
    	<input type="hidden" name="roomSeq" value="${message_room_seq}">
    	<input type="hidden" name="guest_email" value="${guest_email}">
    	<input type="hidden" name="host_email" value="${userId}">
    	<input type="hidden" id="home_seq" value="${home_seq}">
    	<button class="btn btn-default" style="background-color:#ff5a5f;width:30%;color:white;font-weight:800;border:1px solid #ff6b6b;position:relative;top:2vh;" id="acceptBT">수락</button>
    </form>
    <button id="rejectBt" data-toggle="modal" data-target="#demo-1" class="btn btn-default" style="width:30%; border: 1px solid #c9cacc;font-weight:800;position:relative;top:-1.6vh;left:9.1vw;">거절</button> 
    
  </div>
</div><br>
</c:if>
</c:forEach>
<!-- Modal -->
  <div class="modal fade" id="demo-1" tabindex="-1" style="margin-top:10vh;height:65vh;">
    <div class="modal-dialog">
     <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal"><i class="icon-xs-o-md"></i></button>
      <div class="modal-header" style="border:none;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title caps" style="position:relative;top:3.5vh;left:0.5vw;"><strong>${guest_name}님의 예약 요청을 거절하시겠어요?</strong></h4>
      </div>
      <div class="modal-body">
     <h5 style="line-height:2;color:gray;position:relative;top:2.5vh;left:0.5vw;width:28vw;">게스트는 여행에 적합한 숙소를 찾기 위해 심혈을 기울입니다. 계속하기 전에 ${guest_name}님의 프로필 세부정보를 확인하세요.</h5>
      		<div style="width:4.5vw;height:8.5vh;position:relative;left:24.5vw;top:3.5vh;">
            <img src="files/${guest_picture}" style="width:100%;height:100%;position:relative;" class="img-circle" alt="avatar">
			</div>
			<h4 style="color:#5e5e5e;position:relative;top:-5vh;left:0.5vw;font-weight:800;">${guest_name}</h4>
			<h5 style="color:#9e9e9e;position:relative;top:-5vh;left:0.5vw;"><span class="glyphicon glyphicon-home" style="color:gray;padding:0;"></span>&nbsp; ${guest_location}</h5>	
      <h5 style="color:#9e9e9e;position:relative;top:-5vh;left:0.5vw;"><span class="glyphicon glyphicon-time" style="color:gray;padding:0;"></span>&nbsp; 회원가입 : ${guest_regdate}</h5>
      </div>
       <div class="modal-footer" style="border:none;">
       <button type="submit" class="btn btn-default" style="position:relative;left:-19.5vw;top:-4vh; background:#008489; color:white;font-weight:800;border:2px solid #008489;" id="reservRejectBT">예, 거절합니다</button>
       <button type="button" class="btn btn-default" data-dismiss="modal" style="position:relative;left:-19.5vw;top:-4vh; border:2px solid #008489;color:#008489;font-weight:800;">뒤로</button>
        </div>
     </div>
    </div>
  </div>
<!-- Modal -->


<div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl" style="position:relative; left:10vw;top:-184.5vh;height:auto;">

 <input type="hidden" id="message_room_seq" value="${message_room_seq}">
<input type="hidden" id="home_seq" value="${home_seq}">
<input type="hidden" id="userId" value="${userId}">
<input type="hidden" id="guest_email" value="${guest_email}">

    <!-- From -->
  <div class="comment-form" style="position:relative;left:0vw;">
    <!-- Comment Avatar -->
    <div class="comment-image" style="width:3.7vw;height:7vh;position:relative;left:26vw;top:8vh;">
      <img src="files/${host_picture}" style="width:100%;height:100%;position:relative;" class="img-circle" alt="avatar">
    </div>

    <form class="form" name="form" >
      <div class="form-row">
        <textarea id="message_content" class="input" maxlength=500; style="resize:vertical;position:relative;left:-4.9vw;border: 2px solid #e2e2e2;" ng-model="cmntCtrl.comment.text" required></textarea>
      </div>

   



      <div class="form-row" style="width:100%;">
        <input id="msgSendBt" type="button" class="btn btn-default" value="메세지 보내기" style="background:white;position:relative;left:14vw;color:black;border:1px solid #605d58;font-weight:700;">
      </div>
    </form>
  </div>
  


  
  <!-- Comments List -->
  <div class="comments">
  
  <div class="co"></div>
  
  
<c:forEach items="${message}" var="message" >

 <c:if test="${message.fromID eq userId}">
    <div class="comment" style="height:auto;">
      <div class="comment-image" style="width:3.7vw;height:7vh;position:relative;left:26vw;top:3vh;">
        <img src="files/${host_picture}" style="width:100%;height:100%;position:relative;" class="img-circle" alt="avatar">
      </div>

      <div class="box1 sb5" style="position:relative;background:#fff2f2;border:#fff2f2;left:-3vw;width:80%;height:auto;top:-4vh;margin-bottom:0;margin-top:0;">${message.message_content}
      <h5 style="position:relative;top:2vh;left:8vw;">${message.message_time}</h5>
      </div>
      
    </div>
</c:if>
<c:if test="${message.fromID eq guest_email}">
    <div class="comment" style="height:auto;">
      <div class="comment-image"  style="width:3.7vw;height:7vh;">
       <img src="files/${guest_picture}" style="width:100%;height:100%;position:relative;left:0vw;top:2vw;" class="img-circle" >
      </div>
 
      <div class="box1 sb6" style="width:80%;top:-3vh;left:2.5vw;margin-bottom:0;margin-top:0;">${message.message_content}
      <h5 style="position:relative;top:2vh;left:8vw;">${message.message_time}</h5>
      
      </div>
      
    </div>
</c:if>
    </c:forEach>
    
  </div>
  
 

</div>

 <!-- Modal -->
  <div class="modal fade" id="demo-2" tabindex="-1" style="margin-top:10vh;height:65vh;">
    <div class="modal-dialog">
     <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal"><i class="icon-xs-o-md"></i></button>
      <div class="modal-header" style="border:none;">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title caps" style="position:relative;top:3.5vh;left:0.5vw;color:black;"><strong>어떤 문제가 있나요?</strong></h4>
      </div>
      <div class="modal-body">
<ul>
    <li>
      <input type="radio" id="fast" name="selector">
      <label for="fast">사기 또는 스팸 메세지를 보내는 것 같아요</label>
      <div class="radiobutton"></div>
    </li>
    <li>
      <input type="radio" id="medium" name="selector">
      <label for="medium">불쾌해요</label>
      <div class="radiobutton"></div>
    </li>
    <li>
      <input type="radio" id="slow" name="selector"  data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
      <label for="slow">기타</label>
      <div class="radiobutton"></div>
      <div class="collapse" id="collapseExample">
   <input type="text" class="form-control" value="" maxlength=50; style="width:80%; height:8vh;position:relative;top:1vh;left:1vw; ">
</div>
    </li>
  </ul>
      </div>
       <div class="modal-footer" style="border:none;">
       <button type="button" class="btn btn-default" style="position:relative;left:-2.0vw;top:-2vh; background:#008489; color:white;font-weight:800;border:2px solid #008489;">확인</button>
       
        </div>
     </div>
    </div>
  </div>
<!-- Modal -->
   <%@ include file="../../resource/include/footer.jsp" %>   

	
	<script src="js/bootstrap.js"></script>
</body>
</html>